# Brand Guidebook Method: extract, reconcile, refine

How to turn the brand material a startup already has into one system. The rule behind every
step: tidy and refine what exists, never invent a new brand. Anything you cannot read from a
source is marked `[PENDIENTE: ...]` for the founder to decide.

## 1. Where to read each token

| Source | What to pull | How (when you can run code) | Without code |
|---|---|---|---|
| Deck rebuilt by LAN (claude.ai Slides artifact) | Palette with roles, display and text fonts, slide layouts, photo treatment, logo placement | Open the link with the client's artifact tool if it has one and read the CSS and slide files: custom properties, `font-family`, Google Fonts links | Ask for the PDF that came with it and read the rendered pages |
| Deck PDF | Fonts, dominant colors, layouts | `pdffonts deck.pdf` lists the real fonts. `pdftoppm -r 50 -png deck.pdf p` renders pages; sample colors with Pillow (`Image.quantize(8)`) if installed | Read the pages visually, mark hex values `[aprox]` |
| Deck PPTX | Theme colors | `unzip -p deck.pptx ppt/theme/theme1.xml`, then look for `srgbClr val="..."` and `latin typeface="..."` | Ask for the PDF |
| Website | Live palette, fonts, logo files, copy for tone | Fetch the HTML and every linked CSS; count `#hex` and `rgb()` values by frequency; collect `--custom-properties`, `font-family` and `fonts.googleapis.com` links; find the logo in the header `<img>` or inline `<svg>`, `og:image` and the favicon | Ask for 2-3 screenshots (home, pricing, footer) |
| Brand folder (Drive, Notion, Dropbox) | Original logo files (SVG, AI, EPS, PDF, PNG), old brand manual, fonts bought | Read through the connector; list every file with type and size | Ask for the folder link or the files |
| Figma exports | Exact colors, text styles, components | SVG: grep `fill` and `stroke` values. Tokens plugin JSON: read as is | Ask for a screenshot of the styles panel |
| Social profiles, past proposals | Imagery style, tone, real-world logo use | Read only what the founder points to | Skip |

Notes that save time:
- **The PPTX that LAN delivers uses basic fonts (Arial) on purpose**, so it travels to any
  machine. Never read the brand fonts from it: take them from the artifact or the PDF.
- Site builders (Webflow, Wix, Framer, WordPress themes) emit dozens of colors. Weigh each
  color by where it appears (buttons, headings, backgrounds), not by raw count.
- A PNG logo pulled from a website is a reference, not a master. The master is the original
  vector from the brand folder or the designer.

## 2. Reconcile conflicts

List every conflict in one table: token, value in the deck, value on the web, value in the
brand folder, winner, reason.

Default order of authority, override it only with a stated reason:

1. **Logo geometry:** the original vector file wins over any copy in a deck or site.
2. **Everything else: the deck LAN rebuilt wins.** It is the most recent, deliberate version
   of the visual line and already passed LAN's design rules.
3. **The website wins** only where the deck is silent (for example, button styles) or where
   the founder confirms the web is the newer decision.
4. **Two values within a hair of each other** (same hue, a few points of lightness apart) are
   the same color drifting. Merge them and keep the one that passes contrast.

A winner that fails contrast does not win as is: keep it for fills and derive a darker or
lighter text shade (Section 4).

## 3. Refine the palette into roles

Every color gets one job. A role with no real use is deleted.

| Role | Token | Rule |
|---|---|---|
| Ink | `--ink` | Body text and dark backgrounds. Usually the darkest brand tone, not pure black |
| Paper | `--paper` | Main light background |
| Surface | `--surface` | Cards and alternating sections, one step off paper |
| Primary | `--primary` | The brand color: logo, key fills, links |
| Accent | `--accent` | ONE color for the thing that matters on a slide or page (the number, the claim). Never decoration |
| Muted text | `--muted` | Secondary text, captions, source lines |
| Line | `--line` | Borders and dividers |
| Text variants | `--primary-text`, `--accent-text`, `--*-on-dark` | Derived shades that pass contrast where the base color fails |
| Status | `--success`, `--warning`, `--error` | Only if the product UI or dashboards need them |

At most one primary and one accent. A third brand color found in the sources is either merged,
demoted to a status color or dropped, and the log says which.

## 4. Contrast check (WCAG 2.2)

Check every text and background pair the system allows. Thresholds:

- Body text: 4.5:1 (AA).
- Large text (at least 24 px regular or 18.66 px bold, about 18 pt and 14 pt): 3:1.
- Non-text UI (icons, input borders, chart lines that carry meaning): 3:1.

Run this when you can execute code; otherwise use any WCAG contrast checker and say which.

```python
def lum(h):
    c = [int(h.lstrip("#")[i:i+2], 16) / 255 for i in (0, 2, 4)]
    c = [x / 12.92 if x <= 0.04045 else ((x + 0.055) / 1.055) ** 2.4 for x in c]
    return 0.2126 * c[0] + 0.7152 * c[1] + 0.0722 * c[2]

def ratio(a, b):
    hi, lo = sorted((lum(a), lum(b)), reverse=True)
    return round((hi + 0.05) / (lo + 0.05), 2)

assert ratio("#000000", "#FFFFFF") == 21.0
print(ratio("#0A7E8C", "#FFFFFF"))  # 4.8 passes body text
```

When a brand color fails as text, do not change the brand color. Derive a text shade of the
same hue (darken for light backgrounds, lighten for dark ones) in small steps until it passes,
and publish it as its own token. Every pair goes in the "Pares aprobados" table with its ratio
and the use it is approved for (body, large text only, fills only).

## 5. Fonts

- At most two families (display for titles and numbers, text for body) plus an optional
  monospace for labels.
- **Prefer Google Fonts** (open licence, free in Google Slides, Docs and on the web, safe to
  embed in PDFs). Check that the chosen weights cover Spanish and Portuguese characters
  (á é í ó ú ñ ü ç ¿ ¡ and the latin-ext subset).
- **A licensed font** (bought from a foundry, Adobe Fonts, a theme) stays if the startup owns
  the licence, and gets a named free fallback with similar proportions for everyone who does
  not have it: Google Slides users, PowerPoint on another machine, email. Present the fallback
  as an approximation and let the founder compare. Common pairs: Gotham or Proxima Nova with
  Montserrat, Helvetica Neue with Inter, Futura with Jost, Avenir with Nunito Sans.
- Email clients do not load web fonts: signatures and HTML emails use a system stack
  (`Arial, Helvetica, sans-serif` or the closest one).
- PowerPoint files that travel: either embed the fonts or export with basic fonts.

## 6. Logo rules

- Inventory the versions that exist: horizontal, stacked, symbol only, one-color dark,
  one-color light. List the missing ones as `[PENDIENTE]`; never redraw, retrace or
  regenerate a logo with AI. Vectorizing a PNG is a job for a designer working from the
  original.
- **Clear space:** define it with an element of the logo itself (for example, the height of
  the symbol or of the capital letter), on all four sides.
- **Minimum size:** state it for screen (px of height) and print (mm of width), checked so the
  smallest text in the logo stays legible.
- **Backgrounds:** which version goes on paper, on ink, on the primary color and on photos
  (photos only on a calm area or with a solid plate).
- **Don'ts:** stretch or squash, rotate, recolor outside the palette, add shadows, glows or
  outlines, place on a busy photo, rebuild the wordmark in another font, put it inside a pill.

## 7. Type scales per surface

| Surface | Title | Subtitle | Body | Labels and sources |
|---|---|---|---|---|
| Deck 1920 x 1080 | 80-96 px | 40-48 px | 28-34 px | 18-20 px, nothing under 18 |
| Hero numbers on slides | 96-150 px | | | |
| Documents and proposals (A4 or Letter) | 26-32 pt | 15-18 pt | 10.5-11.5 pt, line height 1.4 | 8.5-9 pt |
| Website | clamp(2.5rem, 5vw, 4rem) | 1.5-2 rem | 1-1.125 rem (16-18 px), line height 1.5-1.6 | 0.8125-0.875 rem |
| Email signature | 14-15 px name | | 13 px | 12 px |

Deck values come from the LAN deck design rules. Pick one value per cell for the startup and
write it down; a range is not a rule.

## 8. Layout, imagery and icons

- **Grid:** decks 1920 x 1080 with 64-96 px margins and one alignment grid; documents with
  20-25 mm margins; web container 1200-1280 px with an 8 px spacing scale (8, 16, 24, 32, 48,
  64, 96).
- **Imagery:** real photos of team, product in use and customers, one consistent treatment
  (color grade, black and white, crop). Product shots are real screenshots or HTML mockups.
  Generated images only for concrete, real-looking scenes, never as decoration.
- **Icons:** one open-licence family (for example Lucide or Phosphor), one stroke weight, in
  ink or primary only. No icon per bullet.
- Everything on the banned AI-slop list of the deck design rules is banned in every surface.

## 9. Tone of voice from real copy

Read the website, the deck and two or three real emails or posts. Write 3-4 traits, each with
"así sí" and "así no", taken from their own copy when possible. Fix the Spanish variant they
use (voseo, tú or usted) and keep it everywhere. Vocabulary: words they own, words to avoid.
In Spanish: "la IA", never "el AI".

## 10. Surface specs to write

For each surface, write the rule as tokens and sizes, not adjectives:

- **Decks:** cover, section divider, content slide, numbers slide, quote slide. For each:
  background token, title size and token, accent use, logo version and position, image use.
  Logo plus section label on top, page number alone at the bottom.
- **Commercial proposals:** cover, executive summary, the client's problem in their words,
  solution, price table, case or proof, next steps with dates, signature block. A4 or Letter
  PDF, page number in the footer.
- **One-pagers and documents:** paragraph styles (Title, H1, H2, Body, Caption) with font,
  size, weight and color, ready to set once in Google Docs or Word as a template.
- **Website:** a CSS custom properties block and a tokens JSON in the Design Tokens Community
  Group format (`$value`, `$type`), with the same names as the brain page.
- **Email signature:** an HTML table with inline styles, system font stack, logo as a hosted
  PNG at 2x, total width under 600 px, and a plain-text version.

## Sources

- W3C, Web Content Accessibility Guidelines 2.2, Success Criteria 1.4.3 and 1.4.11:
  https://www.w3.org/TR/WCAG22/
- Design Tokens Community Group format: https://www.designtokens.org/
- Google Fonts licensing (SIL Open Font License): https://developers.google.com/fonts/faq
