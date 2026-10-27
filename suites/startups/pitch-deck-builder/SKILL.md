---
name: pitch-deck-builder
description: >
  Startup investor presentation builder. ALWAYS invoke when a user wants to
  create, structure, or outline a pitch deck or investor presentation. Applies
  Sequoia 10-slide framework, YC Series A guide, Kawasaki 10-20-30, and Reid
  Hoffman teardowns. NOT for reviewing an existing deck (use deck-reviewer)
  or validating the business model (use venture-model-validator).
categories: ["business", "startups", "venture-capital"]
metadata:
  author: lan-accelerator
  version: "1.1"
  suite: startups
license: MIT
---

# Pitch Deck Builder

Generates a slide-by-slide pitch deck outline with talking points, data
requirements, and common errors per slide. Applies Sequoia, Kawasaki, or YC
framework based on fundraising stage. Flags every slide missing data as
[DATA NEEDED: ...] so founders know exactly what to gather before investor
meetings.

## Step 1: Input Gathering

Ask all seven questions in ONE message. Do not generate slides until you have
answers (or stated assumptions) for each.

1. **Company name and one-sentence description**
2. **Fundraising stage** (pre-seed / seed / Series A)
3. **Amount raising and target use of funds**
4. **Business model** (SaaS / marketplace / fintech / hardware / other)
5. **Current metrics** (MRR, ARR, users, growth rate — "none" if pre-revenue)
6. **Competitive landscape** (top 3 competitors and your differentiation)
7. **Target investor type** (VC / angel / corporate / strategic)

If a question is skipped, proceed with a stated assumption flagged as:
`[ASSUMPTION: ...]`. Do not silently skip inputs.

## Step 2: Apply Frameworks

Read [references/sequoia-deck.md](references/sequoia-deck.md) before building
any slide. Apply framework by stage:

- **Pre-seed:** Kawasaki 10-slide (simpler, narrative-focused; investors are
  buying the team and the vision, not the metrics)
- **Seed:** Sequoia 10-slide structure (balanced narrative + early metrics)
- **Series A:** Sequoia 10-slide + YC Series A diligence checklist alignment
  (metrics-first; investors are buying the business model, not the dream)

Framework sources:
- Sequoia 10-slide: https://www.sequoiacap.com/article/writing-a-business-plan/
- YC Series A guide: https://www.ycombinator.com/library/3h-series-a-diligence-checklist
- Kawasaki 10-20-30: https://guykawasaki.com/the-only-10-slides-you-need-in-your-pitch/

## Step 3: Workflow

Execute in this exact order:

1. Gather inputs (Step 1 questions — confirm answers or state assumptions)
2. Determine framework by stage (pre-seed → Kawasaki; seed → Sequoia;
   Series A → Sequoia + YC Series A alignment)
3. Generate slide-by-slide outline:
   - **Slide title** — the name of the slide
   - **Talking points** — 3–5 specific bullets (not generic; fill with
     founder's data or [DATA NEEDED] flags)
   - **Data needed** — exact metrics, quotes, or evidence required for this
     slide to be investor-grade
   - **Common errors** — why decks typically fail on this slide type
4. Flag every slide with missing data as `[DATA NEEDED: specific metric or
   evidence required]` — do not paper over gaps with vague language
5. Apply LATAM context from [references/latam-context.md](references/latam-context.md):
   adjust market sizing methodology, investor expectations, and comparable
   companies for LATAM-specific context
6. Output using the exact structure in [TEMPLATES.md](TEMPLATES.md)
7. End with Next Steps

## Step 4: Output Format

ALWAYS use the exact template structure in TEMPLATES.md. Every slide must
have: title, talking points, data needed, and common errors. Do not skip
sections. Do not merge slides. Do not rename columns.

## Step 5: LATAM Context

Read [references/latam-context.md](references/latam-context.md) BEFORE
producing the final output. Apply LATAM-specific adjustments:

- LATAM investors expect localized market evidence — LAVCA portfolio data
  and local comparables, not global TAM claims from Gartner or McKinsey
- Seed investors in LATAM expect ≥1k active paying customers OR ≥$100k ARR
  before a Seed round (LAVCA 2025)
- Revenue multiples in LATAM run 30–50% below US peers at equivalent growth
  — calibrate your ask accordingly (Cuantico 2026)
- "Brazil + Mexico first" framing is the correct LATAM TAM methodology —
  claiming "LATAM market" without country specificity fails diligence

- **Lead with the growth line and the logos.** The strongest round narrative fits in one
  line: "We are growing X% per month and want to take the market" (LAN fundraising
  masterclass, Oct 2026). Put the validators that weigh on the traction or team slide:
  investors already in, advisors, closed paying customers, clear traction numbers, and
  founder CV (Ivy League, top company, prior exit, something extraordinary). In LATAM, with
  low liquidity, team and growth weigh most. Cheap signals (LOIs, free pilots) do not count.

Label all US benchmarks as `(US-sourced benchmark)` and provide the LATAM
figure labeled `(LATAM, LAVCA 2025 / Cuantico 2026)`.

## Tone & Editorial Voice

See @shared/frameworks/editorial-voice.md — direct, no-sugarcoating, unicorn-bar
evaluation. You are NOT a cheerleader. If the work is weak, say it's weak. If it's
exceptional, acknowledge specifically.

## Step 6: Next Steps

End EVERY deck outline with specific next actions based on which slides have
`[DATA NEEDED]` flags. Use the header `## Next Steps`.

Actions must be concrete:
- GOOD: "Interview 10 churned customers to identify the #1 reason for
  cancellation; this data belongs on Slide 2 (Problem)"
- BAD: "Gather more data"

The most critical [DATA NEEDED] flags become the first Next Steps items —
missing market sizing data blocks Series A diligence, missing unit economics
block Seed diligence.

## Step 7: Sources

- [Sequoia 10-slide detail](references/sequoia-deck.md) — slide-by-slide
  criteria and failure modes
- [LATAM Context](references/latam-context.md) — investor expectations,
  stage benchmarks, common LATAM deck mistakes
- [Shared Sequoia Framework](../../../../shared/frameworks/sequoia-deck.md) — canonical
  Sequoia structure (raw framework)
- Sequoia Writing a Business Plan: https://www.sequoiacap.com/article/writing-a-business-plan/
- YC Series A Diligence Checklist: https://www.ycombinator.com/library/3h-series-a-diligence-checklist
- Kawasaki 10-20-30: https://guykawasaki.com/the-only-10-slides-you-need-in-your-pitch/
- DocSend Pitch Deck Report: https://docsend.com/index/pitch-deck-report/ (deck analytics data)
