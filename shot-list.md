# Shot list: AnkiCollab setup clips

Silent clips for **Get the Deck** and **Switching from AnkiHub**. Each one replaces a
`🎬 Clip to record` placeholder. Record in OpenScreen, export **MP4**, save into
`docs/assets/getting-started/`, run `./scripts/optimise-video.sh` on it, and embed it
as a silent UI clip (see README).

Before every take Claude resets a clean test setup, so you only press record and click.

General:

- Anki window about 1280×800, light mode, nothing else on screen
- Pause about a second on each page before clicking, so viewers can read it
- Cut long waits (the download, the restart) in OpenScreen rather than recording them
- Blur emails in the browser and on the AnkiHub sign-in. Sign-in codes expire, so they don't need blurring

## 1. Installing the Malleus add-on → `install-malleus-addon.mp4`

Goes in: **Get the Deck → 1. Install the Malleus add-on**

Setup: brand-new Anki with no add-ons.

1. **Tools → Add-ons → Get Add-ons…**
2. Paste **620451841**, click **OK**, wait for the download
3. Close the add-ons window and restart Anki

## 2. Set it up → install AnkiCollab → restart → `set-it-up.mp4`

Goes in: **Get the Deck → 2. Let it set everything up** (first placeholder)

Setup: brand-new Anki with only the Malleus add-on (test build), first start.

1. **Get the Malleus deck** appears → **Set it up**
2. Welcome page → **Start**
3. **Install AnkiCollab** → wait for **Restart Anki** → **Close Anki**
4. *(cut)* Open Anki again → **Welcome back!** appears by itself → stop

## 3. Sign in and download → `sign-in-download.mp4`

Goes in: **Get the Deck → 2. Let it set everything up** (second placeholder)

Setup: continues from clip 2 (Welcome back page). A throwaway AnkiCollab account is
easiest; otherwise blur the email.

1. **Continue** → account page (pause so "needs a free account" can be read)
2. **Create a free account** → browser opens the sign-up page → *(cut)* back to Anki
3. **Sign in** → code appears → **Approve in your browser** → approve in the browser
4. Download page → *(cut the wait)* → **You're all set**
5. Show AnkiCollab's **Share Review Data** question → **Yes, Share**

## 4. Moving a deck from AnkiHub → `switch-from-ankihub.mp4`

Goes in: **Switching from AnkiHub → 2. Move your deck**

Setup: Tensor Tympani with Malleus and the EKG deck on AnkiHub, signed in to AnkiCollab
and AnkiWeb. Your real AnkiHub account; blur its email if it shows.

1. **Malleus has moved to AnkiCollab** appears → **Move my deck**
2. Welcome page (pause on the list of steps) → **Start**
3. Sync and back up, Leave AnkiHub, Set aside old deck run by themselves
4. Download → *(cut the wait)*
5. **Save to AnkiWeb** → **Sync now** → it uploads without asking
6. **You're all set** → scroll to **Your old deck** → **Delete this empty deck** → **Done**
7. Deck list: the new **Malleus Clinical Medicine** next to the untouched EKG deck

## Optional: other devices → `other-devices-download.mp4` or a screenshot

Goes in: **Switching from AnkiHub → 3. Update your other devices**

On a second device (or a second profile signed in to the same AnkiWeb account): sync,
and when Anki asks, choose **Download**.

---

# Studying with the Deck clips

Both go in `docs/assets/studying-with-the-deck/`. Setup: Tensor Tympani with the AnkiCollab
Malleus deck, **every card unsuspended**, light mode, AnkiBlitz off, window 1280×800.

## S1. Suspend everything → `suspend-everything.mp4`

Replaces: the screenshot under **Step 1 — Suspend everything (once)**

1. Main screen → **Browse**
2. Sidebar: **Tags → #Malleus_CM** (cards fill the list, all white)
3. Click any card in the list, then ++cmd+a++
4. Right-click → **Toggle Suspend** (or ++cmd+j++)
5. Pause on the list turning yellow, then stop

## S2. Find and unsuspend with the Malleus add-on → `find-and-unsuspend.mp4`

Replaces: the three screenshots under **Easiest — the Malleus Helper add-on**

Setup: continues from S1 (everything suspended), Browser closed.

1. **Tools → Malleus Find/Add Cards**
2. Type **Parkinson disease**, tick the matching results (optionally pick a yield or the
   Management subtag)
3. **Find cards** → the Browser opens with the matching cards (yellow)
4. ++cmd+a++ → ++cmd+j++ → they turn white
5. Pause, then stop

---

# Placeholders removed from the docs (record or screenshot later)

- `addon/index.md`: Screenshot to migrate: page selector with unified search results and filter chips
- `addon/usage.md`: Screenshot to migrate: search results with filter chips and subtag chips
- `contributing/checklist.md`: Screenshot to migrate: deck and note type in the Add dialog
- `contributing/guidelines/card-structure.md`: Screenshots to migrate: multiple-answer examples
- `contributing/guidelines/card-structure.md`: Screenshots to migrate: mnemonic formatting examples
- `contributing/guidelines/style-guide.md`: Screenshot to migrate: complex regimen example
- `contributing/guidelines/style-guide.md`: Screenshots to migrate: good/bad formatting examples
- `contributing/guidelines/style-guide.md`: Screenshots to migrate: correct/incorrect Extra field examples
- `contributing/guidelines/tagging.md`: Video embeds to migrate: add-on tagging walkthrough
- `contributing/guidelines/tagging.md`: Screenshots and video to migrate
- `contributing/guidelines/tagging.md`: Screenshots to migrate
- `extension/index.md`: To migrate: showcase GIF from the extension repo (resources/showcase.gif)
- `getting-started/sync-issues.md`: Screenshots to migrate: one per step
- `note-type/features/randomisation.md`: Screenshot to migrate: Add Randomization Elements dialog
