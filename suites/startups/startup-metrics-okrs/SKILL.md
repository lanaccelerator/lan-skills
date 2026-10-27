---
name: startup-metrics-okrs
description: >
  Use when a founder needs to decide what to measure and what to aim for: define or audit
  the North Star Metric, pick 3-5 stage-appropriate KPIs and write 1-3 quarterly OKRs with
  Key Results scoreable 0.0-1.0, all aligned in one run ("cuál es mi North Star", "armame
  los OKRs del trimestre", "qué KPIs importan en mi etapa", "cerrar el scoring de OKRs",
  "mis métricas están alineadas?"). Applies Doerr and Grove OKR rules, the Sean Ellis PMF
  test and stage benchmarks, including AI-native metrics. NOT for building and automating
  the dashboard or data pipeline (use startup-kpi-automator), computing CAC/LTV/payback (use
  unit-economics-calculator), auditing readiness to raise (use fundraising-readiness-audit)
  or writing the investor update (use investor-update-compiler).
categories: ["startups", "planning", "kpis", "okrs"]
metadata:
  author: lan-accelerator
  version: "1.1"
  suite: startups
  complements: [startup-kpi-automator, unit-economics-calculator, fundraising-readiness-audit, investor-update-compiler]
license: MIT
---

# Startup Metrics & OKRs

One aligned measurement system: North Star Metric (NSM) + 3-5 KPIs + 1-3 quarterly OKRs.
This skill decides WHAT matters. `/startup-kpi-automator` then builds HOW it is measured and
automated.

Write the output in the founder's language (Spanish by default for LATAM founders).

## Step 1: Input Gathering

Ask ALL questions in ONE message. If a company brain (LAN Brain or another MCP-connected
knowledge base) is connected, read current metrics, last quarter's OKRs and strategy notes
from it first and ask only for gaps.

1. **Business model:** one line (e.g., "B2B SaaS for Paraguayan SMBs", "AI agent that
   handles collections calls")
2. **Stage:** pre-revenue / early post-revenue (under $1M ARR) / post-PMF ($1M+ ARR)
3. **Current numbers:** MRR, paying customers, growth rate (weekly if known), churn
4. **Biggest risk this quarter:** one line
5. **Biggest opportunity this quarter:** one line
6. **KPIs already tracked:** list, even if informal
7. **Last quarter's OKRs and scores**, if any

Missing answers: proceed with a stated assumption flagged `[ASSUMPTION: ...]`. Never block.

## Step 2: Workflow

Execute in this order.

### 2.1 Segment by stage

| Stage | Focus | Metrics that matter |
|---|---|---|
| Pre-revenue | Validation | Discovery interviews, Sean Ellis test, landing conversion, first paying customer |
| Early post-revenue (under $1M ARR) | Growth + retention | Weekly growth, logo churn, cohort retention, CAC by channel |
| Post-PMF ($1M+ ARR) | Efficiency + scale | NRR, CAC payback, burn multiple, LTV:CAC, gross margin |

Reject premature metrics: LTV:CAC in pre-revenue is fiction. Say so and replace it.

### 2.2 Define the North Star Metric

Pass all three tests or it is not an NSM:
1. If it drops 15% in a week, does the whole company investigate? If only one team would
   notice, it is a departmental KPI.
2. Does it capture customer value AND business value? Revenue alone fails.
3. Is it durable for 12+ months? If it changes next quarter, it is a One Metric That
   Matters (OMTM), not an NSM.

Illustrative NSMs by model (patterns, not company-disclosed metrics):
- Payments / neobank: monthly transactions per active customer
- Marketplace: completed orders per active seller
- Delivery, early stage: orders in a new user's first 20 days
- B2B SaaS: active accounts completing the core workflow each month
- AI agent / AI service: tasks completed and accepted without human fix per week
  (outcome, not seats or logins)

### 2.3 Pick 3-5 KPIs

Rules: observable at least weekly; mix leading (predictive) and lagging (outcome); each
with a benchmark from [references/benchmarks.md](references/benchmarks.md) carrying its
source, or marked directional. Measure growth week over week: Paul Graham's YC bar is
5-7% per week; for AI-native startups top funds expect close to 10% per week (LAN's read).

### 2.4 Cross-check NSM and KPIs

Each KPI is an input that moves the NSM or an output that reflects it. A KPI that connects
to neither gets removed or replaced. Show the mapping.

### 2.5 Write 1-3 quarterly Objectives

Doerr's rules: 3-5 OKRs maximum (1-3 for a startup), quarterly, qualitative and one line,
decoupled from bonus, public to the company. Test each:
- Trajectory change, not monitoring. "Maintain X" is a KPI, not an Objective.
- Fits on one line.

### 2.6 Write 3-5 Key Results per Objective

Quantitative, scoreable 0.0-1.0, mix of inputs and outputs; if all KRs hit, the Objective
is achieved. Rewrite any KR that fails a test:
- **Ambition:** if 1.0 is easy, it is not ambitious.
- **Task:** "launch X" or "hire Y" is a task. Rewrite as outcome: "X used by N users".
- **Internal jargon:** "ship Foo 4.1" becomes the customer impact it produces.
- **Control:** "close the seed round" is not controllable in a quarter; use the inputs
  (qualified investor conversations, lead in diligence).

### 2.7 Score

Google scale: 0.7-1.0 delivered (green), 0.4-0.6 progress (yellow), 0.0-0.3 missed (red).
A team that always scores 1.0 is sandbagging: raise the bar next quarter.

### 2.8 Produce the output

Use the exact structure in [TEMPLATES.md](TEMPLATES.md): NSM with operational definition,
KPI table (KPI | Current | Target | Benchmark | Cadence | Owner), NSM/KPI mapping, OKR
tables (KR | Target | Current | Score), anti-patterns detected and removed, cadence, next
steps. Markdown tables, ready to paste into Notion or Sheets. If the founder wants it as a
visual one-pager or slide, follow references/shared/deck-design-rules.md.

## Anti-patterns this skill rejects

- LTV in pre-revenue
- More than 5 OKRs per quarter
- KRs phrased as to-dos instead of outcomes
- A North Star that only reflects revenue
- KPIs without a benchmark or a stated "directional" label
- Lagging KPIs without a leading KPI that predicts them
- AI products measured by seats or logins instead of completed, accepted work

## Tone & Editorial Voice

See references/shared/editorial-voice.md. Name each anti-pattern and the rewrite. If the
growth rate is below the bar, say so with the number.

## Next Steps

End with 3 concrete actions under `## Next Steps`, then the handoff:
- `/startup-kpi-automator` to wire the KPIs to their data sources and build the weekly board
- `/unit-economics-calculator` if CAC payback or LTV:CAC is a KPI and has not been computed
- `/investor-update-compiler` to report the quarter's scores to investors

## Sources

- Doerr, J. (2018). *Measure What Matters*. Portfolio/Penguin.
- Grove, A. (1983). *High Output Management*. Origin of OKRs at Intel.
- Sean Ellis PMF survey: 40%+ "very disappointed" as the PMF threshold.
- Paul Graham, "Startup = Growth" (Sep 2012): https://paulgraham.com/growth.html
- [Benchmarks](references/benchmarks.md): every KPI benchmark with source and date
