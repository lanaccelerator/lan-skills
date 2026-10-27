---
name: unit-economics-calculator
description: >
  For STARTUP FOUNDERS. Unit economics calculation and analysis.
  ALWAYS invoke when a user asks to calculate CAC, LTV, LTV/CAC,
  CAC payback period, contribution margin, or break-even point, or
  when they ask "are my unit economics good?" or "do I have healthy
  margins?". NOT for building financial models or revenue projections
  (use pitch-deck-builder for deck financials).
categories: ["business", "startups", "venture-capital"]
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: startups
license: MIT
---

# Unit Economics Calculator

Calculates CAC, LTV, LTV/CAC, CAC payback, contribution margin, and break-even
for SaaS, marketplace, transactional, and fintech business models. Enforces
gross-margin-adjusted LTV — the most commonly miscalculated metric in LATAM
startup fundraising. Benchmarks results against David Skok + OpenView standards
and annotates LATAM-specific advantages and adjustments.

## Step 1: Input Gathering

Ask ALL questions in ONE message. Do not calculate until you have answers
(or stated assumptions) for each. Branching is mandatory — wrong formula set
for a marketplace applied to a SaaS produces meaningless results.

**First, confirm business model:**

- **SaaS** — subscription revenue, recurring contracts
- **Marketplace** — GMV × take rate model, two-sided platform
- **Transactional / E-commerce** — AOV × repeat purchase model
- **Fintech** — TPV × net take rate, possible lending component

**Then ask ALL model-specific inputs in one message:**

For **SaaS**:
1. MRR (Monthly Recurring Revenue, in USD)
2. Number of active customers
3. Average Revenue Per Account per month (ARPA/mo)
4. Monthly churn rate (% of customers who cancel per month)
5. Gross margin % (revenue minus COGS, including hosting, support, infra)
6. Total Sales & Marketing spend last month (fully loaded: salaries + ad spend + tools)
7. New customers acquired last month
8. Stage: idea / pre-revenue / early revenue / growth

For **Marketplace**:
1. Gross Merchandise Value (GMV) last month
2. Take rate (% of GMV captured as net revenue)
3. Number of active buyers and sellers
4. Buyer CAC and Seller CAC (or total S&M spend + split logic)
5. Repeat buyer rate (% of buyers who transact again within 30 days)
6. Gross margin on net revenue %

For **Transactional / E-commerce**:
1. Average Order Value (AOV)
2. Repeat purchase rate (% of customers buying again within 12 months)
3. COGS % of AOV (variable costs: product, shipping, payment processing)
4. Total S&M spend last month
5. New customers acquired last month
6. Monthly active customer count

For **Fintech**:
1. Total Payment Volume (TPV) last month
2. Net revenue margin % on TPV (after interchange, processing, and banking costs)
3. Monthly active users
4. Monthly churn of active users %
5. Default rate % (if lending product)
6. Total S&M spend last month
7. New users acquired last month

**If a data point is missing:** Proceed with a stated assumption and flag it as
`[ASSUMPTION: ...]`. Never silently skip inputs or calculate with unstated assumptions.

## Step 2: Apply Frameworks

Read [references/unit-economics-formulas.md](references/unit-economics-formulas.md)
BEFORE calculating. Apply David Skok SaaS Metrics 2.0 definitions throughout:

**Core formulas (SaaS base case):**

- **CAC** = Total S&M spend in period ÷ New customers acquired in same period
  - Include fully-loaded S&M: salaries, ad spend, tools, allocated overhead
  - Use same period for both inputs (not blended or trailing average)
- **LTV** = ARPA × Gross Margin % ÷ Monthly Churn Rate
  - **CRITICAL: gross-margin-adjusted — NOT revenue × lifetime months**
  - Alternative form: (Gross profit per customer per month) ÷ Monthly Churn Rate
- **LTV/CAC Ratio** — floor is 3:1 at Series A; top-quartile LATAM SaaS hits 5:1
- **CAC Payback** = CAC ÷ (ARPA × Gross Margin %) — result in months
- **Contribution Margin** = Revenue − COGS − Variable Costs (per unit or per period)
- **Break-even** = Fixed Costs ÷ Contribution Margin % (in revenue terms)

**CRITICAL anti-pattern — call it out explicitly:**

If the user provides LTV = ARPA × lifetime months (revenue-based, not gross-margin-adjusted),
flag it as the most common unit economics error:

> [RED FLAG] Revenue-based LTV detected. This overstates LTV by 20–60% and is
> the #1 calculation error VCs see in LATAM pitches. Correcting to gross-margin-adjusted:
> LTV = ARPA × Gross Margin % ÷ Monthly Churn Rate = [recalculated value]

## Step 3: Workflow

Execute in this exact order:

1. Confirm business model — branch to correct formula set in references/unit-economics-formulas.md
2. Ask for all inputs in one message (use Step 1 questions for the confirmed model)
3. Read [references/unit-economics-formulas.md](references/unit-economics-formulas.md) for model-specific formula variants
4. Calculate all applicable metrics: CAC, LTV, LTV/CAC, CAC Payback, Contribution Margin, Break-even
5. Compare against stage benchmarks — read [yc-metrics.md](references/shared/yc-metrics.md) for thresholds
6. Flag each metric below threshold as `[BELOW BENCHMARK]` with the specific target and gap
7. Read [references/latam-context.md](references/latam-context.md) and apply LATAM annotations before producing final output
8. Produce output using the exact structure in [TEMPLATES.md](TEMPLATES.md)
9. End with Next Steps addressing the lowest-performing metric first

## Step 4: Output Format

ALWAYS use the exact structure in [TEMPLATES.md](TEMPLATES.md). Do not change section
headings, table columns, or field order. The output contains:

- **Business model confirmation** — header with model type and stage
- **Unit Economics Dashboard** — table: Metric | Your Number | Benchmark | Source | Status
- **Red Flags section** — explicit `[RED FLAG]` callouts for every metric below benchmark;
  if LTV calculation error detected, lead with this
- **LATAM Context box** — US benchmark labeled `(US-sourced benchmark)` + LATAM figure
  labeled `(LATAM, Cuantico 2026)` or `(LATAM, LAVCA 2025)`
- **Interpretation paragraph** — tell the founder what the numbers mean for fundraising
  readiness; do not just restate the numbers
- **Next Steps** — 3–5 concrete actions targeting the weakest metric first

## Step 5: LATAM Context

Read [references/latam-context.md](references/latam-context.md) BEFORE producing final output.

Key LATAM annotations to apply every time:

- **CAC payback LATAM advantage:** LATAM B2B SaaS recovers CAC in 6–12 months vs
  12–18 months US median. Lower S&M costs (engineering talent, SDR salaries) are a
  structural advantage. Label: `(LATAM, Cuantico 2026)`
- **Gross margin:** SaaS margins similar to US (70–80%) when cloud-native; fintech margins
  compressed 15–30% vs US due to local banking API costs (PIX, SPEI, OXXO integrations)
- **Monthly churn:** LATAM early SaaS churn 3–7% is within range at Seed, but must trend
  toward ≤2% before Series A comparable to US enterprise benchmarks
- **Pricing context:** LATAM SaaS is chronically underpriced — if unit economics look healthy,
  flag that a 20–30% price increase is often the fastest LTV lever before raising

Label every US benchmark: `(US-sourced benchmark, [source])`. Label every LATAM figure:
`(LATAM, Cuantico 2026)` or `(LATAM, LAVCA 2025)`.

## Tone & Editorial Voice

See references/shared/editorial-voice.md — direct, no-sugarcoating, unicorn-bar
evaluation. If unit economics are broken, say so directly:

- BAD LTV/CAC: "Your current unit economics do not support a venture-scale business. At
  0.8:1 LTV/CAC you are destroying value with every customer acquired. At this ratio you
  lose money the more you scale — the opposite of what a VC is investing in."
- GOOD LTV/CAC: "12:1 LTV/CAC is exceptional — top decile for LATAM SaaS at any stage.
  This number will open Series A doors. The question is whether you can maintain it as you
  scale S&M spend."

Do not use phrases like "Great start!", "Looks promising", or "With some work...". These
waste the founder's time and protect no one.

## Step 6: Next Steps

End EVERY analysis with 3–5 specific next actions based on which metric is worst.
Use the header `## Next Steps`. Actions must be concrete and model-specific.

Examples:
- GOOD: "Increase gross margin from 42% to 65%+ by moving from direct customer support to
  self-serve onboarding for your entry tier. Target: 6-month timeline. Run a pricing test
  at 20% higher price point first — LATAM SaaS is chronically underpriced."
- BAD: "Improve your unit economics"

Base actions on the lowest-performing metric. If LTV/CAC is below 1:1, address CAC
reduction and gross margin expansion before any other recommendation.

## Sources

- David Skok SaaS Metrics 2.0: https://www.forentrepreneurs.com/saas-metrics-2/
- OpenView SaaS Benchmarks: https://openviewpartners.com/saas-benchmarks-report/
- Bessemer BVP Roadmap to Epiq: https://www.bvp.com/atlas/roadmap-to-epiq
- [references/unit-economics-formulas.md](references/unit-economics-formulas.md) — formulas by model
- [references/latam-context.md](references/latam-context.md) — LATAM benchmarks
- [yc-metrics.md](references/shared/yc-metrics.md) — stage thresholds
