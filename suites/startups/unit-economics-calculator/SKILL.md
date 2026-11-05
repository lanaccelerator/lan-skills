---
name: unit-economics-calculator
description: >
  Use when a founder asks to calculate or check CAC, LTV, LTV/CAC, CAC payback, contribution
  margin, gross margin or break-even, or asks "are my unit economics good?" ("calculame el
  CAC y el LTV", "en cuántos meses recupero el CAC", "mis números unitarios cierran?",
  "cómo cuento el setup fee", "qué margen me deja cobrar por resultado"). Branches by model
  (SaaS, marketplace, e-commerce, fintech, AI-native with inference in COGS), enforces
  gross-margin-adjusted LTV, separates setup fees from MRR and ARR (payback with and without
  setup), models outcome and % of savings fees in a conservative and base case, adds
  expansion math (1.2 x 1.2 x 1.2 = +73%) and flags red metrics. NOT for setting prices or
  plans (use pricing-strategy-designer), running upsells and renewals (use
  customer-retention-expansion), valuation (use startup-valuation-benchmark), the KPI
  dashboard (use startup-kpi-automator) or North Star and OKRs (use startup-metrics-okrs).
categories: ["business", "startups", "venture-capital"]
metadata:
  author: lan-accelerator
  version: "1.2"
  suite: startups
  complements: [pricing-strategy-designer, customer-retention-expansion, startup-kpi-automator]
license: MIT
---

# Unit Economics Calculator

Calculates CAC, LTV, LTV/CAC, CAC payback, contribution margin and break-even for SaaS,
marketplace, transactional, fintech and AI-native models. Enforces gross-margin-adjusted
LTV (David Skok, SaaS Metrics 2.0), the most commonly miscalculated metric in LATAM
fundraising. Handles mixed billing (setup fee + recurring base + usage + outcome or % of
savings): setup is one-time revenue reported apart, outcome fees are modeled in a
conservative and base case, and expansion is compounded correctly. Benchmarks against
Skok, Bessemer and current SaaS benchmark reports, with LATAM and AI-native annotations.

## Step 1: Input Gathering

Read the company brain or finance export first (references/shared/company-brain-integration.md,
sections 1-3): S&M spend, customer counts, invoices by component, COGS, current price list.
Then ask ALL missing inputs in ONE message. Branching is mandatory: a marketplace formula
applied to a SaaS produces meaningless results.

**First, confirm business model:**

- **SaaS:** subscription revenue, recurring contracts
- **Marketplace:** GMV x take rate, two-sided platform
- **Transactional / E-commerce:** AOV x repeat purchase
- **Fintech:** TPV x net take rate, possible lending component
- **AI-native:** any of the above where inference is a material variable cost (agents,
  copilots, AI services). Use the base model's inputs plus the AI inputs below.

**Then ask the model-specific inputs:**

For **SaaS**:
1. MRR (USD), split by component if billing is mixed (see below)
2. Number of active customers (exclude pilots still running; count them apart)
3. ARPA per month
4. Monthly churn rate (% of customers who cancel per month)
5. Gross margin % (revenue minus COGS: hosting, support, infra, third-party APIs)
6. Total S&M spend last period, fully loaded (salaries + ads + events + tools)
7. New customers acquired in the same period
8. Stage: idea / pre-revenue / early revenue / growth

For **Marketplace**:
1. GMV last month
2. Take rate (% of GMV captured as net revenue)
3. Active buyers and sellers
4. Buyer CAC and Seller CAC (or total S&M spend + split logic)
5. Repeat buyer rate (% of buyers who transact again within 30 days)
6. Gross margin on net revenue %

For **Transactional / E-commerce**:
1. AOV
2. Repeat purchase rate (% buying again within 12 months)
3. COGS % of AOV (product, shipping, payment processing)
4. Total S&M spend last month
5. New customers acquired last month
6. Monthly active customers

For **Fintech**:
1. TPV last month
2. Net revenue margin % on TPV (after interchange, processing, banking costs)
3. Monthly active users
4. Monthly churn of active users %
5. Default rate % (lending only)
6. Total S&M spend last month
7. New users acquired last month

For **AI-native** (add to the base model's inputs):
1. Inference and third-party AI API cost last month (USD)
2. Units of work last month (tasks, conversations, agent runs) and active customers
3. Cost per unit for the 90th-percentile customer, if known

For **mixed billing** (add when the price list has more than a subscription):
1. Setup fee per new customer (list price and what was actually invoiced and collected)
2. Onboarding cost per new customer (hours x loaded cost, plus third-party costs)
3. Recurring base, usage and outcome revenue, each as a trailing 3-month average
4. Outcome fee terms: % or share, baseline, cap, floor, billing timing
5. Outcome cost: measurement, reconciliation, extra review, legal work; % disputed
6. Expansion: MRR added by existing customers per month (upgrades, more units)

If a data point is missing, proceed and mark it `[ASSUMPTION: ...]`. Never calculate with
unstated assumptions.

## Step 2: Apply Frameworks

Read [references/unit-economics-formulas.md](references/unit-economics-formulas.md)
BEFORE calculating. Apply David Skok SaaS Metrics 2.0 definitions throughout.

**Core formulas (SaaS base case):**

- **CAC** = Total S&M spend in period / New customers acquired in the same period.
  Fully loaded; same period for both inputs.
- **LTV** = ARPA x Gross Margin % / Monthly Churn Rate. **Gross-margin-adjusted, never
  revenue x lifetime months.**
- **LTV/CAC:** floor 3:1 at Series A (Skok); above 5:1 often signals underpricing.
- **CAC Payback** = CAC / (ARPA x Gross Margin %), in months.
- **Contribution Margin** = Revenue - COGS - Variable Costs.
- **Break-even** = Fixed Costs / Contribution Margin %, in revenue terms.
- **AI-native gross margin** = (Revenue - hosting - inference - AI APIs - human review) /
  Revenue. Inference is COGS, never R&D. Also compute it for the 90th-percentile customer.

**Setup fee rules:**

- Setup is **one-time revenue**. Report it on its own line, never inside MRR or ARR.
  Investors find setup counted as recurring revenue in diligence, and it costs credibility.
- Setup gross profit = setup fee collected - onboarding cost. It offsets acquisition and
  onboarding cost; it is not a recurring margin.
- **Payback without setup** = (CAC + onboarding cost) / recurring gross profit per month.
- **Payback with setup** = max(0, CAC + onboarding cost - setup collected) / recurring
  gross profit per month. If setup covers CAC plus onboarding, payback starts at month 0:
  say so, it is a strong signal.
- Use setup **collected**, not invoiced. In LATAM, 50% on signature is common.
- Headline LTV/CAC uses recurring gross profit only; show the version including setup
  gross profit as a second line.

**Outcome and % of savings fees:**

- Variable revenue: model a **conservative case** (the low end of the customer's own
  numbers, a decaying baseline) and a **base case** (trailing 3-month actual). LTV and
  payback use the conservative case.
- Gross margin on outcome fees = (outcome billed - disputed or uncollected - measurement,
  reconciliation, review and legal cost) / outcome billed.
- Recognize outcome revenue only when the customer accepts the measurement report. Billed
  in arrears, it arrives 1-2 months after the result: count the working capital.
- Apply caps and floors from the contract to every customer before summing.
- The baseline decays: when the outcome comes from a backlog (overdue receivables, an
  initial cost cut), the fee falls once the backlog is worked. Model the decay.

**Mixed billing in LTV:**

Recurring gross profit per customer per month = base GP + usage GP + outcome GP
(conservative). LTV = that figure / monthly churn. Setup gross profit is added once, apart.

**MRR and ARR reporting with mixed billing:**

- **Committed MRR:** recurring base only.
- **Run-rate MRR:** base + trailing 3-month usage + conservative outcome. Label it.
- Never: setup inside MRR, the best outcome month annualized, or pilots counted as customers.

**Expansion math:**

Revenue = customers x average ticket x purchase frequency. Improvements compound:
(1 + a) x (1 + b) x (1 + c) - 1. Three improvements of 20% give
1.2 x 1.2 x 1.2 = 1.728, that is **+73%**, not +60% (added) and not +66% (Andrés Nájera
states it as +66% in his masterclass; the correct compounded figure is +73%). For a
recurring product, read frequency as billed months or billable purchases per customer per
year. LTV with expansion = recurring GP per month / (churn - monthly expansion rate) when
churn is higher; if expansion is equal or higher, cap LTV at a 60-month horizon.

**CRITICAL anti-pattern, call it out explicitly:**

> [RED FLAG] Revenue-based LTV detected. This overstates LTV by a factor of 1 / gross
> margin (25-67% too high at 60-80% gross margin) and is the most common calculation error
> in seed pitches. Corrected: LTV = ARPA x Gross Margin % / Monthly Churn Rate = [value]

> [RED FLAG] Setup fees counted in MRR or ARR. Recurring revenue is overstated by
> [amount]. Corrected committed MRR = [value]; setup reported apart = [value].

## Step 3: Workflow

Execute in this order:

1. Confirm the business model and branch to the formula set in
   [references/unit-economics-formulas.md](references/unit-economics-formulas.md)
2. Ask for all missing inputs in one message
3. Split revenue by component: setup (one-time), base, usage, outcome, pilots
4. Gross margin by component and blended (conservative and base)
5. CAC, LTV, LTV/CAC, payback (Skok, without setup, with setup), contribution margin,
   break-even
6. Outcome fee block: conservative vs base, disputes, cost, caps, recognition lag
7. Expansion block: 1.2^3 projection with the startup's own three levers, and LTV with
   expansion as a sensitivity
8. Compare against stage benchmarks in [yc-metrics.md](references/shared/yc-metrics.md)
9. Flag each metric below threshold as `[BELOW BENCHMARK]` with target and gap
10. Apply LATAM annotations from [references/latam-context.md](references/latam-context.md)
11. Output with the exact structure in [TEMPLATES.md](TEMPLATES.md)
12. Next steps addressing the weakest metric first

## Step 4: Output Format

ALWAYS use this exact template structure. Do not change section headings, table columns,
or field order. Fill every [bracketed placeholder] with real analysis from the user's
startup.

See [TEMPLATES.md](TEMPLATES.md) for the filled example. Sections, in order:

1. Inputs
2. Ingresos por componente: Componente | Mensual | Recurrente | Margen bruto | Cómo se reporta
3. Dashboard: Métrica | Tu número | Benchmark | Fuente | Estado
4. Setup fee: payback con y sin setup
5. Componente de resultado: conservador vs base
6. Expansión: la cuenta compuesta
7. Red flags (lead with any LTV or setup-in-ARR error)
8. Contexto LATAM: `(US-sourced benchmark)` vs `(LATAM, directional)` labels
9. Interpretación: what the numbers mean for fundraising, not a restatement
10. Próximos pasos (3-5, weakest metric first)
11. Fuentes

If the brain is connected, file the analysis (default
`finance/unit-economics/<YYYY-MM>`) and link it from the metrics page.

## LATAM Context

Read [references/latam-context.md](references/latam-context.md) BEFORE producing the
output. For regional data, follow references/shared/latam-benchmarks.md.

- **No published LATAM unit-economics benchmark exists.** Cuantico and LAVCA report
  capital flows, not CAC, churn or margins. Every LATAM range is `(LATAM, directional)`.
- **CAC payback:** under 12 months on gross margin reads as strong at seed.
- **Gross margin:** cloud-native SaaS 70-80%; fintech below US peers; AI-native lower
  (ICONIQ, Jan 2026: AI product gross margin ~41% in 2024, projected ~52% in 2026).
- **Monthly churn:** 3-7% is tolerated at seed only with a path to 2% or less before a
  Series A.
- **Setup fees in LATAM:** corporates pay at 30-60 days; payback with setup uses cash
  collected, not invoiced. Taxes (IVA) apply to setup.
- **Outcome fees:** the customer's report (bank statement, ERP) is the source; disputes
  and payment lag are the main risk. Use the conservative case for any investor number.
- **Pricing:** LTV/CAC above 5:1 or payback under 6 months usually means underpricing;
  recommend a price test before raising.

## Tone & Editorial Voice

See references/shared/editorial-voice.md: direct, no sugarcoating, unicorn-bar
evaluation. If unit economics are broken, say so:

- BAD LTV/CAC: "Con 0,8:1 de LTV/CAC perdés plata con cada cliente que sumás. Escalar así
  es acelerar la pérdida."
- SETUP IN ARR: "Tu ARR incluye USD 30.000 de setup. Eso no se repite. Sacalo del ARR antes
  de que lo saque el analista del fondo."
- GOOD: "Payback de 4,9 meses con setup y 8,2 sin setup, con el caso conservador. Es un
  número que se defiende en un comité."

Do not use "Great start!", "Looks promising" or "With some work...".

## Próximos Pasos

End every analysis with 3-5 specific actions based on the worst metric. Examples:

- "Subí la base de Estándar de USD 600 a USD 700 para clientes nuevos: el margen de base +
  uso está en 50% y hoy el componente de resultado subsidia la entrega."
- "Sacá el setup del ARR en el deck y mostralo como ingreso único. Tu ARR comprometido es
  USD 115.200, no USD 282.000."
- "Agregá un piso al componente de resultado en los contratos nuevos: hoy, si el recupero
  cae, tu margen cae con él."

Then hand off: `/pricing-strategy-designer` when the fix is price, plans or billing mix,
`/customer-retention-expansion` when the fix is churn or expansion, `/startup-kpi-automator`
to track these metrics monthly, and `/pitch-deck-builder` for the business model slide.
For a visual one-pager, follow references/shared/deck-design-rules.md.

## Sources

- David Skok SaaS Metrics 2.0: https://www.forentrepreneurs.com/saas-metrics-2/
- High Alpha and Growth Unhinged, 2025 SaaS Benchmarks Report (12 Nov 2025, 800+ companies): https://www.highalpha.com/saas-benchmarks
- Bessemer, Scaling to $100 Million (21 Sep 2021): https://www.bvp.com/atlas/scaling-to-100-million
- ICONIQ State of AI bi-annual snapshot (Jan 2026), via SaaStr (28 Jan 2026): https://saastr.com/inference-costs-average-23-of-revenue-at-ai-b2b-companies-how-will-you-pay-for-it
- IFRS 15 / ASC 606, revenue from contracts with customers (setup and variable consideration): https://www.ifrs.org/issued-standards/list-of-standards/ifrs-15-revenue-from-contracts-with-customers/
- Andrés Nájera, LAN mentor masterclass (Nov 2026): growth formula customers x ticket x frequency (stated as +66%; compounded math gives +73%)
- [references/unit-economics-formulas.md](references/unit-economics-formulas.md): formulas by model, setup, outcome, expansion
- [references/latam-context.md](references/latam-context.md): LATAM benchmarks
- [yc-metrics.md](references/shared/yc-metrics.md): stage thresholds
