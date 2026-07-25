# Malleus Browser Extension

The Malleus extension for Chromium browsers (Chrome, Edge, Brave, Arc…) finds the Malleus cards related to **whatever webpage you're on** — one click while reviewing an eMedici question, reading an eTG topic, or browsing the Malleus Notion site opens an Anki Browser window with the matching cards ready to unsuspend or study.

[:material-google-chrome: Install from the Chrome Web Store](https://chromewebstore.google.com/detail/malleus-qbank-search/ckihgpchidmfkbnodeeccpogbkcfgpmh){ .md-button .md-button--primary }
[:material-github: Source on GitHub](https://github.com/Sabicool/Malleus-Extension){ .md-button }

<p class="screenshot-todo">📷 To migrate: showcase GIF from the extension repo (resources/showcase.gif)</p>

## Setup

The extension talks to Anki through AnkiConnect, so there are two pieces:

1. Install the [extension from the Chrome Web Store](https://chromewebstore.google.com/detail/malleus-qbank-search/ckihgpchidmfkbnodeeccpogbkcfgpmh) and pin it to your toolbar
2. In Anki, install the [AnkiConnect add-on](https://ankiweb.net/shared/info/2055492159) (code **2055492159**) and restart Anki

Anki must be **running** when you use the extension. If it isn't (or AnkiConnect is missing), the extension will tell you.

??? note "Manual installation (without the Web Store)"
    1. Download the [latest release zip](https://github.com/Sabicool/Malleus-Extension/releases/latest/download/malleus-extension.zip)
    2. Go to `chrome://extensions/` and turn on **Developer mode** (top right)
    3. Drag and drop `malleus-extension.zip` onto the window ("drop to install")
    4. Pin the extension to your toolbar

## Works great with

- [eMedici](https://emedici.com/app/qbank) — including shared question links
- [eTG Complete](https://tgldcdp.tg.org.au/etgAccess)
- [AMH Online](https://amhonline.amh.net.au/)
- [The Malleus Notion site](https://malleuscm.notion.site) — disease and pharmacology pages
- RCH Clinical Practice Guidelines, LITFL, Radiopaedia, and most pages whose title starts with a disease or drug name

See [Usage](usage.md) for the workflows, or jump straight in: open a page, click the toolbar button.
