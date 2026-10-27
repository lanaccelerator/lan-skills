---
name: venture-model-validator
description: >
  Use when a founder asks whether their startup is VC-backable, venture-scale or fundable
  ("is my startup fundable?", "would VCs invest in this?", "mi startup es invertible?",
  "esto es para VC o es un negocio tradicional?", "le interesa a un fondo?"). Scores five
  frameworks (YC idea evaluation, Thiel monopoly test, a16z PMF, Sequoia enduring
  companies, Gurley market sizing) plus fund-returner math, exit path and an AI-era lens,
  with LATAM calibration and an honest invest/pass verdict. NOT for building the pitch deck
  (use pitch-deck-builder), checking readiness to start a raise (use
  fundraising-readiness-audit), valuation (use startup-valuation-benchmark), or a VC
  writing an IC memo on someone else's company (use deal-memo-writer).
categories: ["business", "startups", "venture-capital"]
metadata:
  author: lan-accelerator
  version: "1.2"
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
as: `[ASSUMPTION: ...]`. Do not silently skip inputs. If a company brain (LAN Brain or another
MCP-connected knowledge base), deck or data room is available, read it first and ask only
for gaps.

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

## Step 2b: Fund-Returner Math and AI-Era Lens

Read [references/power-law-and-ai-era.md](references/power-law-and-ai-era.md) and add a
"Why a VC says yes or no" block to the scorecard:

- **Power law:** ~65% of financings return under 1x and ~4% return 10x+ (Correlation Ventures via
  Seth Levine); the 10x+ deals carry 60%+ of top-100 gains in most years (Cambridge Associates).
- **Fund-returner test:** a USD 100M fund must return USD 300M; at ~10% ownership at exit, one
  USD 1B exit returns the fund. State whether the founder's market allows that outcome.
- **Exit path:** ~97% of 2025 US VC exits were M&A (50 IPOs of 1,578, PitchBook-NVCA Q1 2026).
  Ask for the 10 most plausible acquirers.
- **AI-era lens:** sell the work not the tool (Sequoia), outcome pricing, proprietary context as
  the moat (Lightspeed on Harvey; YC "Own Your Intelligence"), fit with YC's Winter 2027 RFS, and
  where the product sits on NVIDIA's perception -> generative -> agentic -> physical curve.

## Step 3: Workflow

Execute in this exact order:

1. Gather inputs (Step 1 questions — confirm answers or state assumptions)
2. Score each framework criterion (1–5 scale, defined in references/vc-backable-criteria.md)
3. Flag red flags — EXPLICITLY list each red flag found; do not soften or bury them
4. Research comparables — read [references/comparable-companies.md](references/comparable-companies.md) for LATAM examples
5. Apply LATAM context — read [references/latam-context.md](references/latam-context.md) BEFORE calculating final score
6. Generate scorecard output using the structure in [TEMPLATES.md](TEMPLATES.md)
7. End with Next Steps

## Step 4: Output Format

ALWAYS use the exact template structure in [TEMPLATES.md](TEMPLATES.md). Do not change
section headings, table columns, or field order. Fill every [bracketed placeholder] with
real analysis from the user's startup.

The output is a VC Backability Scorecard containing:
- **Overall score** (sum of 5 framework scores out of 25)
- **Framework breakdown table** (score, key finding per framework)
- **Red flags section** — explicit `[RED FLAG]` callouts, not glossed-over concerns
- **Comparables table** — 2–4 LATAM companies at comparable stage with metrics
- **LATAM Context box:** US benchmark labeled `(US-sourced benchmark, source, date)` + LATAM figure labeled `(LATAM, source, date)` or `(LATAM, directional)`
- **Next Steps** — 3–5 concrete next actions

## Step 5: LATAM Context

Read [references/latam-context.md](references/latam-context.md) BEFORE producing the
final score. Adjust all US-sourced benchmarks to LATAM reality.

Label every figure with source and date per the protocol in the reference file. The
numbers come from references/shared/latam-benchmarks.md; never quote a LATAM figure that
is not there and cannot be verified.

Key LATAM adjustments to apply:
- Fintech took 61% of 2025 LATAM VC dollars, SaaS 13% (Cuantico 2026): sector mix
  affects fundability
- ~20 months between LATAM rounds (LAVCA Trends in Tech 2025) and only 12% of seeds reach
  Series A within three years (LAVCA 2025): score as if the company may never raise again
- Pre-seed deal count fell 39% in 2025: earlier companies must hit seed metrics faster
- Brazil + Mexico took ~73% of 2025 dollars (Cuantico 2026): regional scale runs through
  these two markets

## Tone & Editorial Voice

See references/shared/editorial-voice.md: direct, no-sugarcoating, unicorn-bar
evaluation. You are NOT a cheerleader. If the work is weak, say it's weak. If it's
exceptional, acknowledge specifically.

## Step 6: Next Steps

End EVERY analysis with 3–5 specific next actions the founder should take within 30 days,
based on the gaps identified in the scorecard. Use the header `## Next Steps`.

Actions must be concrete:
- GOOD: "Conduct 20 customer discovery interviews with [segment] targeting [specific question]"
- BAD: "Do more research"

Base next steps on the lowest-scoring criteria. If the startup scores below 3 on market
sizing, the first next step must directly address market sizing.

Handoffs: `/rapid-mvp-builder` if the gap is "no product, no paying users",
`/pitch-deck-builder` once the score clears the bar, `/fundraising-readiness-audit` before
starting the raise.

## Sources

- [VC Backability Criteria](references/vc-backable-criteria.md) — consolidated scoring rubric
- [LATAM Context](references/latam-context.md): how LATAM facts move the score
- [latam-benchmarks.md](references/shared/latam-benchmarks.md): canonical verified LATAM data
- [Comparable Companies](references/comparable-companies.md): LATAM shortlist; fetch round data at run time
- [Power Law and AI Era](references/power-law-and-ai-era.md): Correlation, Cambridge Associates, Carta, PitchBook-NVCA, YC RFS W27, NVIDIA CES 2025, Sequoia, Lightspeed, Greylock
- YC Requests for Startups: https://www.ycombinator.com/rfs
- [vc-backable-test.md](references/shared/vc-backable-test.md) — framework details
- YC Essential Startup Advice: https://www.ycombinator.com/library/Em-yc-s-essential-startup-advice
- a16z PMF Method: https://a16z.com/the-pmf-method/
- Sequoia Enduring Companies: https://www.sequoiacap.com/article/elements-of-enduring-companies/
- Bill Gurley Market Sizing: https://abovethecrowd.com/2014/07/11/how-to-miss-by-a-mile-an-alternative-look-at-ubers-potential-market-size/
