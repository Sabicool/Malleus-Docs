# Customising the Theme

You can change the note type's colours — cloze colour, backgrounds, buttons, night mode palette and more — to suit your taste. There's one crucial rule to get right first.

!!! danger "Put your changes in the right place, or they'll be deleted"
    AnkiHub **resets the styling section on every sync** to keep the note type up to date. Any edits made directly to the default styling are lost.

    The styling ends with this comment:

    ```css
    /*
    ANKIHUB_END
    Text below this comment will not be modified by AnkiHub or AnKing add-ons.
    Do not edit or remove this comment if you want to protect the content below.
    */
    ```

    **Everything below `ANKIHUB_END` is protected.** Your customisations go there — because they come later in the stylesheet, they override the defaults above, and AnkiHub leaves them alone.

## How to customise

1. In Anki, open any Malleus card in the **Browser**, then click **Cards…** (or **Tools → Manage Note Types → MalleusCM - Cloze → Cards**)
2. Open the **Styling** pane
3. Find the block between `USER CONFIG - copy from this line` and `USER CONFIG - until this line` near the top, and **copy** it
4. Scroll to the very bottom, **below the `ANKIHUB_END` comment**, and paste it there
5. Edit the pasted copy to your liking — your version now wins over the defaults and survives every sync

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

The card **templates** (Front and Back) contain a `userSettings` block that controls behaviour — keybindings, swipe gestures, auto-flip, the cloze placeholder, image enlarging and more. It's protected by the exact same mechanism: copy the `USER CONFIG` block, paste it below the template's `ANKIHUB_END` comment, and edit the copy. See [Keybindings & Gestures](features/keybindings.md#customising-the-behaviour) for the full settings table.

## Ready-made themes

The [note type repository](https://github.com/Sabicool/Malleus-Note-Type/tree/main/malleus-cloze) includes complete example themes you can paste below `ANKIHUB_END` as-is:

- [**Nord**](https://github.com/Sabicool/Malleus-Note-Type/blob/main/malleus-cloze/nord.css)
- [**Gruvbox Light**](https://github.com/Sabicool/Malleus-Note-Type/blob/main/malleus-cloze/gruvbox-light.css)

They're also a good starting template for building your own — swap the hex values for your preferred palette.

!!! tip "Stuck?"
    Ask in the [Malleus Discord](https://discord.gg/4WqgJzjVyH) — and if you build a theme you like, share it there so others can use it too.
