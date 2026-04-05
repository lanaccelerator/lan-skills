---
name: fundraising-readiness-audit
description: >
  For STARTUP FOUNDERS. Pre-fundraise readiness assessment by stage.
  ALWAYS invoke when a founder asks "am I ready to raise?", "should
  I start fundraising?", "are my metrics good enough to raise?", or
  wants to evaluate readiness before approaching investors. NOT for
  building the pitch deck (use pitch-deck-builder) or calculating
  unit economics (use unit-economics-calculator).
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: startups
license: MIT
---

# Fundraising Readiness Audit

Evaluates whether a startup is ready to fundraise at their target stage.
Produces a 5-dimension readiness scorecard with READY / CONDITIONAL / NOT READY
verdict per dimension, comparable raises data, and a prioritized action list.

## Step 1: Input Gathering

Ask ALL questions in ONE message. Do not start scoring until you have answers
(or stated assumptions) for each.

1. **Target stage:** pre-seed / seed / Series A / Series B (determines threshold benchmarks)
2. **Current metrics:** MRR or ARR, growth rate MoM or YoY, churn rate, LTV/CAC if known
3. **Data room status:** Which documents do they have ready? (cap table, financials model,
   product demo, customer contracts, legal docs)
4. **Investment narrative:** Can they articulate why this company / why now / why this team
   in 60 seconds or less?
5. **Team composition:** Current team size, roles filled, obvious functional gaps
6. **Geography:** LATAM-focused raise, US-focused raise, or both?
7. **Timeline:** When do they want or need to close the round?

If the user does not answer a question, proceed with a stated assumption and flag it as:
`[ASSUMPTION: ...]`. Do not silently skip inputs.

## Step 2: Apply Frameworks

Read [references/readiness-rubric.md](references/readiness-rubric.md) BEFORE scoring.
Apply stage-specific thresholds from that file. Also read:

- @shared/frameworks/yc-metrics.md — stage-specific metric benchmarks by business model
- **YC "How to Raise Money"** — Source: https://www.ycombinator.com/library/4A-how-to-raise-money
- **a16z Fundraising Guide** — Source: https://a16z.com/how-to-raise-money-startup/
- **First Round fundraising signals** — Source: https://review.firstround.com/looking-for-signs-of-magic-how-our-partners-think-about-fundraising/

Score each of the 5 dimensions as READY / CONDITIONAL / NOT READY with a specific reason.
Do not assign scores without evidence. If data is missing, state the assumption.

## Step 3: Workflow

Execute in this exact order:

1. Confirm target stage → load stage-specific thresholds from references/readiness-rubric.md
2. Score each of the 5 dimensions:
   - **a. Metrics threshold** — Do current metrics meet stage benchmarks?
     Read yc-metrics.md for SaaS / marketplace / fintech / transactional model thresholds.
     State the benchmark. State the current position. State the gap precisely.
   - **b. Data room completeness** — Are minimum documents ready for due diligence?
     Check against the stage-minimum list in references/readiness-rubric.md.
   - **c. Narrative clarity** — Can they tell the story? Must cover: Problem (quantified) →
     Solution (differentiation) → Why Now (timing trigger) → Why Us (unfair advantage) →
     Market (SAM/SOM credible) → Traction (PMF signal)
   - **d. Team gaps** — Which roles are missing that investors expect at this stage?
     Stage-specific expectations are in references/readiness-rubric.md.
   - **e. Comparable raises** — What did similar LATAM companies raise at these metrics?
     Read references/latam-comparable-raises.md for LATAM raise data by stage.
3. Produce overall verdict: READY TO RAISE / CONDITIONAL (fix X first) / NOT READY
   (minimum Y months away with specific actions required)
4. Apply LATAM timing context from references/latam-comparable-raises.md
5. Produce scorecard using TEMPLATES.md structure
6. End with Próximos Pasos in priority order

## Step 4: Output Format

ALWAYS use the exact structure in [TEMPLATES.md](TEMPLATES.md). Do not change section
headings, table columns, or field order. Every section is required.

The output is a Fundraising Readiness Scorecard containing:

- **Stage confirmation header** (stage, business model, geography, timeline)
- **5-dimension readiness scorecard table:** Dimension | Status | Your Position | Benchmark | Gap
- **Overall verdict:** READY TO RAISE / CONDITIONAL / NOT READY
- **Time estimate to ready** (if CONDITIONAL or NOT READY): "X–Y months if you execute Z"
- **Comparable raises table** from references/latam-comparable-raises.md
- **LATAM Context box** with labeled US and LATAM benchmarks
- **Próximos Pasos** in priority order

## Step 5: LATAM Context

Read [references/latam-comparable-raises.md](references/latam-comparable-raises.md)
BEFORE producing the final output. Apply these adjustments:

- **Fundraising timeline is longer in LATAM.** Start the process 3 months earlier than US
  equivalents. LATAM investors typically require 2–3 meetings before a term sheet vs US
  fast-close norms.
- **Warm intros are critical.** Cold outreach to LATAM VCs has near-zero conversion.
  The first Próximos Pasos for a READY founder is building warm intro paths, not cold email.
- **Down rounds elevated:** 14.5% of Q4 2025 rounds were down rounds — bridge financing
  is available but dilutive. Plan runway accordingly.
- **Round graduation is difficult:** Only 20.6% of Q2 2024 seed raises closed Series A
  within 6 quarters (US-sourced benchmark, Carta Q1 2026). Plan for bridge rounds.
- **Label all Carta figures:** "(US-sourced benchmark, Carta Q1 2026)"
- **Label all LATAM figures:** "(LATAM, LAVCA 2025)"

## Tone & Editorial Voice

See @shared/frameworks/editorial-voice.md. The audit verdict must be direct.

NOT READY means not ready — do not soften to "almost ready" or "getting close."
If metrics are below benchmark, state which metric is short by exactly how much.
If the narrative is unclear, say it is unclear and explain what is missing.
If team gaps are critical, name the exact missing role.

The founder came here for truth. Give it to them.

## Step 6: Próximos Pasos

Order actions by urgency. Use the header `## Próximos Pasos`.

- **NOT READY verdict:** First action is the specific metric to fix with a target number
  and timeline. Example: "Grow MRR from $12k to $25k. At 15% MoM growth this takes
  4 months. Do not approach investors until you cross $25k MRR."
- **CONDITIONAL verdict:** First action is the highest-priority blocker. Name the specific
  document missing, the specific team role to hire, or the specific metric gap to close.
- **READY verdict:** First action is scheduling the first 5 investor meetings. Provide
  a target list of LATAM funds appropriate for the stage and geography.

Actions must be concrete. "Talk to investors" is not an action. "Schedule intro call with
Magma Partners, ALLVP, and Platanus through [named warm contact]" is an action.

## Sources

- [Readiness Rubric](references/readiness-rubric.md) — stage-by-stage threshold checklist
- [LATAM Comparable Raises](references/latam-comparable-raises.md) — LATAM raise data by stage with sourced benchmarks
- [shared/frameworks/yc-metrics.md](../../../../shared/frameworks/yc-metrics.md) — stage benchmarks by business model
- YC How to Raise: https://www.ycombinator.com/library/4A-how-to-raise-money
- a16z Fundraising: https://a16z.com/how-to-raise-money-startup/
- First Round fundraising signals: https://review.firstround.com/looking-for-signs-of-magic-how-our-partners-think-about-fundraising/
- Carta Q1 2026 (via references/latam-comparable-raises.md)
