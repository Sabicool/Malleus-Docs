# Customising the Theme

You can change the note type's colours — cloze colour, backgrounds, buttons, night mode palette and more — to suit your taste. Two rules to know first.

!!! danger "Keep a copy of your changes: deck updates replace them"
    When AnkiCollab updates the deck, it **replaces the note type's styling and templates** with the deck's own, including anything you've added. Keep your customisations in a text file (or a note to yourself) and paste them back in after an update.

    The styling ends with this comment, left over from AnkiHub:

    ```css
    /*
    ANKIHUB_END
    Text below this comment will not be modified by AnkiHub or AnKing add-ons.
    Do not edit or remove this comment if you want to protect the content below.
    */
    ```

    **Put your customisations below it.** Because they come later in the stylesheet, they override the defaults above. AnkiCollab doesn't protect this section the way AnkiHub did, so it's only the right place to paste, not a safe place to keep them.

## How to customise

1. In Anki, open any Malleus card in the **Browser**, then click **Cards…** (or **Tools → Manage Note Types → MalleusCM - Cloze → Cards**)
2. Open the **Styling** pane
3. Find the block between `USER CONFIG - copy from this line` and `USER CONFIG - until this line` near the top, and **copy** it
4. Scroll to the very bottom, **below the `ANKIHUB_END` comment**, and paste it there
5. Edit the pasted copy to your liking — your version now wins over the defaults
6. Save a copy of what you pasted somewhere outside Anki, so you can paste it back if a deck update replaces it

The USER CONFIG block covers the things people most want to change:

| Selector | What it controls |
| --- | --- |
| `.cloze`, `.cloze b` | The active cloze (answer) colour |
| `.cloze-inactive` | Other clozes on the same card |
| `.highlight-cloze` | The highlight behind the revealed answer |
| `body` / `body.nightMode` | Page text and background colours |
| `#Extra`, `#Personal-Notes`, `#Missed-Questions` | Field background colours |
| `.ExtraResourceContent`, `.expanded-button`, `button` | Resource panels and buttons |
| `#clozecontainer b` | Bold text colour inside the question |
| `a` | Link colour |

Night mode variants are the same selectors prefixed with `.night_mode` / `.nightMode` — the block includes both light and dark sections, so you can theme each mode independently.

## Beyond colours: behaviour settings

The card **templates** (Front and Back) contain a `userSettings` block that controls behaviour — keybindings, swipe gestures, auto-flip, the cloze placeholder, image enlarging and more. It works the same way: copy the `USER CONFIG` block, paste it below the template's `ANKIHUB_END` comment, edit the copy, and keep a copy outside Anki, because deck updates replace the templates too. See [Keybindings & Gestures](features/keybindings.md#customising-the-behaviour) for the full settings table.

## Ready-made themes

The [note type repository](https://github.com/Sabicool/Malleus-Note-Type/tree/main/malleus-cloze) includes complete example themes you can paste below `ANKIHUB_END` as-is:

- [**Nord**](https://github.com/Sabicool/Malleus-Note-Type/blob/main/malleus-cloze/nord.css)
- [**Gruvbox Light**](https://github.com/Sabicool/Malleus-Note-Type/blob/main/malleus-cloze/gruvbox-light.css)

They're also a good starting template for building your own — swap the hex values for your preferred palette.

!!! tip "Stuck?"
    Ask in the [Malleus Discord](https://discord.gg/4WqgJzjVyH) — and if you build a theme you like, share it there so others can use it too.
