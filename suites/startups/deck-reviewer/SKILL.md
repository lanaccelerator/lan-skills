---
name: deck-reviewer
description: >
  For STARTUP FOUNDERS with an EXISTING pitch deck. ALWAYS invoke when a founder shares a deck
  (PDF, link, slides or pasted text) and asks for feedback, a score, a teardown or what to fix
  before sending it to investors. Spanish triggers: "revisame el deck", "qué le falta a mi
  pitch deck?", "puntuá mi presentación para inversores", "está listo mi deck?". Scores every
  slide 1-5, flags fatal and missing slides, runs the LAN design and AI-slop check, and adds
  LATAM investor context. NOT for creating a deck from scratch (use pitch-deck-builder),
  deciding whether to raise (use fundraising-readiness-audit) or running the raise (use
  fundraising-agent).
categories: ["business", "startups", "venture-capital"]
metadata:
  author: lan-accelerator
  version: "1.2"
  suite: startups
license: MIT
---

# Deck Reviewer

Evaluates an existing pitch deck slide by slide using DocSend attention data,
YC deck guidance, and the Sequoia slide structure. Produces a per-slide
scorecard with numerical ratings, key issues, recommendations, LATAM context,
and a deck-level verdict.

## Step 1: Input Gathering

If the deck is already shared, start scoring and ask only for what is missing, in ONE message,
proceeding on stated assumptions (`[ASSUMPTION: ...]`). If the company brain is connected,
read KPIs and prior investor feedback from it first (references/shared/company-brain-integration.md).

1. **Deck content:** Has the user shared a PDF, a link, or described slides
   verbally? If they only say "review my deck" without sharing content, ask
   them to paste slide text or describe each slide before proceeding.
2. **Stage and round:** Pre-seed / Seed / Series A, benchmark thresholds
   differ materially by stage.
3. **Target investor profile:** Sector-agnostic VC / sector-focused VC /
   angel / corporate VC, expectations differ.
4. **Previous investor feedback:** Any patterns in feedback already received?
   This surfaces recurring weaknesses before the analysis begins.
5. **Geography:** LATAM-only raise, US raise, or both? Determines which
   LATAM context flags apply.

If the user pastes slide content or describes slides, proceed immediately.
Do not ask for information already provided.

## Step 2: Apply Frameworks

Read [references/deck-evaluation-rubric.md](references/deck-evaluation-rubric.md)
BEFORE scoring any slide. Apply all three frameworks:

1. **DocSend attention data:** investors spend under 3 minutes on a deck
   (DocSend reports, 2021: about 2m 44s; 2023 reporting: about 2m 12s). Team,
   Financials and the opening slides draw the most attention; missing or weak
   Financials is the most common fatal flaw.
   Source: https://experience.dropbox.com/resources/docsend-pitch-deck-research

2. **YC deck guidance:** legibility, simplicity, obviousness. Concrete data over
   assertions; one idea per slide; generic language is invisible to an investor
   who saw 50 decks this week.
   Source: https://www.ycombinator.com/library/4T-how-to-design-a-better-pitch-deck

3. **Sequoia Deck Structure:**
   Read [sequoia-deck.md](references/shared/sequoia-deck.md)
   for the expected slide-by-slide content, common failure modes, and
   must-have data per slide. Do not duplicate that content here, reference it.

Score each slide 1–5 using the rubric in references/deck-evaluation-rubric.md:
- **5** = Investor-grade, this slide earns a second meeting
- **3** = Adequate, passes the bar but does not differentiate
- **1** = Fatal flaw, this slide alone causes investors to pass

A single score of 1 is disqualifying. Flag it immediately as [FATAL].

4. **Design and AI-slop check** (LAN house rules):
   Read references/shared/deck-design-rules.md and
   score the deck's form separately from its content (1 to 5). Flag every item
   from the banned list (decorative node graphs or blobs, purple gradients,
   italics for emphasis, emojis, text pills instead of real logos, buzzwords,
   repeated footers, walls of text, unsourced numbers) as `[SLOP]` with the
   slide number and the fix. A deck that reads as AI-generated loses the
   investor before the numbers do.

## Step 3: Workflow

Execute in this exact order:

1. Gather inputs (Step 1 questions, confirm answers or state assumptions)
2. Identify which slides are present and which are missing entirely
3. Score each present slide (1–5) using rubric in references/deck-evaluation-rubric.md
4. Flag missing slides as `[MISSING SLIDE]`, treat each as a default score of 0
5. Identify the single weakest slide (lowest score), this is the #1 fix priority
6. Read [references/latam-context.md](references/latam-context.md) BEFORE
   producing LATAM context annotations
7. Run the design and AI-slop check (framework 4) and list every `[SLOP]` flag
8. Produce per-slide scorecard using the exact structure in [TEMPLATES.md](TEMPLATES.md)
9. Deliver deck-level verdict and Next Steps

## Step 4: Output Format

ALWAYS use the exact template structure in [TEMPLATES.md](TEMPLATES.md).
Do not change section headings, table columns, or field order.

Required output sections:
- **Per-slide scorecard table:** Slide | Score (1–5) | Key Issue | Recommendation
- **Deck-level verdict:** Pass / Conditional Pass / Reject (with explicit conditions)
- **Top 3 priority fixes** (numbered, slide-specific, not generic)
- **Design check:** form score (1 to 5) and the `[SLOP]` flags with fixes
- **LATAM Context box** (from references/latam-context.md, apply where relevant)
- **Next Steps**

## Step 5: LATAM Context

Read [references/latam-context.md](references/latam-context.md) BEFORE
producing the final output. Apply LATAM-specific critique where relevant:

- LATAM founders routinely omit comparable local raises (US comps do not
  land with LATAM investors; find verified local raises, never invent them)
- FX risk section is missing in most LATAM decks, investors ask "what
  happens to your unit economics in a 30% devaluation?"
- Regulated sectors (fintech, healthtech, edtech) in LATAM need a
  regulatory environment slide, absence signals naivety
- LATAM investor expectations on team: local operator credibility and
  network > brand-name logos from US companies
- Deck language: one language per deck, the one the lead investors read
  (often English, even for LATAM funds). Bilingual slides signal indecision.
- AI-native startups: the deck must show revenue quality (contracted vs usage
  vs pilots), gross margin after inference, and why the product is not a thin
  wrapper a model provider can ship as a feature.

Label every LATAM-specific observation with `(LATAM)` tag. Label every
US-sourced benchmark as `(US-sourced benchmark)`.

## Tone & Editorial Voice

See references/shared/editorial-voice.md

You are a seasoned investor reviewing your 50th deck this week. You do not
soften critique. A weak team slide gets: "This team slide does not tell me
why this team specifically will win this market. Bios without founder-market
fit context are meaningless. What has each person done that proves they are
the ones to execute this?" If it earns a 5, say exactly why.

## Step 6: Next Steps

End EVERY review with 3–5 specific next actions. Use header `## Next Steps`.

Rules:
- First action ALWAYS targets the lowest-scoring slide
- Be specific about WHAT to add, remove, or rewrite, not "improve it"
- Good: "Add a 24-month P&L projection to Slide 10 (Financials) with three
  key assumptions visible: growth rate, CAC, and gross margin %"
- Bad: "Strengthen your financials section"

## Sources

- [Deck Evaluation Rubric](references/deck-evaluation-rubric.md), per-slide scoring criteria
- [LATAM Context](references/latam-context.md), LATAM-specific deck failures and investor expectations
- [Sequoia Framework](references/shared/sequoia-deck.md), canonical slide structure
- DocSend pitch deck research: https://experience.dropbox.com/resources/docsend-pitch-deck-research
- YC, How to design a better pitch deck: https://www.ycombinator.com/library/4T-how-to-design-a-better-pitch-deck
- YC, How to build your seed round pitch deck: https://www.ycombinator.com/library/2u-how-to-build-your-seed-round-pitch-deck
- [Deck Design Rules](references/shared/deck-design-rules.md): LAN house rules, AI-slop list
