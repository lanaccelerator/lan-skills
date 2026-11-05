---
name: venture-model-validator
description: >
  Use when a founder asks whether their startup is VC-backable, venture-scale or fundable
  ("is my startup fundable?", "mi startup es invertible?", "esto es para VC o es un negocio
  tradicional?", "le interesa a un fondo?", "ChatGPT ya hace lo que hago?"). Scores five
  frameworks (YC idea evaluation, Thiel monopoly test, a16z PMF, Sequoia enduring
  companies, Gurley market sizing) plus fund-returner math, exit path and an AI-era lens:
  the "does Claude/ChatGPT already do it?" test and the tool to service horizon (YC RFS,
  Sequoia 1:6), with LATAM calibration and an honest invest/pass verdict. NOT for building
  the pitch deck (use pitch-deck-builder), readiness to start a raise (use
  fundraising-readiness-audit), valuation (use startup-valuation-benchmark), the detailed
  tool vs service decision (use ai-service-horizon), the competitor map (use
  competitive-landscape-mapper) or a VC writing an IC memo (use deal-memo-writer).
categories: ["business", "startups", "venture-capital"]
metadata:
  author: lan-accelerator
  version: "1.3"
  suite: startups
  complements: [competitive-landscape-mapper, ai-service-horizon, pitch-deck-builder, fundraising-readiness-audit, startup-valuation-benchmark]
license: MIT
---

# Venture Model Validator

Evaluates whether a startup is VC-backable by applying five canonical frameworks.
Produces a structured scorecard with numerical ratings, red flags, an AI-era test (does
Claude/ChatGPT already do it, and where the company sits on the tool to service horizon),
LATAM context, comparables, and concrete next steps.

## Step 1: Input Gathering

Ask all seven questions in ONE message. Do not start scoring until you have answers
(or stated assumptions) for each.

1. **Company name and one-sentence description**
2. **Business model** (SaaS / marketplace / transactional / fintech / hardware / other)
3. **Current stage** (idea / pre-product / pre-revenue / early revenue / growth)
4. **Current metrics** (MRR, users, growth rate; enter "none" if pre-revenue)
5. **Target market** (geography + customer segment)
6. **Why now?** (what has changed in the last 2–3 years that makes this possible/urgent?)
7. **Who does the work today?** (software the customer operates, an agency or outsourcer, an
   in-house team, or a general AI assistant like Claude or ChatGPT) [ASSUMPTION: in-house
   team plus spreadsheets]

If the user does not answer a question, proceed with a stated assumption and flag it
as: `[ASSUMPTION: ...]`. Do not silently skip inputs. If a company brain (LAN Brain or another
MCP-connected knowledge base), deck or data room is available, read it first and ask only
for gaps.

## Step 2: Apply Frameworks

Read [references/vc-backable-criteria.md](references/vc-backable-criteria.md) before
scoring. Apply all five frameworks in order:

1. **YC Idea Evaluation**: Is this a large, growing market with a defensible wedge?
   Source: https://www.ycombinator.com/library/Em-yc-s-essential-startup-advice
2. **Thiel Monopoly Test**: Can this startup dominate a specific niche before expanding?
   Source: Zero to One (ch. 3–4)
3. **a16z PMF Framework**: Is there evidence of product-market fit signals?
   Source: https://a16z.com/the-pmf-method/
4. **Sequoia Enduring Companies**: Does this have the potential to be category-defining?
   Source: https://www.sequoiacap.com/article/elements-of-enduring-companies/
5. **Gurley Market Sizing**: Is the true serviceable market large enough to return a fund?
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
  For AI-native or AI-core companies, also apply references/shared/ai-era-evaluation.md
  (wrapper risk, revenue quality, Bessemer archetypes).
- **"Does Claude/ChatGPT already do it?" test (mandatory):** run 3 real customer tasks through
  Claude and ChatGPT with only what a customer would paste in, and score the share of the job
  done acceptably. If a general assistant (about USD 20 per user per month) does 80% or more of
  the job, the startup needs at least one of: proprietary data, workflow lock-in (system of
  record), distribution the assistant does not have, or a service layer (humans in oversight,
  SLA, liability). None of the four means `[RED FLAG: ASSISTANT SUBSTITUTE]` and the Thiel and
  Sequoia scores cannot exceed 2. Method in
  [references/power-law-and-ai-era.md](references/power-law-and-ai-era.md) section 5.
- **Service horizon:** place the company on tool -> tool+service -> service. YC's Summer 2026
  RFS asks for AI-native service companies (AI agents as the primary workforce, humans in
  oversight); Sequoia's "Services: The New Software" counts USD 6 spent on services for every
  USD 1 on software. A tool that fails the assistant test can still be venture-scale as a
  service that sells the finished work. State the current position and the recommended one;
  hand the detailed decision and margin model to ai-service-horizon.

## Step 3: Workflow

Execute in this exact order:

1. Gather inputs (Step 1 questions: confirm answers or state assumptions)
2. Score each framework criterion (1–5 scale, defined in references/vc-backable-criteria.md)
3. Flag red flags: EXPLICITLY list each red flag found; do not soften or bury them
4. Research comparables: read [references/comparable-companies.md](references/comparable-companies.md) for LATAM examples
5. Apply LATAM context: read [references/latam-context.md](references/latam-context.md) BEFORE calculating final score
6. Run the Claude/ChatGPT test and place the company on the service horizon (Step 2b)
7. Generate scorecard output using the structure in [TEMPLATES.md](TEMPLATES.md)
8. End with Próximos Pasos

## Step 4: Output Format

ALWAYS use this exact template structure. Do not change section headings, table columns, or
field order. Fill every [bracketed placeholder] with real analysis from the user's startup.
See [TEMPLATES.md](TEMPLATES.md) for the filled example.

The output is a VC Backability Scorecard containing:
- **Overall score** (sum of 5 framework scores out of 25)
- **Framework breakdown table** (score, key finding per framework)
- **Red flags section**: explicit `[RED FLAG]` callouts, not glossed-over concerns
- **Why a VC says yes or no**: fund-returner math, exit path, the Claude/ChatGPT test and the
  service horizon
- **Comparables table**: 2–4 LATAM companies at comparable stage with metrics
- **LATAM Context box:** US benchmark labeled `(US-sourced benchmark, source, date)` + LATAM figure labeled `(LATAM, source, date)` or `(LATAM, directional)`
- **Próximos Pasos**: 3–5 concrete next actions

## LATAM Context

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
exceptional, acknowledge specifically. If ChatGPT already does the job, say it in the
first paragraph, not in the appendix.

## Próximos Pasos

End EVERY analysis with 3–5 specific next actions the founder should take within 30 days,
based on the gaps identified in the scorecard. Use the header `## Próximos Pasos`.

Actions must be concrete:
- GOOD: "Conduct 20 customer discovery interviews with [segment] targeting [specific question]"
- GOOD: "Corré tus 3 tareas principales en ChatGPT y Claude esta semana; si hacen el 80% solos,
  definí cuál de los cuatro motivos (datos propios, lock-in de workflow, distribución, capa de
  servicio) vas a construir primero"
- BAD: "Do more research"

Base next steps on the lowest-scoring criteria. If the startup scores below 3 on market
sizing, the first next step must directly address market sizing.

Handoffs: `/rapid-mvp-builder` if the gap is "no product, no paying users",
`/pitch-deck-builder` once the score clears the bar, `/fundraising-readiness-audit` before
starting the raise, `/ai-service-horizon` when the assistant test fails or the service
position looks stronger, `/competitive-landscape-mapper` for the full competitor map.

## Sources

- [VC Backability Criteria](references/vc-backable-criteria.md): consolidated scoring rubric
- [LATAM Context](references/latam-context.md): how LATAM facts move the score
- [latam-benchmarks.md](references/shared/latam-benchmarks.md): canonical verified LATAM data
- [Comparable Companies](references/comparable-companies.md): LATAM shortlist; fetch round data at run time
- [Power Law and AI Era](references/power-law-and-ai-era.md): Correlation, Cambridge Associates, Carta, PitchBook-NVCA, YC RFS W27, NVIDIA CES 2025, Sequoia, Lightspeed, Greylock
- YC Requests for Startups (Summer 2026 "AI-Native Service Companies"; Winter 2027): https://www.ycombinator.com/rfs
- Sequoia, "Services: The New Software" (Julien Bek, Mar 2026): https://www.sequoiacap.com/article/services-the-new-software
- references/shared/ai-era-evaluation.md: wrapper risk, revenue quality, AI archetypes
- [vc-backable-test.md](references/shared/vc-backable-test.md): framework details
- YC Essential Startup Advice: https://www.ycombinator.com/library/Em-yc-s-essential-startup-advice
- a16z PMF Method: https://a16z.com/the-pmf-method/
- Sequoia Enduring Companies: https://www.sequoiacap.com/article/elements-of-enduring-companies/
- Bill Gurley Market Sizing: https://abovethecrowd.com/2014/07/11/how-to-miss-by-a-mile-an-alternative-look-at-ubers-potential-market-size/
