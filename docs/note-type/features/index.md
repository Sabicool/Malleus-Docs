# Features

A tour of what the MalleusCM - Cloze note type can do. The bigger features have their own pages; the rest are covered here.

## One-by-one clozes

Cards with multiple answers in a **meaningful order** (mnemonics, treatment sequences) reveal their clozes one at a time instead of all at once. On these cards you get:

- A **Reveal Next** button — or press ++n++ / ++arrow-right++
- Press ++q++ / ++arrow-left++ to hide the last revealed cloze
- A **Toggle All** button to flip straight to the full answer
- On touch devices, **swipe** to reveal (see [Keybindings & Gestures](keybindings.md))
- When every cloze is revealed, the card **auto-flips** to the back

Card creators make a card one-by-one by typing anything into its *One-by-one* field — see the [Card Structure guidelines](../../contributing/guidelines/card-structure.md#one-by-one-cards-and-mnemonics) for when that's appropriate.

## Extra resource buttons

Linked content from AMBOSS, Oxford Handbooks, First Aid, eTG Complete, Talley & O'Connor and other resources sits behind collapsible buttons on the back of the card, so the answer stays front and centre. Click a button to expand its panel, or cycle through them with ++n++.

## Tags

Every card's tags are rendered as colour-coded chips at the bottom of the card — **hidden by default** to reduce clutter. Toggle them with ++c++ or the tag button next to the resource buttons. With a clickable-tags add-on installed, clicking a chip searches that tag in the Browser.

## Randomisation

Numbers, list choices and whole score calculations can change on every review, so you can't pattern-match the answer. **[Full guide →](randomisation.md)**

## Image handling

Double-click to enlarge, blur-to-reveal for graphic images (wound infections, STIs — safe for studying in public), and side-by-side image groups. **[Details →](images.md)**

## Sanitised tables

Tables are automatically restyled for readability — consistent borders, responsive column widths, mobile-friendly font scaling, dark mode support. A table can opt out of the automatic formatting by giving it the `noformat` class or attribute.

## Protected personal fields

The **Personal Notes** and **Missed Questions** fields are yours: visually separated from deck content and (with [protected data configured](../../getting-started/get-the-deck.md)) never touched by deck updates.

## Platform support

Everything works on Anki Desktop, AnkiDroid, AnkiMobile and AnkiWeb, and the note type detects which platform it's running on. Most [behaviour settings](keybindings.md#customising-the-behaviour) can be set per platform — e.g. gestures on mobile only.
