# Card Structure

## Use question-and-answer format

Cards should be written as a **question with a cloze-deleted answer**, with few exceptions. Cards not in this format may be rejected.

??? note "Why only Q&A cards?"
    Poorly written cards can be "recalled" from their layout or wording rather than true understanding — easy to answer during review, unretrievable on the wards or in an exam. Q&A format with minimal cues largely avoids this.

**Example:**

!!! example "Front"
    Between Anti-CCP and rheumatoid factor, which has the *greater specificity* for **rheumatoid arthritis**? **[…]**

!!! example "Back"
    … **Anti-CCP**

Generally also include the inverse card:

!!! example "Front"
    Which serological test has the best *specificity* for **rheumatoid arthritis**? **[…]**

Making multiple variations of similar cards is encouraged — it forces careful reading and prevents pattern-matching.

## When inline cloze is acceptable

Fill-in-the-blank (inline cloze) is for the rare cases where Q&A doesn't fit — typically simple equivalences:

!!! example
    {{c1::Pompholyx}} is also known as {{c2::dyshidrotic eczema}}

If you use inline cloze, make sure there's enough **context** to work out the missing words. **Preview** the card to check each cloze makes sense on its own.

## Cards with multiple answers

- If a question has multiple answers, state the number in the question (e.g. "Name the **3** first-line options…"). Exceptions: when the count would make the card trivially easy, or when recalling the count is itself the point.
- Use the **same cloze number** for multiple answers to the same question — don't spread one question's answers over c1, c2, c3.
- For increase/decrease answers, give the hint in fixed order: `{{c1::increases::increases/decreases}}` — unless the answer is obvious.

<p class="screenshot-todo">📷 Screenshots to migrate: multiple-answer examples</p>

## One-by-one cards and mnemonics

One-by-one cards (clozes revealed in sequence) are only appropriate when the items have a **meaningful order** — a mnemonic or a sequence of treatment:

- The 5 P's of phaeochromocytoma can **not** be one-by-one — every item starts with P, so ordered recall is impossible
- Don't use one-by-one for cards with only 2–3 clozes, unless they're mnemonics
- To make a card one-by-one, type any text into the 'One-by-one' field

Before using a mnemonic as the card itself, consider a normal Q&A card with the mnemonic as a memory hook in the Extra field.

<p class="screenshot-todo">📷 Screenshots to migrate: mnemonic formatting examples</p>

## Randomised elements

The [Malleus add-on](../../addon/index.md) can randomise card elements (numbers, image sequences, score calculations) so you can't pattern-match — useful for rash identification images and scoring tools (GCS, T-score cut-offs). Look for the **Add Random** button in the editor, and see the full [Randomisation guide](../../note-type/features/randomisation.md) for the syntax and worked examples.

There is some debate about randomisation's interaction with the Anki algorithm ([forum discussion](https://forums.ankiweb.net/t/how-best-to-implement-randomisation-into-anki/62643)). For specific use cases, contact [sabiqul.hoque@malleus.org.au](mailto:sabiqul.hoque@malleus.org.au).
