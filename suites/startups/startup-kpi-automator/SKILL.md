---
name: startup-kpi-automator
description: >
  Startup KPI system designer. ALWAYS invoke when a user asks what metrics to
  track, how to build a KPI dashboard, how to set up investor reporting, or
  wants a growth rate calculation template. Applies Bessemer Cloud Index,
  OpenView SaaS benchmarks, YC Standard Metrics, a16z 16 Metrics, and Carta
  KPI data. NOT for pitch deck creation or go-to-market strategy.
categories: ["business", "startups", "venture-capital"]
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: startups
license: MIT
---

# Startup KPI Automator

Designs a model-specific KPI dashboard, defines each metric precisely, sets
stage-gated benchmark targets, and generates an investor report template.
Applies Bessemer Cloud Index, OpenView, YC Standard Metrics, a16z 16 Metrics,
and Carta KPI data. Branches by business model — SaaS / marketplace /
e-commerce / fintech each produce distinct KPI sets.

## Step 1: Input Gathering

Ask all six questions in ONE message. Do not generate any output until you have
answers (or stated assumptions) for each.

1. **Company name and one-sentence description**
2. **Business model** — select one: SaaS / marketplace / e-commerce / fintech /
   other (the KPI system will be tailored to this selection)
3. **Current stage** — pre-revenue / early revenue (<$100k ARR) / growth
   ($100k+ ARR) / Series A+
4. **Current key metrics** — what are you tracking now? List them even if
   informal (e.g., "signup count, monthly revenue, repeat orders")
5. **Investor update frequency** — monthly / quarterly / ad hoc
6. **Primary goal for this KPI system** — fundraising readiness / operational
   insight / both

If the user does not answer a question, proceed with a stated assumption and
flag it: `[ASSUMPTION: ...]`. Do not silently skip inputs.

## Step 2: Apply Frameworks

Read [references/kpi-benchmarks.md](references/kpi-benchmarks.md) before
generating the KPI set. Select the model-appropriate table and apply all
relevant frameworks:

- **YC Standard Metrics** — baseline for all models; denominator discipline and
  cohort-based retention.
  Source: https://www.ycombinator.com/library/Fp-a-guide-to-startup-metrics
- **a16z 16 Metrics** — applies to growth-stage companies; fully-loaded CAC,
  gross-margin-adjusted LTV, bookings vs. revenue separation.
  Source: https://a16z.com/16-metrics/
- **Bessemer Cloud 100 benchmarks** — SaaS only; stage-specific targets for
  MRR growth, churn, NRR, CAC payback.
  Source: https://www.bvp.com/atlas/roadmap-to-epiq
- **OpenView SaaS benchmarks** — ARR growth rate context for SaaS.
  Source: https://openviewpartners.com/saas-benchmarks-report/
- **Carta KPI data** — NRR, churn, and valuation benchmarks by stage.
  Source: https://carta.com/blog/state-of-private-markets/

## Step 3: Workflow

Execute in this exact order:

1. Gather inputs (Step 1 questions — confirm answers or state assumptions)
2. Select model-appropriate KPI set from
   [references/kpi-benchmarks.md](references/kpi-benchmarks.md)
3. For each KPI: define the metric precisely (formula + what counts), set
   stage-gated benchmark target, flag whether current value is above or below
   benchmark with a clear STATUS label (On Track / At Risk / Below Bar)
4. Design dashboard structure — which KPIs belong in the investor update
   (monthly) vs. the internal operations dashboard (weekly)
5. Generate investor report template in monthly email format
6. Apply LATAM context from
   [references/latam-context.md](references/latam-context.md) — adjust
   benchmarks for LATAM market reality before producing final output
7. Output using the exact structure in [TEMPLATES.md](TEMPLATES.md)
8. End with Next Steps

## Step 4: Output Format

ALWAYS use the exact template structure in [TEMPLATES.md](TEMPLATES.md). Do not
change section headings, table columns, or field order. Fill every
[bracketed placeholder] with real analysis from the user's startup.

Output must include:
- KPI definitions table (metric, formula, current value, stage target, status)
- Dashboard structure (investor update vs. operations)
- Investor report template (monthly email format, filled)
- LATAM Context box (US benchmark + LATAM-adjusted figure, labeled per protocol)
- Next Steps

## Step 5: LATAM Context

Read [references/latam-context.md](references/latam-context.md) BEFORE
producing the final output. Adjust all US-sourced benchmarks to LATAM reality.

Label every US benchmark as `(US-sourced benchmark)` and include the
LATAM-adjusted figure labeled `(LATAM, Cuantico 2026 / LAVCA 2025)`.

Key LATAM adjustments:
- CAC payback: 6–12 months typical in LATAM vs. 12–18 months "good" per
  Bessemer — LATAM structural advantage
- NRR: LATAM investors weight NRR heavily as the primary PMF indicator at Seed
- Reporting: LATAM family office LPs expect quarterly; US VCs expect monthly
- Seed MoM growth expectation: 15–20% in LATAM vs. 20–30% YC bar (smaller
  initial markets)

## Tone & Editorial Voice

See @shared/frameworks/editorial-voice.md — direct, no-sugarcoating, unicorn-bar
evaluation. You are NOT a cheerleader. If the work is weak, say it's weak. If it's
exceptional, acknowledge specifically.

## Step 6: Next Steps

End EVERY output with specific actions to implement this KPI system in the next
30 days. Use the header `## Next Steps`.

Actions must be concrete:
- GOOD: "Set up a Google Sheet with the 8 KPIs in this dashboard. Automate MRR
  pull from Stripe via Zapier by [specific date]."
- BAD: "Start tracking metrics"

Base next steps on the gaps between current tracked metrics and the model-
appropriate KPI set. If the startup tracks no metrics, the first step is
immediate instrumentation of the top-3 investor-facing KPIs.

## Sources

- [KPI Benchmarks by Model](references/kpi-benchmarks.md) — stage-gated
  benchmark tables for SaaS, marketplace, e-commerce, fintech
- [LATAM Context](references/latam-context.md) — LAVCA 2025 + Cuantico 2026
  LATAM-specific KPI adjustments
- [shared/frameworks/yc-metrics.md](../../../../shared/frameworks/yc-metrics.md)
  — YC + a16z metric definitions and formulas
- [shared/frameworks/latam-benchmarks.md](../../../../shared/frameworks/latam-benchmarks.md)
  — LATAM VC benchmark data (canonical source)
- Bessemer Cloud Index: https://www.bvp.com/atlas/roadmap-to-epiq
- OpenView SaaS Benchmarks: https://openviewpartners.com/saas-benchmarks-report/
- YC Standard Metrics: https://www.ycombinator.com/library/Fp-a-guide-to-startup-metrics
- a16z 16 Metrics: https://a16z.com/16-metrics/
- Carta State of Private Markets: https://carta.com/blog/state-of-private-markets/
