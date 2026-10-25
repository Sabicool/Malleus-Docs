# Malleus Docs

Documentation site for [Malleus Clinical Medicine](https://malleus.org.au/), built with [MkDocs Material](https://squidfunk.github.io/mkdocs-material/) and served at **docs.malleus.org.au**.

Markdown files in `docs/` are the **canonical source of truth** for this content (migrated from the Notion-driven pages on the main site).

## One-time setup for contributors

Enable the media guard hook (blocks oversized videos/images from entering git history):

```sh
git config core.hooksPath .githooks
```

This is per-clone — git can't enable it automatically. Without it, nothing breaks, but the safety net is off.

## Adding a video

1. Record it (e.g. [OpenScreen](https://openscreen.io/)), export as **MP4 — never GIF**
2. Save it into `docs/assets/<section>/`
3. Compress it: `./scripts/optimise-video.sh docs/assets/<section>/my-clip.mp4`
4. Embed it with the pattern that matches the kind of video (note the path has **one more `../`**
   than a markdown image — see gotcha below)

**Silent UI clip** — short, no soundtrack, behaves like a GIF:

```html
<video controls autoplay muted loop playsinline width="700">
  <source src="../../assets/<section>/my-clip.mp4" type="video/mp4">
</video>
```

**Narrated walkthrough** — has audio, longer; must not autoplay or loop, and shouldn't
download until the reader presses play:

```html
<video controls playsinline preload="metadata" width="700">
  <source src="../../assets/<section>/my-walkthrough.mp4" type="video/mp4">
</video>
```

Never put `autoplay` on a video with sound — browsers block autoplay unless muted, so it either
fails silently or startles the reader.

`optimise-video.sh` accepts a file, a folder, or nothing (defaults to all of `docs/`). It
**keeps an existing soundtrack** and skips already-optimised files, so it's safe to re-run.
Tune with `WIDTH=`, `CRF=`, `FPS=`, `AUDIO_BITRATE=`, `STRIP_AUDIO=1`, `FORCE=1`.

The pre-commit hook judges videos on **bitrate**, not file size, so a properly compressed
multi-minute narrated video passes while a short raw recording is caught. Anything over 25 MB
is rejected outright — host those on the [YouTube playlist](https://www.youtube.com/playlist?list=PLKoggb5cOb9lP5mCR2-2yqdFRe6aaqEaw) instead.

## Local development

```sh
python3 -m venv .venv
.venv/bin/pip install -r requirements.txt
.venv/bin/mkdocs serve          # live-reloading preview at http://127.0.0.1:8000
.venv/bin/mkdocs build --strict # production build into site/ (fails on broken links)
```

## Deployment

Netlify builds this repo on push (see `netlify.toml`) and publishes `site/` to `docs.malleus.org.au`. The subdomain is a free CNAME record at the DNS host — no extra domain purchase needed:

```
CNAME  docs  ->  <netlify-site-name>.netlify.app
```

## Structure

- `docs/getting-started/` — install Anki, get the deck (AnkiHub/AnkiCollab tabs), studying, sync issues
- `docs/contributing/` — contribution workflow, submission guidelines (split by topic), submission checklist
- `docs/addon/` — Malleus Anki Helper add-on: features, installation, usage, configuration, troubleshooting
- `docs/note-type/` — MalleusCM - Cloze note type: features, theme customisation (the `ANKIHUB_END` mechanism), randomisation guide
- `docs/extension/` — Malleus browser extension: setup, workflows, troubleshooting
- `docs/stylesheets/extra.css` — Malleus brand theme; tokens mirror `SHARED_CSS` in the website repo's `build.py`. Keep them in sync.

## Migration TODOs

- **Videos**: see [Adding a video](#adding-a-video) above. The one trap worth repeating —
  **paths in raw HTML are not rewritten by MkDocs.** Markdown images use `../assets/…`; a
  `<source src>` on a page at `/section/page/` needs **one more level**: `../../assets/…`.
  A wrong path produces the browser's misleading *"no video with supported format and MIME
  type found"* — that message means **404**, not a codec problem.
- **Screenshots**: drop new images into `docs/assets/<section>/` as `<page>-<subject>.png` (kebab-case). Size each image in the markdown at half its pixel width (retina), capped at ~700: `![Alt](path.png){ width="435" }`. macOS window captures keep their natural shadow; for flat captures that bleed into the white page, add the `.frame` class: `{ width="700" .frame }`. Shots still wanted are listed at the end of `shot-list.md`; to mark a gap on a page, use `<p class="screenshot-todo">📷 …</p>`
- Small `<!-- TODO -->` comments mark a few Notion-hosted artefacts (spellcheck dictionary file, Chrome extension link, algorithm-builder content, image-credit HTML snippet)
- **Addon docs** may later move to a `docs/` folder in the [Malleus-Anki-Addon repo](https://github.com/Sabicool/Malleus-Anki-Addon) and be pulled in at build time (e.g. `mkdocs-multirepo-plugin`)
- **Main site**: the Docs link and the `_redirects` entries for the old pages (`/getting-started.html`, `/submission-guidelines.html`, `/checklist.html`) are on the website repo's `docs-site-links` branch, to merge when the AnkiCollab switch goes live
