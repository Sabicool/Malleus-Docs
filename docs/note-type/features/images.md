# Images

## Double-click to enlarge

Double-click any image to enlarge its panel to near full width — double-click again to shrink it back. Useful for radiographs, ECGs and algorithm images where detail matters.

Prefer it off? Set `DoubleClickToEnlargeImg: false` in the template's `userSettings` — see [customising the behaviour](keybindings.md#customising-the-behaviour).

## Blur-to-reveal

Images can start **blurred** and sharpen when clicked (click again to re-blur). This is mainly used for graphic or NSFW material — a nasty wound infection, an STI photo — so nothing confronting is on screen until you choose to look. Handy when reviewing on the bus or in the library; re-blur before moving on.

To blur an image on a card you're creating, give it the `blur` class in the HTML editor (`< >`):

```html
<img src="rash.jpg" class="blur">
```

## Layout and sizing

- **Tall images are allowed to render at full height** — an eTG screenshot or long guideline excerpt won't be squashed
- **Side-by-side groups**: images wrapped in an `img-group` container flow next to each other and wrap on small screens
- Images keep consistent vertical spacing, and [figure citations](../../contributing/guidelines/referencing.md#images-and-copyright) beneath images are styled automatically (10 pt italics)

!!! tip "For contributors"
    Guidelines for image licensing, credits and sizing live in [Referencing → Images and copyright](../../contributing/guidelines/referencing.md#images-and-copyright); tables containing images should be resized to a uniform height or width per the [Style Guide](../../contributing/guidelines/style-guide.md#tables).
