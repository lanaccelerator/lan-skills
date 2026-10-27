---
name: unit-economics-calculator
description: >
  Use when a founder asks to calculate or check CAC, LTV, LTV/CAC, CAC payback, contribution
  margin, gross margin or break-even, or asks "are my unit economics good?" ("calculame el
  CAC y el LTV", "en cuántos meses recupero el CAC", "mis números unitarios cierran?",
  "cuál es mi margen de contribución", "cuánto me cuesta la inferencia por cliente"). Branches
  by model (SaaS, marketplace, e-commerce, fintech, AI-native with inference in COGS),
  enforces gross-margin-adjusted LTV, benchmarks by stage and flags red metrics. NOT for
  setting prices or tiers (use pricing-strategy-designer), valuation or the round ask (use
  startup-valuation-benchmark), building the KPI dashboard or reporting cadence (use
  startup-kpi-automator) or choosing North Star and OKRs (use startup-metrics-okrs).
categories: ["business", "startups", "venture-capital"]
metadata:
  author: lan-accelerator
  version: "1.1"
  suite: startups
license: MIT
---

# Unit Economics Calculator

Calculates CAC, LTV, LTV/CAC, CAC payback, contribution margin, and break-even
for SaaS, marketplace, transactional, and fintech business models. Enforces
gross-margin-adjusted LTV — the most commonly miscalculated metric in LATAM
startup fundraising. Benchmarks results against David Skok SaaS Metrics 2.0 and current
SaaS benchmark reports, and annotates LATAM and AI-native adjustments.

## Step 1: Input Gathering

Ask ALL questions in ONE message. Do not calculate until you have answers
(or stated assumptions) for each. Branching is mandatory — wrong formula set
for a marketplace applied to a SaaS produces meaningless results.

**First, confirm business model:**

- **SaaS** — subscription revenue, recurring contracts
- **Marketplace** — GMV × take rate model, two-sided platform
- **Transactional / E-commerce** — AOV × repeat purchase model
- **Fintech** — TPV × net take rate, possible lending component
- **AI-native:** any of the above where model inference is a material variable cost
  (agents, copilots, AI services). Use the base model's inputs plus the AI inputs below.

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

For **AI-native** (add to the base model's inputs):
1. Inference and third-party AI API cost last month (USD)
2. Units of work last month (tasks, conversations, agent runs) and active customers
3. Cost per unit for the 90th-percentile customer, if known

**Company context:** if a company brain (LAN Brain or another MCP-connected knowledge base)
or a finance export is available, pull S&M spend, customer counts and COGS from it first
and ask only for what is missing.

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
- **LTV/CAC Ratio:** floor is 3:1 at Series A (David Skok); ≥5:1 reads as strong and
  often signals underpricing
- **CAC Payback** = CAC ÷ (ARPA × Gross Margin %) — result in months
- **Contribution Margin** = Revenue − COGS − Variable Costs (per unit or per period)
- **Break-even** = Fixed Costs ÷ Contribution Margin % (in revenue terms)
- **AI-native gross margin** = (Revenue − hosting − inference − AI APIs − human review)
  ÷ Revenue. Inference is COGS, never R&D. Also compute it for the 90th-percentile user

**CRITICAL anti-pattern — call it out explicitly:**

If the user provides LTV = ARPA × lifetime months (revenue-based, not gross-margin-adjusted),
flag it as the most common unit economics error:

> [RED FLAG] Revenue-based LTV detected. This overstates LTV by a factor of 1 ÷ gross
> margin (25–67% too high at 60–80% gross margin) and is the most common calculation error
> in seed pitches. Correcting to gross-margin-adjusted:
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
- **LATAM Context box:** US benchmark labeled `(US-sourced benchmark)` + LATAM range
  labeled `(LATAM, directional)`
- **Interpretation paragraph** — tell the founder what the numbers mean for fundraising
  readiness; do not just restate the numbers
- **Next Steps** — 3–5 concrete actions targeting the weakest metric first

## Step 5: LATAM Context

Read [references/latam-context.md](references/latam-context.md) BEFORE producing final output.

Key annotations to apply every time:

- **No published LATAM unit-economics benchmark exists.** Cuantico and LAVCA report
  capital flows, not CAC, churn or margins. Every LATAM range is `(LATAM, directional)`;
  never attribute one to a report that does not contain it.
- **CAC payback:** under 12 months on gross margin reads as strong at seed. Lower LATAM
  sales salaries help, until the company hires US sellers or sells to US customers.
- **Gross margin:** cloud-native SaaS 70-80%; fintech below US peers (local rails and
  banking API fees in COGS); AI-native lower still (ICONIQ, Jan 2026: AI product gross
  margin averaging ~41% in 2024, projected ~52% in 2026).
- **Monthly churn:** 3-7% is tolerated at seed only with a path to ≤2% before Series A.
- **Pricing:** LTV/CAC above 5:1 or payback under 6 months usually means underpricing;
  recommend a price test before raising.

Label every US benchmark `(US-sourced benchmark, [source, date])` and every LATAM range
`(LATAM, directional)`.

## Tone & Editorial Voice

See references/shared/editorial-voice.md: direct, no-sugarcoating, unicorn-bar
evaluation. If unit economics are broken, say so directly:

- BAD LTV/CAC: "Your current unit economics do not support a venture-scale business. At
  0.8:1 LTV/CAC you are destroying value with every customer acquired. At this ratio you
  lose money the more you scale — the opposite of what a VC is investing in."
- GOOD LTV/CAC: "12:1 LTV/CAC is exceptional, four times the 3:1 floor.
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

Close with the right handoff: `/pricing-strategy-designer` when the fix is price or
packaging, `/startup-kpi-automator` to track these metrics monthly, and
`/pitch-deck-builder` when the numbers go on the business model slide.

If the founder wants the dashboard as a visual (HTML/PDF one-pager, slide), follow
references/shared/deck-design-rules.md.

## Sources

- David Skok SaaS Metrics 2.0: https://www.forentrepreneurs.com/saas-metrics-2/
- High Alpha and Growth Unhinged, 2025 SaaS Benchmarks Report (12 Nov 2025, 800+ companies; replaces the offline OpenView benchmarks): https://www.highalpha.com/saas-benchmarks
- Bessemer, Scaling to $100 Million (21 Sep 2021): https://www.bvp.com/atlas/scaling-to-100-million
- ICONIQ State of AI bi-annual snapshot (Jan 2026), via SaaStr (28 Jan 2026): https://saastr.com/inference-costs-average-23-of-revenue-at-ai-b2b-companies-how-will-you-pay-for-it
- [references/unit-economics-formulas.md](references/unit-economics-formulas.md) — formulas by model
- [references/latam-context.md](references/latam-context.md) — LATAM benchmarks
- [yc-metrics.md](references/shared/yc-metrics.md) — stage thresholds
