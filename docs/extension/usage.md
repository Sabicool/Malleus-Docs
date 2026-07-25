# Usage

## Search from the current page

1. Make sure Anki is running (with [AnkiConnect installed](index.md#setup))
2. On any supported page, click the **Malleus extension button** in your toolbar — or right-click the page and choose **Search Malleus Deck**
3. An Anki Browser window opens with all the related cards, ready to unsuspend, study, or move to a filtered deck

This works for most pages whose title starts with the disease or drug name — the extension matches the page against the Malleus Notion databases (Subjects, Pharmacology, eTG) and searches your collection by the matching tags.

## Search from selected text

When a page title doesn't match (or you only care about part of the page):

1. Select any text on the page and **right-click the selection**
2. Choose **Search Malleus with Selected Text**
3. The extension cleans up the selection (removing separators and extra whitespace) and searches the deck for related cards

## Example workflows

**eMedici** — review a question as normal, then click the extension button to bring up every Malleus card on that topic. Great for consolidating right after getting a question wrong.

**eTG** — reading a therapeutic topic? One click surfaces the cards sourced from that guideline.

**The Malleus Notion site** — search for a disease (e.g. atrial fibrillation) with the site's search, open its page, then click the extension button. Currently supports pages from the Subjects (diseases) and Pharmacology databases.

## Troubleshooting

- **Nothing happens / connection error** — Anki isn't running, or [AnkiConnect](https://ankiweb.net/shared/info/2055492159) isn't installed. Start Anki and try again.
- **Wrong or missing results on some pages** — other extensions that modify the page (e.g. the AMBOSS extension) can interfere, especially on eTG. Disable them for that site if you see issues.
- **Doesn't work on PDFs** — this is a known limitation; use text selection on an HTML version, or search in Anki directly.
- **Broken after an update** — some versions are incompatible with prior versions; remove and reinstall the extension.
- Still stuck? Ask in [Discord](https://discord.gg/4WqgJzjVyH) or [open an issue](https://github.com/Sabicool/Malleus-Extension/issues).
