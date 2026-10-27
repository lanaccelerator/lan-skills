---
name: fundraising-readiness-audit
description: >
  For STARTUP FOUNDERS deciding WHETHER and WHEN to raise. ALWAYS invoke when a founder asks
  "am I ready to raise?", "should I start fundraising?", "are my metrics good enough for a
  seed/Series A?", "how much should I raise and at what valuation?", or in Spanish "estoy listo
  para levantar?", "cuánto levanto y a qué valuación?", "me alcanzan las métricas para una
  seed?". Scores 5 dimensions (metrics, data room, narrative, team, comparable raises) as
  READY / CONDITIONAL / NOT READY, sizes the round and lists the fixes. NOT for running an
  active raise or building the investor list (use fundraising-agent), building or reviewing a
  deck (use pitch-deck-builder or deck-reviewer), assembling the data room (use
  data-room-builder), a full valuation (use startup-valuation-benchmark) or unit economics
  (use unit-economics-calculator).
categories: ["business", "startups", "venture-capital"]
metadata:
  author: lan-accelerator
  version: "1.2"
  suite: startups
license: MIT
---

# Fundraising Readiness Audit

Decides whether a startup should raise now, at what size and price, and what to fix first.
Output: a 5-dimension scorecard with a verdict per dimension, a round-sizing block, sourced
LATAM context and a prioritized action list.

## Step 1: Input Gathering

If a company brain is connected, read it first (references/shared/company-brain-integration.md
sections 1-3): KPI pages, financials, cap table, deck, data room index, team page. Then ask, in
ONE message, only for what is still missing:

1. **Target stage:** pre-seed / seed / Series A / Series B
2. **Metrics:** MRR or ARR, growth (MoM, and WoW if early), churn, NRR, gross margin, LTV/CAC
3. **Data room:** which of cap table, financial model, demo, customer contracts, legal docs exist
4. **Narrative:** the one line ("we are growing X% per month and want to take the market")
5. **Team:** size, roles, obvious gaps
6. **Geography:** LATAM raise, US raise, or both
7. **Timeline and runway:** when they need the money, months of cash left, monthly burn
8. **AI-native?** If yes: pricing model (seat, usage, outcome) and gross margin after inference

Proceed on answers or on stated assumptions flagged `[ASSUMPTION: ...]`. Never block on a gap.

## Step 2: Score the 5 Dimensions

Read [references/readiness-rubric.md](references/readiness-rubric.md) for the target stage and
references/shared/yc-metrics.md for business-model metrics. For every dimension state: benchmark,
current position, exact gap. No score without evidence.

- **a. Metrics threshold.** Stage floor from the rubric. AI-native companies also pass the
  AI-native checks at the end of the rubric (revenue quality, margin after inference).
- **b. Data room completeness.** Stage-minimum document list in the rubric.
- **c. Narrative clarity.** Problem (quantified), solution, why now, why us, market (bottom-up),
  traction. Apply the one-line test and the 5 validators in
  [references/narrative-and-round-sizing.md](references/narrative-and-round-sizing.md).
  No real X in "growing X% per month" = NOT READY on this dimension.
- **d. Team gaps.** Stage expectations in the rubric. Name the missing role.
- **e. Comparable raises.** Directional stage ranges plus 3-5 live, sourced comparables found
  with web search, per [references/latam-comparable-raises.md](references/latam-comparable-raises.md)
  section 3. If none are verifiable, say so. Never invent a comparable.

## Step 3: Size the Round and Decide

1. **How much:** round = monthly burn x (months to next-round milestones + 6), targeting 18-24
   months of runway. Name the milestones the next investor will ask for.
2. **At what valuation:** post-money = round / 15-25% dilution; pre-money = post - round.
   Run the three sanity checks (comparables, 2-3x step-up for the next round, the lead sets
   the price). Full valuation: hand off to startup-valuation-benchmark.
3. **Verdict rules:**
   - READY TO RAISE: no NOT READY dimension and at most one CONDITIONAL.
   - CONDITIONAL: no more than two dimensions below READY and each fixable in under 90 days.
   - NOT READY: any core metric NOT READY, or three or more dimensions below READY.
4. **Time to ready** (if not READY): "X-Y months if you execute Z", computed from the gap and
   the current growth rate.
5. **Runway check:** if months of cash < expected process length (6-9 months for a LATAM seed,
   see the reference), flag bridge or cost-cut options before anything else.

## Step 4: Output Format

ALWAYS use this exact template structure. Do not change section headings, table columns, or
field order. Fill every [bracketed placeholder] with real analysis from the user's startup.
See [TEMPLATES.md](TEMPLATES.md) for the filled example.

Sections: stage header, 5-dimension table (Dimension | Status | Your Position | Benchmark | Gap),
overall verdict with time to ready, How much / at what valuation block, comparable raises table
(with source URLs), LATAM Context box, Next Steps.

If the scorecard is rendered as a one-pager, PDF or slide for others to see, apply
references/shared/deck-design-rules.md.

## Step 5: LATAM Context

Read [references/latam-comparable-raises.md](references/latam-comparable-raises.md) and apply
only what is relevant:

- **Graduation is hard:** 2% of LATAM seed companies raise a Series A within 1 year, 7% within
  2, about 12% within 3 (LATAM, LAVCA 2025). US median seed to Series A: 1.9 years (US-sourced
  benchmark, Carta, Q4 2025). The seed must fund the whole path to Series A metrics.
- **Capital is concentrating:** USD 4.126B in 681 rounds in 2025, average ticket up 16%;
  Brazil + Mexico = ~73% (LATAM, Cuantico 2026). Outside those two markets, expect fewer
  local leads.
- **Process is long:** plan 6-9 months for a LATAM seed and start with 15+ months of runway
  (directional, LAN operator read). Warm intros dominate.
- **Growth bar:** LAN's read is that top funds now look for about 10% week-over-week at the
  earliest stage; Paul Graham (2012) called 5-7% per week "good" and 10% "exceptional". Label
  it as LAN's read, not a published benchmark.
- Label every figure `(LATAM, <source>)`, `(US-sourced benchmark, <source>)` or
  `(directional)`.

## Tone & Editorial Voice

See references/shared/editorial-voice.md. NOT READY means not ready: never "almost there".
Name the metric short and by how much, the missing document, the missing role.

## Next Steps

Header `## Next Steps`, ordered by urgency, 3-5 items:

- **NOT READY:** first item is the metric to fix, with target number and date. Example: "Grow
  MRR from USD 12K to USD 25K. At 15% MoM that takes 6 months. Do not pitch before crossing it."
- **CONDITIONAL:** first item is the top blocker (document, hire or metric gap).
- **READY:** first item is the first 5 investor meetings via named warm intros; hand off to
  fundraising-agent to build and score the list of 30.

"Talk to investors" is not an action. "Ask [named founder] for an intro to Magma Partners this
week" is.

## Sources

- [Readiness Rubric](references/readiness-rubric.md): stage thresholds, AI-native checks
- [LATAM Comparable Raises](references/latam-comparable-raises.md): sourced market data, live comparables method
- [Narrative and Round Sizing](references/narrative-and-round-sizing.md): LAN masterclass (Oct 2026)
- references/shared/yc-metrics.md: stage benchmarks by business model
- YC, A Guide to Seed Fundraising: https://www.ycombinator.com/library/4A-how-to-raise-money
- LAVCA, 2025 Startup Ecosystem Insights (Aug 2025): https://www.lavca.org/wp-content/uploads/2025/08/LAVCA_Startup-Ecosystem-Insights_2025.pdf
- Cuantico VP, Latin America VC Report 2026: https://reports.cuanticovp.com/latin-america-vc-report-2026/
- Carta, State of Private Markets: 2025 in review (Feb 2026): https://carta.com/data/state-of-private-markets-q4-2025/
- Carta, "Startup dilution per round is not rising" (2025)
- Paul Graham, "Startup = Growth" (2012): https://paulgraham.com/growth.html
