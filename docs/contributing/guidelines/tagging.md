# Tagging

!!! danger "Tagging is critically important"
    Inadequately tagged cards are usually rejected. Every card needs at least one **Subject tag**, one **Rotation tag**, and exactly one **Yield tag**. Multiple subject/rotation tags are fine. If you truly can't find a tag, use `#Malleus_CM::#TO_BE_TAGGED` and we'll sort it out.

## How to tag

**1) Malleus Anki Helper add-on (recommended)** — install [the add-on](../../addon/installation.md) and it applies the right tags as you create cards. If a page is missing from its search (especially eTG), contact us and we'll add it.

<p class="screenshot-todo">📷 Video embeds to migrate: add-on tagging walkthrough</p>

??? note "2) Search the Malleus Notion site"
    Search [the Malleus Notion site](https://malleuscm.notion.site) for the disease (e.g. Acute Otitis Media), open its page, hover over the subtag that matches your card (e.g. aetiology) and click the copy icon. It copies all related tags (rotation, question banks…) in one go. Only copy from pages with an icon (stethoscope = disease, info = topic); pages without icons are parent pages.

    <p class="screenshot-todo">📷 Screenshots and video to migrate</p>

??? note "3) Database lookup"
    Open the [tag databases](https://www.notion.so/1caec2ba44be41d5a4ed8a4d998c42df), unfold topics to find the disease, open it, and copy the matching subtag the same way.

    <p class="screenshot-todo">📷 Screenshots to migrate</p>

## Special tags

Some cards need extra tags beyond Subject + Rotation:

- [Pharmacology](https://www.notion.so/9ff96451736d43909d49e3b9d60971f8) — **any** card involving drugs
- [eTG Complete](https://www.notion.so/22282971487f4f559dce199476709b03) — cards sourced from Therapeutic Guidelines
- [Clinical Investigations](https://www.notion.so/09e7e4c3464d49a79632701e61c78c44) — ABGs, ECGs etc.
- [Guidelines](https://www.notion.so/13d5964e68a48056b40de8148dd91a06) — national and state-based guidelines
- [High Yield Diagnosis](https://www.notion.so/13d5964e68a480a58036e6d383cf37f4) — spot diagnoses from pathognomonic findings
- [Risk Stratification & Scoring Tools](https://www.notion.so/13d5964e68a480319bccfb8198252795)
- [Mnemonics](https://www.notion.so/13d5964e68a48049b067ddba5477aec6)
- [OSCEs & Clinical Reasoning](https://www.notion.so/372746b323094e25b8278cec402e8806)
- [Question Banks](https://www.notion.so/bf443eb7144c46aba3106a4b915959d7) — notably eMedici
- [Textbooks](https://www.notion.so/13d5964e68a480bfb07cf7e2f1786075) — T&OC 8e, On Call (ANZ), Mechanisms of Clinical Signs 2e, Llewellyn-Jones 11e
- [Anatomy & Physiology](https://www.notion.so/13d5964e68a480919739e3fe3d09dba1) — mostly archived; prefer subject *General tags

## Yield tags

Yield lets students work through the deck progressively: start with High-Yield for a safe, examinable foundation, add Medium for depth, then Low for mastery.

| Yield | What it covers | Examples |
| --- | --- | --- |
| **High** | Essential to pass medical school and be a safe intern. Core exam content, foundational concepts, anything patient-safety-critical | First-line antibiotics for common conditions; red-flag presentations |
| **Medium** | Strengthens practice or exams but not strictly essential | Investigation pathways for less common conditions |
| **Low** | Rarely tested detail a top student might know; memorisation cost outweighs clinical payoff | Rare organism gram stains; split-second GCS/APGAR scoring drills |
| **Beyond medical school** | Beyond what students/interns are expected to know; for completeness and special interest | Specialist algorithms, subspecialty guidelines, receptor-level pharmacology |

!!! tip
    The [Malleus Anki Helper add-on](../../addon/usage.md) can apply yield tags for you.

## Critical note update tags

Use only when an edit **changes the fact or correct answer of a card** — content errors, updated guidelines — so users with long review intervals see critical changes early:

!!! example
    `#Malleus_CM::!CRITICAL_NOTE_UPDATES!::Content_Error/Updated_Guidelines::YYYY::Month`

Don't use it for formatting, rewording, tag restructuring, or spelling fixes. **Rule of thumb:** if someone who learned the old card would now be wrong, apply the tag.
