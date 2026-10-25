#!/usr/bin/env bash
#
# Compress screen recordings for the docs site, in place.
#
#   scripts/optimise-video.sh docs/assets/getting-started/my-clip.mp4
#   scripts/optimise-video.sh docs/assets/getting-started/      # whole folder
#   scripts/optimise-video.sh                                   # every video in docs/
#
# Raw screen recordings are ~15 Mbps; this brings them to well under 1 MB
# without visible loss at the sizes the docs display them.
#
# Audio is preserved when the source has it (narrated walkthroughs) and simply
# absent when it doesn't (silent UI clips). Nothing is ever silently discarded.
#
# Overrides (env vars):
#   WIDTH=1280      target width in px (height follows, keeping aspect)
#   CRF=30          quality: lower = better/larger, 18-34 is the useful range
#   FPS=            force a frame rate, e.g. FPS=30 (default: keep source)
#   AUDIO_BITRATE=128k   audio quality when the source has a soundtrack
#   STRIP_AUDIO=1   deliberately discard an existing soundtrack
#   FORCE=1         re-encode even if the file already looks optimised
#
set -euo pipefail

WIDTH="${WIDTH:-1280}"
CRF="${CRF:-30}"
FPS="${FPS:-}"
AUDIO_BITRATE="${AUDIO_BITRATE:-128k}"
STRIP_AUDIO="${STRIP_AUDIO:-0}"
FORCE="${FORCE:-0}"

# A file is considered "already optimised" below this bitrate (bits/sec).
BITRATE_OK=2000000

command -v ffmpeg >/dev/null || { echo "ffmpeg not found. Install it with: brew install ffmpeg" >&2; exit 1; }

filesize() { stat -f%z "$1" 2>/dev/null || stat -c%s "$1"; }
human()    { awk -v b="$1" 'BEGIN{ if (b>1048576) printf "%.1f MB", b/1048576; else printf "%.0f KB", b/1024 }'; }

optimise() {
  local src="$1"
  local before after w br tmp has_audio note

  w=$(ffprobe -v error -select_streams v:0 -show_entries stream=width -of csv=p=0 "$src" 2>/dev/null || true)
  br=$(ffprobe -v error -show_entries format=bit_rate -of csv=p=0 "$src" 2>/dev/null || true)
  has_audio=$(ffprobe -v error -select_streams a -show_entries stream=codec_type -of csv=p=0 "$src" 2>/dev/null | head -1 || true)
  case "$w"  in ''|*[!0-9]*) w=0 ;;  esac
  case "$br" in ''|*[!0-9]*) br=0 ;; esac

  if [ "$FORCE" != "1" ] && [ "$w" -le "$WIDTH" ] && [ "$br" -gt 0 ] && [ "$br" -lt "$BITRATE_OK" ]; then
    echo "  skip  $(basename "$src")  (already optimised: ${w}px, $((br/1000)) kbps)"
    return
  fi

  before=$(filesize "$src")
  tmp="${src%.*}.tmp.mp4"

  local vf="scale='min($WIDTH,iw)':-2"
  [ -n "$FPS" ] && vf="$vf,fps=$FPS"

  # Keep an existing soundtrack; only strip it if explicitly asked.
  local audio
  note=""
  if [ -n "$has_audio" ] && [ "$STRIP_AUDIO" != "1" ]; then
    audio=(-c:a aac -b:a "$AUDIO_BITRATE")
    note="  [audio kept]"
  else
    audio=(-an)
    [ -n "$has_audio" ] && note="  [audio stripped]"
  fi

  ffmpeg -nostdin -y -v error -i "$src" \
    -vf "$vf" \
    -c:v libx264 -preset slow -crf "$CRF" \
    "${audio[@]}" \
    -pix_fmt yuv420p -movflags +faststart \
    "$tmp"

  mv "$tmp" "$src"
  after=$(filesize "$src")
  echo "  done  $(basename "$src")  $(human "$before") -> $(human "$after")${note}"
}

targets=("$@")
[ ${#targets[@]} -eq 0 ] && targets=("docs")

echo "Optimising videos (width<=${WIDTH}px, crf=${CRF})"
found=0
for t in "${targets[@]}"; do
  if [ -f "$t" ]; then
    optimise "$t"; found=$((found+1))
  elif [ -d "$t" ]; then
    while IFS= read -r -d '' f; do
      optimise "$f"; found=$((found+1))
    done < <(find "$t" -type f \( -iname '*.mp4' -o -iname '*.mov' -o -iname '*.webm' \) -not -name '*.tmp.mp4' -print0)
  else
    echo "  !     no such file or directory: $t" >&2
  fi
done
[ "$found" -eq 0 ] && echo "  (no video files found)"
echo "Done."
