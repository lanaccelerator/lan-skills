# YC Standard Startup Metrics + a16z Metric Definitions

**Source:**
- [A Guide to Startup Metrics, YC Library](https://www.ycombinator.com/library/Fp-a-guide-to-startup-metrics)
- [Startup = Growth, Paul Graham (2012)](https://paulgraham.com/growth.html)
- [16 Metrics, Andreessen Horowitz](https://a16z.com/16-metrics/)
- [The State of AI 2025, Bessemer Venture Partners (Aug 2025)](https://www.bvp.com/atlas/the-state-of-ai-2025)
- Carta Data Desk (10 Jul 2026) and Carta State of Private Markets Q3 2025 for round sizes, valuations and dilution
**License/Attribution:** Frameworks summarized from public guidance. Cite each source by name and URL.
**When to use:** startup-kpi-automator (primary), fundraising-readiness-audit, deal-memo-writer, angel-investment-analyzer, startup-valuation-checker. Loaded when scoring or benchmarking any startup's performance metrics. LATAM annotation: `latam-benchmarks.md`.

## Growth Bar (YC)

- "A good growth rate during YC is 5-7% a week. If you can hit 10% a week you're doing exceptionally well. If you can only manage 1%, it's a sign you haven't yet figured out what you're doing." (Paul Graham, Startup = Growth, 2012). Measure on revenue, or on active users before revenue.
- 5% weekly is about 12x a year; 1% weekly is about 1.7x a year.
- YC standard deal: $500K, $125K for 7% plus $375K on an uncapped MFN SAFE ([ycombinator.com/deal](https://www.ycombinator.com/deal), 2025).

## Round Benchmarks (US-sourced, Carta)

| Stage | Median round | Median post-money | Typical dilution |
|-------|--------------|-------------------|------------------|
| Seed | $4.1M | $24.3M | ~19-20% (Carta 2025) |
| Series A | $14.4M | $80M | ~18% (Carta 2025) |
| Series B | $25M | $191M | ~13% (implied) |

Round and post-money: Carta Data Desk, 10 Jul 2026. Pre-money medians 2025: seed $16M, Series A $49.3M (Carta State of Private Markets Q3 2025). LATAM sits far below these levels; see `latam-benchmarks.md`.

## Key Principles

1. **Metrics must be tied to business model.** SaaS, marketplace, and transactional businesses have fundamentally different KPIs. Using SaaS metrics to evaluate a marketplace gives wrong answers.
2. **Denominator discipline.** CAC and LTV calculations are meaningless without specifying what's included (fully-loaded CAC, gross-margin-adjusted LTV).
3. **Cohorts, not averages.** Retention must be shown in cohorts. Aggregate retention hides churn acceleration.
4. **Stage-appropriate benchmarks.** Pre-seed metrics are directional. Seed metrics prove the model. Series A metrics prove repeatable growth.

## SaaS Metrics

### Core SaaS KPIs

| Metric | Definition | Calculation | Unit |
|--------|-----------|-------------|------|
| MRR | Monthly Recurring Revenue | Sum of all active subscription ARR ÷ 12 | $ |
| ARR | Annual Recurring Revenue | MRR × 12 | $ |
| Logo Churn | % of customers lost per period | Customers churned ÷ starting customers | % per month or year |
| Revenue Churn | % of MRR lost per period | MRR lost (not from new) ÷ starting MRR | % per month or year |
| Net Revenue Retention (NRR) | Revenue from existing cohort incl. expansion | (Starting MRR + expansion - contraction - churn) ÷ starting MRR | % per year |
| Gross Revenue Retention (GRR) | Revenue from existing cohort, no expansion | (Starting MRR - contraction - churn) ÷ starting MRR | % per year |
| CAC | Customer Acquisition Cost | Total sales + marketing spend ÷ new customers acquired | $ per customer |
| LTV | Customer Lifetime Value | ARPU × gross margin % ÷ monthly churn rate | $ |
| LTV/CAC | Payback quality ratio | LTV ÷ CAC | Ratio |
| CAC Payback Period | Months to recover CAC | CAC ÷ (ARPU × gross margin %) | Months |
| Rule of 40 | Growth + profitability balance | ARR YoY growth % + EBITDA margin % | Composite % |

### SaaS Benchmarks by Stage *(directional)*

Practitioner ranges consolidated from YC, a16z and Bessemer guidance. Not a single published dataset: use for orientation and say so.

| Metric | Pre-Seed | Seed | Series A | Series B |
|--------|---------|------|---------|---------|
| MRR | $0–10K | $10K–100K | $100K–1M | $1M+ |
| MRR growth (MoM) | N/A | 15–30% | 10–20% | 8–15% |
| Logo churn (annual) | N/A | <10% | <7% | <5% |
| NRR (annual) | N/A | >100% | >110% | >120% |
| Gross margin | >60% | >65% | >70% | >70% |
| LTV/CAC | N/A | >2:1 | >3:1 | >4:1 |
| CAC payback | N/A | <18 months | <12 months | <12 months |
| Rule of 40 | N/A | N/A | >20 | >40 |

*(Directional; consolidated from YC Library, a16z and Bessemer public guidance)*

### LATAM SaaS Adjustments

No public LATAM-wide dataset on CAC payback or LTV/CAC matches US benchmark quality. Apply the US benchmark labeled `(US-sourced benchmark)` and explain the local drivers: cheaper sales salaries, lower ACV, higher SMB churn, FX on local-currency revenue. Do not cite a LATAM payback percentage unless the user provides it.

### AI-Native Companies (Bessemer State of AI 2025)

AI products carry inference cost in COGS, so gross margin is the first number to check before applying any SaaS multiple.

| Profile | ARR path | Gross margin | ARR per FTE |
|---------|----------|--------------|-------------|
| "Supernova" | ~$40M year 1, ~$125M year 2 | ~25%, often negative | ~$1.13M |
| "Shooting Star" | ~$3M, $12M, $40M, $103M in years 1-4 | ~60% | ~$164K |

Rules: (1) value AI revenue on gross profit, not top line; (2) separate pilot or usage revenue from contracted recurring revenue; (3) ask what happens to margin if the model provider raises prices or ships the same feature.

## Marketplace Metrics

### Core Marketplace KPIs

| Metric | Definition | Why It Matters |
|--------|-----------|---------------|
| GMV | Gross Merchandise Value | Total transaction value through platform (before take rate) |
| Net Revenue | GMV × take rate | Actual revenue; different from GMV |
| Take Rate | % of GMV captured as revenue | 5–15% typical; higher = pricing power risk |
| Buyer CAC | Cost to acquire a paying buyer | Must be compared to buyer LTV |
| Seller CAC | Cost to acquire an active seller | Two-sided acquisition cost |
| Liquidity | % of supply meeting demand per cohort | Core health metric: can buyers find what they need? |
| Repeat Purchase Rate | % of buyers who transact again | Retention proxy for marketplace |
| Supply Concentration | % of GMV from top 10% of sellers | Risk indicator; concentrated = fragile |

### Marketplace Benchmarks

| Stage | GMV Growth | Take Rate | Liquidity |
|-------|-----------|-----------|-----------|
| Seed | 3–5× YoY | 5–20% | >50% demand met |
| Series A | 2–3× YoY | Stabilizing | >70% demand met |
| Series B | 1.5–2× YoY | Optimizing | >85% demand met |

## E-Commerce / Transactional Metrics

| Metric | Definition |
|--------|-----------|
| AOV (Average Order Value) | Revenue ÷ number of orders |
| Repeat Rate | % of customers who buy again in 12 months |
| Contribution Margin | Revenue - COGS - variable fulfillment costs |
| Payback Period | CAC ÷ monthly contribution per customer |
| DTC CAC | Total marketing spend ÷ new customers |

## Fintech Metrics

| Metric | Definition |
|--------|-----------|
| AUM (if asset mgmt) | Total assets under management |
| TPV (Total Payment Volume) | Total payment value processed |
| Net Revenue / TPV | Monetization rate on payment volume |
| Default Rate | % of loans or credit facilities defaulting |
| Regulatory capital ratio | Required capital buffers (varies by jurisdiction) |

## Core Metric Definitions (adapted from a16z 16 Metrics)

Full a16z framework at [a16z.com/16-metrics/](https://a16z.com/16-metrics/). The list below adapts it; items 14-16 are LAN additions, and the thresholds are directional rules of thumb:

1. **Bookings** (vs. revenue): Distinguishes contracted future revenue from recognized revenue.
2. **Revenue** (vs. bookings): GAAP recognized, not contracted.
3. **ARR / MRR**: Annual/monthly normalized recurring only.
4. **Gross Profit / Gross Margin**: Include COGS accurately; common manipulation site.
5. **Total Contract Value (TCV)**: Full value of a contract (multi-year).
6. **Annual Contract Value (ACV)**: TCV ÷ contract years.
7. **LTV**: Gross margin × (1/churn rate); not revenue-based LTV.
8. **CAC**: Fully-loaded (sales + marketing + sales ops + allocated overhead).
9. **CAC Payback**: CAC ÷ (ARPU × gross margin); payback from gross profit, not revenue.
10. **DAU/MAU Ratio (Engagement)**: Daily active ÷ monthly active; <15% signals weak retention.
11. **MoM Growth**: For early stage; 10% MoM = top quartile, 15%+ = exceptional.
12. **Churn**: Monthly logo churn and revenue churn separated.
13. **Burn Rate / Runway**: Net burn; months to zero at current burn.
14. **Pipeline / Revenue Ratio**: 3× pipeline needed to make plan (general rule).
15. **Revenue Concentration**: Top 3 customer % of revenue (>30% = risk flag).
16. **NPS**: Net Promoter Score; >50 strong, >70 exceptional.
