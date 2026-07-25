# Malleus Docs

Documentation site for [Malleus Clinical Medicine](https://malleus.org.au/), built with [MkDocs Material](https://squidfunk.github.io/mkdocs-material/) and served at **docs.malleus.org.au**.

Markdown files in `docs/` are the **canonical source of truth** for this content (migrated from the Notion-driven pages on the main site).

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

- **Screenshots**: pages contain dashed `📷 Screenshot to migrate` placeholders wherever the Notion originals had images — export from Notion and drop into `docs/assets/<section>/` as `<page>-<subject>.png` (kebab-case). Size each image in the markdown at half its pixel width (retina), capped at ~700: `![Alt](path.png){ width="435" }`. macOS window captures keep their natural shadow; for flat captures that bleed into the white page, add the `.frame` class: `{ width="700" .frame }`
- **AnkiCollab**: the Get the Deck page has a placeholder tab pending the deck's AnkiCollab publication
- Small `<!-- TODO -->` comments mark a few Notion-hosted artefacts (spellcheck dictionary file, Chrome extension link, algorithm-builder content, image-credit HTML snippet)
- **Addon docs** may later move to a `docs/` folder in the [Malleus-Anki-Addon repo](https://github.com/Sabicool/Malleus-Anki-Addon) and be pulled in at build time (e.g. `mkdocs-multirepo-plugin`)
- **Main site**: add a "Docs" link to `nav_html()` in the website repo (plus index.html and register.html), and `_redirects` entries mapping the old pages (`/getting-started.html`, `/submission-guidelines.html`, `/checklist.html`) to their new homes here
