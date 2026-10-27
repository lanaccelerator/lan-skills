# Deck Design Rules (LAN house rules, anti AI slop)

These rules come from real decks LAN Accelerator shipped in 2026 (fundraising
masterclass, cohort guidebook, idea-engine decks for portfolio startups, sponsor
and LP decks) and from every correction the LAN partners made on them. A deck
that breaks them reads as "made by AI" before the investor reads a single number.

Apply them whenever you produce the actual slides (HTML 16:9, Google Slides,
Keynote, PowerPoint, PDF), not only the outline.

## 1. The brand is the startup's, not yours

- Use the startup's own identity: logo, palette and typeface, read from their website
  or brand kit. The deck should feel like their future, not a template.
- Elevate it, do not copy a "barebones" site: more contrast, more whitespace, a fixed
  type scale, real photos.
- No brand yet: one dark and one light neutral plus ONE accent color. Never the default
  purple/blue gradient, never a different accent per slide.
- The accent is for the one thing that matters on the slide (the number, the claim),
  not for decoration.

## 2. One idea per slide, the title is the claim

- The title states the takeaway as a sentence ("Churn fell from 9% to 3% in two
  quarters"), not a label ("Traction"). Aim for one line, two at most, no orphan words.
- Body copy: 25 words or fewer per slide. Fragments, not paragraphs. If a slide needs
  three paragraphs, it is two slides or a chart.
- BLUF: the investor should get the slide from the title alone.
- Before and after beats explanation: "Before: audits in Excel and WhatsApp. With X: one
  photo the AI turns into stock, price and expiry."

## 3. Show, don't tell

- Numbers big, labels small. A metric slide is one or three numbers, not ten.
- Charts with the real data, one message per chart, the key series in the accent color
  and the rest in grey. No 3D, no pie charts with more than 3 slices.
- Real photos (team, product in use, customers, events) over illustrations. Render them
  consistently (for example, all in black and white) so they read as one system.
- Real product screenshots or HTML-built mockups. Never AI-generated UI: generated
  interface text is garbage and investors notice.
- Real logos for customers, investors, partners and any named product (Claude, AWS,
  Shopify). Never a text pill pretending to be a logo. Logos in one tone (monochrome)
  with the same optical size.
- Generated images only when they show something concrete and real-looking (a jobsite,
  a clinic), never as decoration. No readable text, no logos, no watermarks in them.

## 4. Banned: the AI slop list

Never use any of these:

- Decorative node graphs, constellations, network meshes, blobs, gradient orbs, glowing
  particles, abstract waves.
- Purple or blue gradients as background; glassmorphism cards; neon glows.
- Italics for emphasis. Emphasis comes from weight or size.
- Emojis, exclamation marks, rocket and lightbulb icons, one generic icon per bullet.
- A colored top border on every card to tell cards apart; a small colored rule before
  every label; numbered eyebrows ("01 / THE PROBLEM") on every slide.
- Pills and chips everywhere. A pill is for a real status or category, not decoration.
- A repeated footer with the deck title on every slide. Logo plus section label on top,
  page number alone at the bottom.
- Buzzwords: revolutionary, disruptive, innovative, cutting-edge, seamless, game-changer,
  unlock, leverage, synergy, "in today's fast-paced world", "AI-powered" as a claim.
- Em dashes. Use commas, colons or periods.
- Lists of three adjectives ("fast, simple and powerful").
- Filler slides: an agenda for a 10-slide deck, a "Thank you" slide without the ask.

## 5. Typography and grid

- Two type families at most (a display face for titles and numbers, a text face for
  body), plus a monospace for small labels if the brand allows.
- A fixed scale, decided once. Reference at 1920 x 1080: titles 80 to 96 px, hero numbers
  96 to 150 px, body 28 to 34 px, labels 18 to 20 px. Nothing under 18 px.
- Margins of 64 to 96 px, one alignment grid for the whole deck, equal gaps between
  repeated elements.
- Contrast: body text must pass WCAG AA on its background. Grey on grey is not a style.

## 6. Data integrity

- Every number has a source and a date, in a small source line at the bottom of the slide.
- External decks use only numbers the startup can defend in diligence. No invented
  customers, no "logos of companies we talked to".
- Label US benchmarks as US and LATAM figures as LATAM.
- The ask slide states the amount, what it buys (milestones), the runway in months, and
  the instrument (SAFE or priced).

## 7. Copy

- Direct, no fluff, the language of the audience. In Spanish: "el AI", not "la AI".
- Verbs and numbers over adjectives. "We closed 12 paying clinics in 90 days" beats
  "strong early traction".
- Cut every sentence that would fit any startup.

## 8. QA loop (mandatory before showing anyone)

1. Render every slide at full size (for HTML: headless Chrome at 1920 x 1080, one
   screenshot per slide; also export the PDF).
2. Look at each slide and run this checklist: title fits, no orphan words, nothing
   overlaps, nothing clipped, alignment and spacing consistent, logo sizes even, text
   contrast readable, no empty half-slides, numbers match their source, nothing from the
   banned list.
3. Fix every defect, render again, look again. A known "small" defect is not shipped.
4. For PDF: page size equal to the slide (`@page { size: 1920px 1080px; margin: 0 }`),
   `print-color-adjust: exact` on colored areas, no blurred `box-shadow` (Preview and
   Quartz render it as black boxes), all images inlined as base64 so the file travels.
