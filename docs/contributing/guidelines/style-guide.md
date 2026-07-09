# Style Guide

!!! warning
    Style follows the [Australian Government Style Manual](https://www.stylemanual.gov.au/grammar-punctuation-and-conventions) (including [medical terms](https://www.stylemanual.gov.au/grammar-punctuation-and-conventions/names-and-terms/medical-terms)). The rules below cover what comes up most.

## Spelling

Use **Australian English**. For medical terms with variant spelling (fetus/foetus, osteopenia/osteopaenia), follow the [Australian Health Thesaurus](https://thesaurus.healthdirect.org.au/aht.html), then the [Concise Medical Dictionary](https://www.oxfordreference.com/display/10.1093/acref/9780198836612.001.0001/acref-9780198836612) for gaps.

??? note "Set up Australian medical spellcheck in Anki"
    1. Install the [spellchecker add-on](https://ankiweb.net/shared/info/143753963) (code **143753963**)
    2. In the add-on settings, add the **English (UK)** dictionary
    3. Download our Australian Health Thesaurus dictionary file <!-- TODO: migrate file attachment from Notion --> and add it to the 'Personal dictionaries' folder
    4. Press **Compile your dictionaries**

    Thanks to Health Direct for allowing us to use the AHT (licensed [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)). Report any conversion errors to us.

## Abbreviations and acronyms

Use abbreviations **sparingly**: write the full name, with the acronym in brackets — **bold the disease name**, leave the (abbreviation) unbolded. Check the [Accepted Abbreviations table](https://www.notion.so/2595964e68a48170a1d9e33fbf98b4de) for what can be used without expansion.

Always fine to abbreviate:

- SI units
- Terms rarely written in full: anti-CCP, IgG/IgA, beta-hCG
- Chemical elements (ions with their charge in superscript)
- Medicine terminology per the [ACSQHC recommendations](https://www.safetyandquality.gov.au/sites/default/files/migrated/Recommendations-for-terminology-abbreviations-and-symbols-used-in-medicines-December-2016.pdf)

## Writing about drugs

**Do not put doses, brand names or timings in cloze answers.** Route of administration may be included when clinically relevant (abbreviated per the [national abbreviations guide](https://www.safetyandquality.gov.au/sites/default/files/migrated/18146.pdf)).

- ✅ 'valaciclovir PO'  ❌ 'valaciclovir PO 1 g mane'

Exception — doses **are** helpful for drugs interns chart constantly: common analgesics (paracetamol 500 mg), antiemetics (ondansetron 4–8 mg PRN), VTE prophylaxis, common antihyperglycaemics and antihypertensives, and emergency drugs (aspirin 300 mg in ACS, adrenaline 0.5 mg IM in anaphylaxis). If unsure, submit and the maintainers will make a call.

**Capitalisation:** drug names are lowercase unless starting a sentence; brand names (Panadol, Xanax) are always capitalised. Each listed regimen counts as a new sentence.

**Combining drugs:** join options with *<u>AND</u>*, *<u>PLUS</u>*, *<u>OR</u>*, *<u>EITHER</u>*, or *<u>BOTH</u>* — capitals, underlined, italicised. Put each regimen on its own line; never break a line mid-regimen:

| | ✅ Acceptable | ❌ Not acceptable |
| --- | --- | --- |
| Alternative regimens | [Drug X] *OR*<br>[Drug Y] *OR*<br>[Drug Z] | [Drug X] *OR* [Drug Y] *OR*<br>[Drug Z] |
| One regimen, multiple drugs | [Drug X] *AND*<br>[drug y] *AND*<br>[drug z] | [Drug X] *AND* [drug y] *AND*<br>[drug z] |

(One regimen per line is also fine all on a single line if it fits.)

For complex regimens, one line per component — a three-drug regimen gets three lines; a numbered list can clarify the number of agents.

<p class="screenshot-todo">📷 Screenshot to migrate: complex regimen example</p>

## Bold, underline and italics

- **Bold** the topic/disease and key words — including 'augmenting' words that distinguish near-identical cards (e.g. **vertical** vs **horizontal**)
- <u>Underline</u> sparingly: the specific thing the question asks for, and augmenting words that are already bolded
- *Italics* only for genus and species (*Staphylococcus aureus*) — never for emphasis

<p class="screenshot-todo">📷 Screenshots to migrate: good/bad formatting examples</p>

**Organisms and viruses:** italicise organism names with the genus capitalised (*Mycobacterium tuberculosis*; abbreviate as *M. tuberculosis*); 'spp.' is not italicised (*Vibrio* spp.). Viruses are lowercase and not italicised except as acronyms — herpes simplex virus (HSV).

**Eponymous diseases:** possessive 's only if named for a patient (Lou Gehrig's disease), not for the describing physician (Alzheimer disease).

## Punctuation and other conventions

- 'e.g.' and 'i.e.' (with dots, no following comma)
- Space between numbers and units: 10 mmHg, > 60%
- En dash for ranges: 9–10 mg
- Single quotation marks by default
- Capitals only for names and sentence starts
- No full stop after single sentences or bullet points; full stops only in multi-sentence paragraphs

## The Extra field

- Capitalise the first letter of each sentence
- Two or more sentences/points → format as a bullet list

<p class="screenshot-todo">📷 Screenshots to migrate: correct/incorrect Extra field examples</p>

## Tables

Make tables with the [Extended Editor for Field add-on](https://ankiweb.net/shared/info/805891399) (code **805891399**): place your cursor in the field, open the extended editor, and use its table button. Avoid AI-generated tables — the formatting differs subtly from the add-on's.

- Resize images inside tables to a uniform height or width
- Tag every card containing a table: `#Malleus_CM::#Card_Feature::Table`

## Algorithms

Flowcharts can explain decision-making protocols and may be reused across cards — copy from existing cards where possible.

??? note "Advanced: building algorithm tables"
    <!-- TODO: migrate 'Algorithms Table Method' and 'Algorithm Builder' content from Notion; mainly used by maintainers converting algorithm images to HTML tables -->
    This section is mainly used by maintainers converting algorithm images to HTML tables. Content to be migrated.
