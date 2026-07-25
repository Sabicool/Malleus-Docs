# Randomisation

The note type can randomise parts of a card **every time you review it** — numbers, list choices, and whole score calculations. You can't pattern-match the answer, because the answer changes: an ABG interpretation card generates fresh values each review (like ABG Ninja), and a GCS card presents a different patient every time.

The values are seeded per review, so **the front and back of the card always show the same values** — the question you answered is the question that gets revealed.

## The easy way: the add-on's Add Random button

The [Malleus add-on](../../addon/index.md) inserts randomised elements for you. In the card editor, click **Add Random**, choose the element type, fill in the form, and the correct syntax is inserted at your cursor:

- **Random Number** — min, max, decimal places
- **Random List** — a list of options, one chosen at random
- **Scored List** — options that each carry a score
- **Scored Number** — a random number whose bracket determines a score
- **Show Score** — displays the running total of all scored elements
- **Answer by Score** — text chosen by the total score

<p class="screenshot-todo">📷 Screenshot to migrate: Add Randomization Elements dialog</p>

## Syntax reference

You can also type the tokens directly into any field:

| Token | What it does |
| --- | --- |
| `[random:min,max,decimals]` | Random number in the range, e.g. `[random:2.0,7.0,1]` → `4.3` |
| `[randomlist:a,b,c]` | Picks one option, e.g. `[randomlist:left,right]` → `right` |
| `[scoredlist:text:score,text:score,…]` | Picks one option **and adds its score** to the card's running total |
| `[scorednumber:t1,t2,…,tn:decimals:s1,s2,…]` | Random number across the whole range `t1–tn`; the bracket it lands in adds the matching score (`t1≤x<t2` → `s1`, etc.) |
| `[showscore]` | Displays the total of all scored elements on the card |
| `[answerbyscore:range:text:range:text:…]` | Shows the text whose range matches the total — `range` is a single value (`3`) or `min,max` (`3,8`) |

## Worked example: a GCS card

Front:

```
A patient opens their eyes [scoredlist:spontaneously:4,to voice:3,to pain:2,not at all:1],
is [scoredlist:orientated:5,confused:4,using inappropriate words:3,making sounds:2,silent:1],
and [scoredlist:obeys commands:6,localises to pain:5,withdraws from pain:4,
flexes to pain:3,extends to pain:2,has no motor response:1].

What is their GCS? {{c1::[showscore]}}
This is classified as {{c2::[answerbyscore:3,8:severe:9,12:moderate:13,15:mild]}} brain injury.
```

Each review generates a different patient; the score and severity update to match. The same pattern works for T-score cut-offs, APGAR, CHA₂DS₂-VASc, Wells — any scoring tool.

## When to use randomisation

Randomisation shines for **pattern-matchable content**: score calculations, threshold interpretation (ABGs, electrolytes), and image sequences. It's not for ordinary factual cards — most cards should stay plain Q&A.

!!! warning "A note for contributors"
    There is some debate about how randomisation interacts with Anki's scheduling algorithm ([forum discussion](https://forums.ankiweb.net/t/how-best-to-implement-randomisation-into-anki/62643)). Before submitting randomised cards to the deck, read the [Card Structure guidelines](../../contributing/guidelines/card-structure.md#randomised-elements) — and for specific use cases, contact [sabiqul.hoque@malleus.org.au](mailto:sabiqul.hoque@malleus.org.au).

??? note "How the seeding works (technical)"
    On each review the note type generates a seed (stored with [anki-persistence](https://github.com/SimonLammer/anki-persistence), so it survives the front→back flip) and feeds it through a deterministic pseudo-random generator. Both card sides process the same tokens with the same seed and therefore render identical values. On platforms where persistence isn't available, the seed falls back to the current date and hour — front and back still match, and the card varies between study sessions.
