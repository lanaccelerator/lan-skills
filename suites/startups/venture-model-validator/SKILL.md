---
name: venture-model-validator
description: >
  Startup venture-scale analysis. ALWAYS invoke when a user asks to evaluate
  if their startup is VC-backable, investable, or venture-scale, or when they
  ask "is my startup fundable?" or "would VCs invest in this?" Applies YC idea
  evaluation, Thiel monopoly test, a16z PMF, Sequoia enduring companies, and
  Gurley market sizing. NOT for pitch deck creation or financial modeling.
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: startups
license: MIT
---

# Venture Model Validator

Evaluates whether a startup is VC-backable by applying five canonical frameworks.
Produces a structured scorecard with numerical ratings, red flags, LATAM context,
comparables, and concrete next steps.

## Step 1: Input Gathering

Ask all six questions in ONE message. Do not start scoring until you have answers
(or stated assumptions) for each.

1. **Company name and one-sentence description**
2. **Business model** (SaaS / marketplace / transactional / fintech / hardware / other)
3. **Current stage** (idea / pre-product / pre-revenue / early revenue / growth)
4. **Current metrics** (MRR, users, growth rate — enter "none" if pre-revenue)
5. **Target market** (geography + customer segment)
6. **Why now?** (what has changed in the last 2–3 years that makes this possible/urgent?)

If the user does not answer a question, proceed with a stated assumption and flag it
as: `[ASSUMPTION: ...]`. Do not silently skip inputs.

## Step 2: Apply Frameworks

Read [references/vc-backable-criteria.md](references/vc-backable-criteria.md) before
scoring. Apply all five frameworks in order:

1. **YC Idea Evaluation** — Is this a large, growing market with a defensible wedge?
   Source: https://www.ycombinator.com/library/Em-yc-s-essential-startup-advice
2. **Thiel Monopoly Test** — Can this startup dominate a specific niche before expanding?
   Source: Zero to One (ch. 3–4)
3. **a16z PMF Framework** — Is there evidence of product-market fit signals?
   Source: https://a16z.com/the-pmf-method/
4. **Sequoia Enduring Companies** — Does this have the potential to be category-defining?
   Source: https://www.sequoiacap.com/article/elements-of-enduring-companies/
5. **Gurley Market Sizing** — Is the true serviceable market large enough to return a fund?
   Source: https://abovethecrowd.com/2014/07/11/how-to-miss-by-a-mile-an-alternative-look-at-ubers-potential-market-size/

Score each framework criterion 1–5 using the rubrics in references/vc-backable-criteria.md.
A score below 3 on any single criterion is disqualifying.

## Step 3: Workflow

Execute in this exact order:

1. Gather inputs (Step 1 questions — confirm answers or state assumptions)
2. Score each framework criterion (1–5 scale, defined in references/vc-backable-criteria.md)
3. Flag red flags — EXPLICITLY list each red flag found; do not soften or bury them
4. Research comparables — read [references/comparable-companies.md](references/comparable-companies.md) for LATAM examples
5. Apply LATAM context — read [references/latam-context.md](references/latam-context.md) BEFORE calculating final score
6. Generate scorecard output using the structure in [TEMPLATES.md](TEMPLATES.md)
7. End with Próximos Pasos

## Step 4: Output Format

ALWAYS use the exact template structure in [TEMPLATES.md](TEMPLATES.md). Do not change
section headings, table columns, or field order. Fill every [bracketed placeholder] with
real analysis from the user's startup.

The output is a VC Backability Scorecard containing:
- **Overall score** (sum of 5 framework scores out of 25)
- **Framework breakdown table** (score, key finding per framework)
- **Red flags section** — explicit `[RED FLAG]` callouts, not glossed-over concerns
- **Comparables table** — 2–4 LATAM companies at comparable stage with metrics
- **LATAM Context box** — US benchmark labeled `(US-sourced benchmark)` + LATAM-adjusted figure labeled `(LATAM, LAVCA 2025 / Cuantico 2026)`
- **Próximos Pasos** — 3–5 concrete next actions

## Step 5: LATAM Context

Read [references/latam-context.md](references/latam-context.md) BEFORE producing the
final score. Adjust all US-sourced benchmarks to LATAM reality.

Label every US benchmark as `(US-sourced benchmark)` and include the LATAM-adjusted
figure labeled `(LATAM, LAVCA 2025 / Cuantico 2026)`.

Key LATAM adjustments to apply:
- Fintech captures 61% of LATAM VC vs 13% SaaS — sector mix affects fundability
- Median gap between LATAM rounds: 20 months vs 12–15 months in US
- Pre-seed deals dropped 39% in 2025 — earlier companies must hit seed metrics faster
- Brazil + Mexico = 78.5% of LATAM capital — regional scale means these two markets

## Tone & Editorial Voice

See @shared/frameworks/editorial-voice.md — direct, no-sugarcoating, unicorn-bar
evaluation. You are NOT a cheerleader. If the work is weak, say it's weak. If it's
exceptional, acknowledge specifically.

## Step 6: Próximos Pasos

End EVERY analysis with 3–5 specific next actions the founder should take within 30 days,
based on the gaps identified in the scorecard. Use the header `## Próximos Pasos`.

Actions must be concrete:
- GOOD: "Conduct 20 customer discovery interviews with [segment] targeting [specific question]"
- BAD: "Do more research"

Base next steps on the lowest-scoring criteria. If the startup scores below 3 on market
sizing, the first next step must directly address market sizing.

## Sources

- [VC Backability Criteria](references/vc-backable-criteria.md) — consolidated scoring rubric
- [LATAM Context](references/latam-context.md) — LAVCA 2025 + Cuantico 2026 benchmarks
- [Comparable Companies](references/comparable-companies.md) — LATAM startup examples
- [shared/frameworks/vc-backable-test.md](../../../../shared/frameworks/vc-backable-test.md) — framework details
- YC Essential Startup Advice: https://www.ycombinator.com/library/Em-yc-s-essential-startup-advice
- a16z PMF Method: https://a16z.com/the-pmf-method/
- Sequoia Enduring Companies: https://www.sequoiacap.com/article/elements-of-enduring-companies/
- Bill Gurley Market Sizing: https://abovethecrowd.com/2014/07/11/how-to-miss-by-a-mile-an-alternative-look-at-ubers-potential-market-size/
