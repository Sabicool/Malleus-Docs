# Keybindings & Gestures

## Default keybindings

All shortcuts are plain keys — combinations with ++ctrl++ / ++alt++ / ++shift++ are deliberately ignored so they don't clash with Anki's own shortcuts.

**On the front (one-by-one cards):**

| Key | Action |
| --- | --- |
| ++n++ or ++arrow-right++ | Reveal the next cloze |
| ++q++ or ++arrow-left++ | Hide the last revealed cloze |

When the last cloze is revealed, the card automatically flips to the back (the *auto-flip* setting).

**On the back (any card):**

| Key | Action |
| --- | --- |
| ++n++ | Cycle through the extra resource panels |
| ++c++ | Show / hide the tags |

## Touch gestures

On touch devices, one-by-one cards also respond to **horizontal swipes** — swipe to reveal the next cloze. Sensitivity is controlled by a threshold (default 50 px), and the direction can be inverted. Gestures can be turned off entirely if they conflict with your device's navigation.

## Customising the behaviour

The keys, gestures and related behaviour all live in a `userSettings` block at the top of the card templates (front and back). Like the [styling](../customisation.md), **AnkiHub resets the templates on sync** — so the same rule applies:

1. In Anki: **Browse → select a Malleus card → Cards…**
2. In the **Front Template** (or Back Template) pane, copy the block between the `USER CONFIG` markers
3. Paste it at the very bottom of the template, **below the `ANKIHUB_END` comment**
4. Edit your pasted copy — it overrides the defaults and survives syncs

The settings you're most likely to want:

| Setting | Default | What it does |
| --- | --- | --- |
| `revealNextKeys` | `["KeyN", "ArrowRight"]` | Keys that reveal the next cloze (front) |
| `hideLastKeys` | `["KeyQ", "ArrowLeft"]` | Keys that hide the last cloze (front) |
| `keyboardShortcut_Show_Next_Additional_Resource` | `"KeyN"` | Cycle resource panels (back) |
| `keyboardShortcut_ShowTags` | `"KeyC"` | Toggle tag visibility (back) |
| `ShowTagsByDefault` | `"off"` | Show tags without pressing anything |
| `autoFlip` | `"all"` | Auto-flip when all clozes are revealed |
| `gesturesEnabled` / `invertGestures` | `true` / `false` | Swipe gestures on touch devices |
| `swipeThreshold` | `50` | Swipe sensitivity in pixels |
| `clozeHider` | `"🦘"` | What hidden clozes display as |
| `highlightCloze` | `false` | Highlight the next cloze to be revealed |
| `DoubleClickToEnlargeImg` | `true` | Double-click images to [enlarge](images.md) |

Key names use the standard `KeyX` / `ArrowRight` key-code format — look up any key at [keycode.info](https://keycode.info/).

??? note "Per-platform settings"
    Any true/false setting also accepts a list of platforms, so you can enable a behaviour only where you want it: `"all"`, `"off"`, or e.g. `["AnkiDesktop", "AnkiDroid"]` (the four platforms are `AnkiDesktop`, `AnkiDroid`, `AnkiMobile`, `AnkiWeb`). Non-boolean settings can be made platform-specific with an object: `clozeHider: {"AnkiDesktop": "[...]", "AnkiMobile": "(.)"}`.
