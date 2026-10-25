# Configuration

All settings are edited via **Tools → Add-ons**: select the Malleus add-on, then click **Config**.

The most common ones to change are [`shortcut`](#shortcut) and [`cache_expiry`](#cache_expiry). You don't normally need to touch [`deck_name`](#deck_name) or [`note_type`](#note_type): left at their defaults, new cards go into your Malleus deck with the Malleus note type, ready to suggest on AnkiCollab.

## `deck_name`

**Default:** `"Default"`

The deck where new cards are created. Left at `"Default"`, new cards go into **your Malleus deck**: the one AnkiCollab keeps (AnkiCollab can only suggest cards inside it), or otherwise the deck holding the most Malleus cards.

Set a deck name to choose a different deck. Use `::` to specify a subdeck. If no deck has exactly that name, the add-on uses the one deck whose last part matches it, and otherwise the deck you're currently in.

```json
"deck_name": "Pre-Made Decks::Malleus Medicine"
```

!!! tip "Contributing cards?"
    Only cards inside the Malleus deck (or one of its subdecks) can be suggested on AnkiCollab, so if you set this, keep it inside the Malleus deck.

## `note_type`

**Default:** `"MalleusCM - Cloze (Malleus Clinical Medicine [AU/NZ] / Stapedius)"`

The note type used for new cards. Left at this default, new cards use **whichever Malleus note type holds your Malleus notes** (names starting with `MalleusCM - Cloze`). After switching from AnkiHub, that's the one AnkiCollab installed rather than the old AnkiHub one this default names.

Set a note type name to choose a different one. If the name you set isn't in your collection, the add-on uses the only note type whose name starts with `MalleusCM - Cloze`; if you have more than one, it asks you to pick.

```json
"note_type": "MalleusCM - Cloze (AnkiCollab)"
```

## `shortcut`

**Default:** `"Ctrl+Alt+M"`

Keyboard shortcut to open the Malleus Page Selector from anywhere in Anki. Use standard Anki key notation, e.g. `"Ctrl+Shift+M"`, `"Alt+M"`.

```json
"shortcut": "Ctrl+Alt+M"
```

## `cache_expiry`

**Default:** `1` (days)

How many days before the local database cache is considered stale and the add-on re-checks GitHub on startup. The check is conditional (it only downloads a database if it actually changed since last time), so a short value keeps you in sync with the daily rebuild at little network cost. Higher values reduce how often the add-on checks.

```json
"cache_expiry": 1
```

## `autosearch`

**Default:** `true`

When `true`, the Page Selector searches automatically as you type (after [`search_delay`](#search_delay) ms). Set to `false` to require pressing ++enter++ to trigger a search.

```json
"autosearch": true
```

## `search_delay`

**Default:** `300` (milliseconds)

How long to wait after you stop typing before the auto-search fires. Only applies when [`autosearch`](#autosearch) is `true`. Increase this if searches feel laggy; decrease it if you want faster results.

```json
"search_delay": 300
```

## `request_timeout`

**Default:** `30` (seconds)

Timeout for network requests when downloading database caches from GitHub. Increase this if you are on a slow connection and cache updates are timing out.

```json
"request_timeout": 30
```

## `show_card_counts`

**Default:** `false`

When `true`, each search result shows how many notes in your collection are already tagged with that page. Computing the counts scans every note's tags, which can slow down search results appearing on large collections — hence off by default.

```json
"show_card_counts": false
```

## `card_count_threshold`

**Default:** `10`

Only applies when [`show_card_counts`](#show_card_counts) is `true`. Maximum number of search results for which per-result note counts are shown. When results exceed this number the counts are hidden to keep the UI fast. Set to a high number (e.g. `50`) to always show them.

```json
"card_count_threshold": 10
```

## `remember_yield_selection`

**Default:** `false`

When `true`, the Page Selector re-selects the yield level you last chose whenever it opens (remembered for the rest of the Anki session). Useful when making many cards at the same yield in a row.

```json
"remember_yield_selection": false
```

## `remember_subtag_selection`

**Default:** `false`

When `true`, new search results have their subtag chip pre-set to the subtag you last picked (remembered for the rest of the Anki session). Useful when tagging many cards under the same subtag (e.g. a Management run).

```json
"remember_subtag_selection": false
```

## `find_yields`

**Default:** `["High", "Medium", "Untagged"]`

Which yield levels **Find Cards** returns. Allowed values: `"High"`, `"Medium"`, `"Low"`, `"Beyond_medical_student_level"` and `"Untagged"` (notes with no yield tag).

You don't normally edit this by hand: the Yield buttons in the Page Selector's **🔍 Find cards** tab update it (tick as many as you like; "No yield" is the `"Untagged"` value), so your choice is remembered between sessions.

This is separate from the yield in the **🏷 Create & tag** tab, which sets the single yield used when tagging or creating cards. When [`show_card_counts`](#show_card_counts) is on, the per-result note counts also follow this filter.

```json
"find_yields": ["High", "Medium", "Untagged"]
```

## `exclude_region_features`

**Default:** `[]`

Region-specific cards that **Find Cards** leaves out. Allowed values: `"NZ"` (cards tagged `#Malleus_CM::#Card_Feature::NZ_Only`) and `"AUS"` (cards tagged `#Malleus_CM::#Card_Feature::AUS_Only`). For example, a New Zealand student would use:

```json
"exclude_region_features": ["AUS"]
```

The NZ / AUS buttons in the **🔍 Find cards** tab update this automatically: setting one to **Not NZ** / **Not AUS** saves it, and turning it off removes it. This only affects searching and never changes card tags. **NZ only** / **AUS only** (in either tab) is never saved and starts off each time the Page Selector opens; in the **🏷 Create & tag** tab it adds the tag to cards.
