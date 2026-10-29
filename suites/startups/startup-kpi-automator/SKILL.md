---
name: startup-kpi-automator
description: >
  Use when a founder wants to build and automate the KPI dashboard: define each metric's
  formula by business model, wire the data sources (Stripe, CRM, database, bank), set
  stage-gated targets and alerts, and split the weekly operating board from the monthly
  investor KPI block ("armame el dashboard de KPIs", "qué métricas trackeo y de dónde
  salen", "automatizar el reporte de métricas", "tablero semanal para el equipo",
  "calculá mi tasa de crecimiento semanal"). Covers SaaS, marketplace, e-commerce, fintech
  and AI-native products. NOT for choosing the North Star and quarterly OKRs (use
  startup-metrics-okrs), deep CAC/LTV math (use unit-economics-calculator), writing the
  investor update itself (use investor-update-compiler), the investor-facing dashboard page
  (use investor-dashboard) or pitch decks (use pitch-deck-builder).
categories: ["business", "startups", "venture-capital"]
metadata:
  author: lan-accelerator
  version: "1.1"
  suite: startups
license: MIT
---

# Startup KPI Automator

Designs a model-specific KPI dashboard, defines each metric precisely, maps every KPI
to its data source and refresh cadence, sets stage-gated targets, and produces the
monthly investor KPI block. Branches by business model: SaaS, marketplace, e-commerce,
fintech, with AI-native additions when inference is a material cost.

Boundary: startup-metrics-okrs decides WHAT matters (North Star, 3-5 KPIs, OKRs); this
skill builds HOW it gets measured, automated and reported. If the founder has no North
Star yet, run `/startup-metrics-okrs` first or define a provisional one in Step 3.

## Step 1: Input Gathering

Ask all questions in ONE message. Do not generate any output until you have
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
7. **Data sources and tools:** billing (Stripe, Mercado Pago, local processor), CRM,
   product database or analytics, bank, spreadsheet or BI tool in use
8. **AI-native?** Does the product run models whose inference cost scales with usage?

If the user does not answer a question, proceed with a stated assumption and
flag it: `[ASSUMPTION: ...]`. Do not silently skip inputs.

If a company brain (LAN Brain or another MCP-connected knowledge base) is connected, read
current metrics, OKRs and past investor updates from it first and ask only for gaps.

## Step 2: Apply Frameworks

Read [references/kpi-benchmarks.md](references/kpi-benchmarks.md) before
generating the KPI set. Select the model-appropriate table and apply all
relevant frameworks:

- **YC Standard Metrics** — baseline for all models; denominator discipline and
  cohort-based retention.
  Source: https://www.ycombinator.com/library/Fp-a-guide-to-startup-metrics
- **a16z 16 Metrics** — applies to growth-stage companies; fully-loaded CAC,
  gross-margin-adjusted LTV, bookings vs. revenue separation.
  Source: https://a16z.com/16-startup-metrics/
- **Bessemer, Scaling to $100 Million (2021):** SaaS only; growth, net retention and
  gross margin by ARR scale.
  Source: https://www.bvp.com/atlas/scaling-to-100-million
- **High Alpha and Growth Unhinged, 2025 SaaS Benchmarks Report** (12 Nov 2025, 800+
  companies): growth by ARR band, AI-native vs other SaaS. Replaces OpenView, now offline.
  Source: https://www.highalpha.com/saas-benchmarks
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
4. Map each KPI to its data source, owner and refresh cadence; prefer automatic pulls
   (billing API, CRM export, database query) over manual entry, and name the tool
   (Google Sheets + connector, Looker Studio, Metabase, or an HTML board built with an AI
   coding agent). Set an alert threshold for each red-line KPI
5. Design dashboard structure: internal operations board (weekly; growth measured
   week over week) vs. investor KPI block (monthly, 5-7 metrics). Visual boards (HTML,
   PDF, slides) follow references/shared/deck-design-rules.md: one message per chart,
   the key series in the accent color, no decoration
6. Generate the investor KPI block in monthly email format; for the full narrative
   update hand off to `/investor-update-compiler`
7. Apply LATAM context from
   [references/latam-context.md](references/latam-context.md) — adjust
   benchmarks for LATAM market reality before producing final output
8. Output using the exact structure in [TEMPLATES.md](TEMPLATES.md)
9. End with Next Steps

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

Label every US benchmark `(US-sourced benchmark)` with source and date. No public LATAM
report publishes KPI benchmarks, so LATAM ranges are `(LATAM, directional)`; never
attribute them to Cuantico or LAVCA.

Key adjustments:
- Growth: Paul Graham's YC bar is 5-7% per week (2012); for AI-native startups top funds
  expect close to 10% per week (LAN's read). Single-country LATAM B2B SaaS: 10%+ MoM is
  the floor that needs no explanation at seed (directional)
- CAC payback: under 12 months on gross margin reads as strong; lower LATAM sales
  salaries help until the company hires US sellers
- NRR: above 100% is a strong seed signal for SMB-heavy LATAM SaaS (directional)
- AI-native: add gross margin after inference, inference cost per unit of work, task
  success rate and revenue per employee (references/latam-context.md)

## Tone & Editorial Voice

See references/shared/editorial-voice.md: direct, no-sugarcoating, unicorn-bar
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
- [LATAM Context](references/latam-context.md): LATAM and AI-native KPI adjustments,
  verified capital-market facts
- [yc-metrics.md](references/shared/yc-metrics.md)
  — YC + a16z metric definitions and formulas
- [latam-benchmarks.md](references/shared/latam-benchmarks.md)
  — LATAM VC benchmark data (canonical source)
- Bessemer, Scaling to $100 Million (2021): https://www.bvp.com/atlas/scaling-to-100-million
- Paul Graham, Startup = Growth (2012): https://paulgraham.com/growth.html
- High Alpha and Growth Unhinged, 2025 SaaS Benchmarks Report (12 Nov 2025, 800+ companies; replaces the offline OpenView benchmarks): https://www.highalpha.com/saas-benchmarks
- YC Standard Metrics: https://www.ycombinator.com/library/Fp-a-guide-to-startup-metrics
- a16z 16 Metrics: https://a16z.com/16-startup-metrics/
- Carta State of Private Markets: https://carta.com/blog/state-of-private-markets/
