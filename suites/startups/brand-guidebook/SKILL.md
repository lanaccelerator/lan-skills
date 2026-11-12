---
name: brand-guidebook
description: >
  For STARTUP FOUNDERS who need a brand guidebook without paying a designer. ALWAYS invoke
  when a founder wants to tidy up, document or systematize their existing brand so web,
  decks, proposals and documents look consistent. Spanish triggers: "armá mi brand
  guidebook", "armame la línea gráfica", "manual de marca", "ordená mi marca", "guía de
  marca", "que todo se vea igual". English: "brand guidelines", "style guide", "brand book".
  Reads the deck LAN rebuilt, the website, logo files and the brand folder (Drive, Notion,
  Figma exports), extracts the real tokens, reconciles deck vs web, checks WCAG contrast,
  and writes into the company brain a Brand page, rules per surface (decks, proposals,
  documents, web CSS and tokens JSON, email signature) and a brand skill every team AI loads
  before any visual piece. Refines, never invents a new brand. NOT for naming or a full
  rebrand, building a deck (use pitch-deck-builder), grading one (use deck-reviewer)
  or writing a proposal (use lead-to-proposal).
categories: ["startups", "marketing", "design"]
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: startups
  complements: [pitch-deck-builder, deck-reviewer, lead-to-proposal, investor-dashboard]
license: MIT
---

# Brand Guidebook

Answers: "How do I make my web, my decks, my proposals and my documents look like the same
professional company, using what I already have?" Most early founders cannot pay a designer
for a brand manual. They do have pieces: a logo, a website, a deck (for LAN founders, the deck
LAN rebuilt as a claude.ai Slides artifact with a cleaner visual line), a Drive or Notion
folder with old files. This skill turns those pieces into one system and stores it where the
team's AIs will use it.

Four rules frame every answer:

1. **Refine, never invent.** Every color, font and logo in the output comes from a source the
   founder gave. Merge, correct and complete; do not design a new identity. What no source
   answers is `[PENDIENTE: ...]` for the founder to decide.
2. **One system, every surface.** The same tokens drive the deck, the proposal, the one-pager,
   the website and the email signature. A rule that only works on one surface is not a rule.
3. **Rules are numbers.** "Use the brand blue generously" is not a rule; `--primary #0A7E8C,
   fills and links, never body text under 24 px` is.
4. **The brain is the deliverable.** The guidebook lives in the company brain so any AI the
   team uses (Claude, ChatGPT, Gemini, Codex) produces on-brand pieces by default. The HTML
   guidebook is an optional extra.

## Step 1: Input Gathering

Read first, ask second. Collect what the founder gave and what the brain and connectors
already hold (Step 2), then ask only for the gaps.

Inputs, in order of value:

1. **The deck LAN rebuilt:** the claude.ai artifact link, or its PDF and PPTX exports. Any
   other recent deck if there is no LAN version.
2. **Website URL.**
3. **Logo files:** the original vector (SVG, AI, EPS, PDF) and any PNG versions.
4. **Brand folder:** Drive, Notion, Dropbox or Figma exports with old manuals, fonts bought,
   templates, photos.
5. **Real copy:** two or three recent emails, posts or proposals, for tone of voice.

**Asking rules:**
- Ask in batches of at most 5 questions, numbered, each grounded in what you already read.
  Good: "En el deck el verde es #0A7E8C y en la web #0B8A99. ¿El de la web es más nuevo o se
  fue corriendo?" Bad: "¿Cuáles son los colores de tu marca?"
- Give a default with each question so the founder can answer "sí" and move on.
- After each batch, read the new material and only then decide whether another batch is
  needed. Stop asking when the remaining gaps can be marked `[PENDIENTE]` without blocking
  the system.
- **Hard stop:** with no deck, no website and no logo there is nothing to tidy. Ask for any one
  of them; do not invent a brand from the startup's description.

## Step 2: Read Context First

Follow references/shared/company-brain-integration.md sections 1-3. Specifically:
- `list_skills`: if a brand skill or brand page already exists, this run updates it. Never
  create a second brand.
- `search_brain` for "marca", "brand", "logo", "colores", "tipografía", "línea gráfica",
  "deck", "propuesta", and read the hits in full.
- Read the founder's Drive, Notion or Figma through their connectors when available. If a
  connector is missing, say so in one line and ask for the files.

## Step 3: Extract the Real Tokens

Read [references/brand-method.md](references/brand-method.md) Section 1 for how to read each
source (artifact, PDF, PPTX, website CSS, brand folder, Figma). Build an inventory table:
token, value, source, where it appears. Extract:

- **Colors** as hex, with the role each one plays in the source (background, title, button,
  accent number, border).
- **Fonts** with the weights actually used, and whether each is Google Fonts, licensed or a
  system font.
- **Logo versions** that exist and their file types.
- **Layout patterns:** margins, grid, how titles and numbers sit on slides and pages.
- **Image style:** photo or illustration, color treatment, crops.
- **Tone of voice** from the copy: Spanish variant, sentence length, words they repeat.

Values read from an image or a screenshot are marked `[aprox]` until confirmed from a file.

## Step 4: Reconcile Conflicts

Follow brand-method.md Section 2. Output a conflicts table with the winner and the reason for
each row. Default: the deck LAN rebuilt wins, because it is the most recent deliberate
version of the visual line and already passed references/shared/deck-design-rules.md; the
original vector file wins for logo geometry. Near-duplicate colors are one color drifting:
merge them and say which value stays.

## Step 5: Refine with LAN's Design Rules

Read references/shared/deck-design-rules.md and apply it to the whole system, not only decks:

- **Palette into roles** (brand-method.md Section 3): ink, paper, surface, primary, ONE
  accent, muted, line, and status colors only if the product needs them.
- **Contrast** (brand-method.md Section 4): every allowed text and background pair passes
  WCAG 4.5:1 for body text, 3:1 for large text and non-text UI. Compute the ratios, do not
  eyeball them. A brand color that fails keeps its role for fills and gets a derived text
  shade as its own token.
- **Fonts** (brand-method.md Section 5): two families at most, Google Fonts preferred, Spanish
  characters covered. A licensed font names its free fallback.
- **Logo rules** (brand-method.md Section 6): clear space from an element of the logo, minimum
  size for screen and print, background rules, don'ts. Missing vectors are `[PENDIENTE]`.
- **Type scale per surface** (brand-method.md Section 7), one value per cell.
- **Layout, imagery and icons** (brand-method.md Section 8). The AI-slop list applies
  everywhere.
- **Tone of voice** (brand-method.md Section 9) from their real copy, and
  references/shared/editorial-voice.md for how direct the guide itself reads.

Keep a refinement log: what changed from the sources and why, one line each. It goes in the
founder report and at the end of the Brand page, never inside the shareable guidebook, which
reads as the startup's definitive brand guidelines.

## Step 6: Write the Application Rules per Surface

Follow brand-method.md Section 10. Rules as tokens and sizes:

- **Pitch and sales decks:** cover, section, content, numbers and quote slides. These are the
  rules `/pitch-deck-builder` builds with and `/deck-reviewer` grades against.
- **Commercial proposals:** cover, executive summary, problem in the client's words,
  solution, price table, proof, next steps with dates, signature. Used by
  `/lead-to-proposal`.
- **One-pagers and documents:** paragraph styles ready to set once as a Google Docs or Word
  template.
- **Website:** a CSS custom properties block and a tokens JSON (DTCG format), same token names
  as the Brand page, so a developer or a coding agent can drop them in.
- **Email signature:** HTML table with inline styles and system fonts, plus plain text.

## Step 7: Write into the Company Brain

Follow references/shared/company-brain-integration.md section 4. Search before create; update
the existing brand pages if they exist. Use the brain's own folder and type conventions
(discover them with `list_pages`); defaults below.

| Page | Type | Title (default) | Content |
|---|---|---|---|
| Brand page | reference | "Marca de [Startup]" | Essence and tone, logo usage, palette with roles and approved pairs, typography scale, layout and grid, imagery and icons, Pendiente de confirmar, decision log |
| Application rules | reference | "Marca de [Startup]: aplicación por superficie" | Decks, proposals, documents, website (CSS block and tokens JSON in code blocks), email signature |
| Brand skill | skill | "[startup]-brand" | The short page in TEMPLATES.md: when to load it, the 10 rules any AI must follow, links to the two pages above |

- The skill page description is one line: "Cargar antes de producir cualquier pieza visual de
  [Startup]: deck, propuesta, documento, web, mail, post." Keep it under 60 lines; the detail
  lives in the two reference pages.
- Link the three pages to each other with `[[wikilinks]]`, and to the startup's company page.
- Upload the logo files and the guidebook PDF as assets if the brain supports it, and cite
  them in the Brand page.
- Offer once to add one line to the brain's global rules ("Toda pieza visual carga
  [startup]-brand primero"); write it only with the founder's OK.
- **No brain connected:** write the same three pages as markdown files under
  `./brain-outbox/brand-guidebook/` and tell the founder they are ready to import. Also give
  a one-paragraph prompt they can paste into their own AI to create the pages there.

## Step 8: Optional Shareable Guidebook (HTML)

Only when the founder asks, or after the brain pages are done and they accept the offer:

- One self-contained HTML file: fonts from Google Fonts or embedded, logos and photos inlined
  as base64, print CSS so it exports to PDF (one section per page, no blurred shadows).
- Sections: cover, El sistema (palette, type, logo on one page), Logo, Color, Tipografía,
  Layout, Imágenes e íconos, Tono, Aplicaciones (one page per surface with a real example
  built from the tokens), Pendiente de confirmar.
- No mention of sources, LAN, AI or the conflicts: it is the startup's guide.
- Run the render-and-check QA loop in references/shared/deck-design-rules.md section 8 on
  every page before showing it. In claude.ai the file can be published as an artifact.

## Step 9: Output Format

ALWAYS use this exact template structure. Do not change section headings, table columns, or
field order. Fill every [bracketed placeholder] with real analysis from the user's startup.
See [TEMPLATES.md](TEMPLATES.md) for the filled example. The founder report has these
sections, in order: Qué leí, Conflictos y cómo se resolvieron, Sistema de marca (palette,
approved pairs, typography, logo), Aplicación por superficie (summary, full rules in the
brain), Bloque CSS y tokens JSON, Firma de mail, Skill de marca, Pendiente de confirmar,
Páginas escritas en el brain, Próximos Pasos, Fuentes. Write it in the founder's language and
variant.

Partial requests use the matching steps only: "solo la paleta" (Steps 3-5, colors), "las
variables CSS para la web" (Steps 3-6, website), "la firma de mail" (Step 6, signature),
"revisá si mi propuesta respeta la marca" (read the brand pages, then compare).

## Traps to Name

- **Inventing a brand:** proposing a new palette or font because the old one looks weak. Fix
  contrast and consistency inside what exists; a rebrand is a different project.
- **Three brand colors and an accent per slide.** One primary, one accent.
- **A brand color that fails contrast used for body text.** Derive the text shade.
- **The licensed font nobody else has.** Without a named free fallback, Google Slides and
  every other machine shows a default font.
- **The PNG logo from the website treated as the master.** Ask for the vector.
- **A guidebook nobody's AI reads.** If it is not in the brain as a skill, the next deck is
  off-brand again.
- **Adjectives instead of numbers** ("moderno, limpio, cercano") with no tokens behind them.

## LATAM Context

- Most founders share proposals and one-pagers as PDF over WhatsApp and email: every document
  rule must hold on a phone screen and in a PDF that travels without the fonts installed.
- Spanish and Portuguese text needs accented characters and ñ in every chosen weight; check
  the latin-ext subset before approving a font.
- Corporate buyers in the region often receive proposals through procurement portals that
  strip formatting: the PDF is the official version, the editable file is secondary.
- Licensed fonts and paid design tools are a real cost in local currency: Google Fonts and
  open icon sets are the default, not a compromise.

## Tone & Editorial Voice

See references/shared/editorial-voice.md. You are NOT a cheerleader. If the website's grey
text fails contrast, say it fails and give the ratio. If the deck and the web look like two
companies, say so and which one wins. If the logo only exists as a blurry PNG, say the brand
is not ready for print until the vector is found.

## Próximos Pasos

End every output with 3-5 concrete actions, for example:
- "Pedile hoy al diseñador original el SVG del logo: sin vector no hay versión para imprenta."
- "Pegá el bloque CSS en la web esta semana y cambiá el gris #8A94A3 por #5B6675: hoy no
  pasa contraste."
- "Armá la plantilla de propuesta en Google Docs con los estilos de párrafo de la página de
  aplicación y usala en la próxima cotización."
- "Antes del próximo deck, pedile a tu IA que cargue el skill [startup]-brand."
- "Decidí los 3 puntos de Pendiente de confirmar y avisá para actualizar el brain."

## Sources

- [Brand method](references/brand-method.md): where to read each token, reconciliation order,
  palette roles, WCAG contrast check with code, fonts and fallbacks, logo rules, type scales
  per surface, tone, surface specs.
- [Deck Design Rules](references/shared/deck-design-rules.md): LAN house rules and the
  AI-slop list.
- [Company Brain Integration](references/shared/company-brain-integration.md): read order,
  write-back and fallback.
- [Editorial Voice](references/shared/editorial-voice.md)
- W3C, WCAG 2.2: https://www.w3.org/TR/WCAG22/
- Design Tokens Community Group: https://www.designtokens.org/
