# YC Standard Startup Metrics + a16z 16 Metrics

**Source:**
- [A Guide to Startup Metrics — YC Library](https://www.ycombinator.com/library/Fp-a-guide-to-startup-metrics)
- [16 Metrics — Andreessen Horowitz](https://a16z.com/16-metrics/)
- [Roadmap to Epiq — Bessemer Venture Partners](https://www.bvp.com/atlas/roadmap-to-epiq)
**License/Attribution:** Frameworks summarized from public guidance. Cite each source by name and URL.
**When to use:** startup-kpi-automator (primary), fundraising-readiness-audit (Phase 2), deal-memo-writer (Phase 2). Loaded when scoring or benchmarking any startup's performance metrics.

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

### SaaS Benchmarks by Stage

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

*(Sources: BVP Cloud Index, YC Library, a16z benchmarks)*

### LATAM SaaS Adjustments

*(US-sourced benchmark)* CAC payback: 12–18 months good per Bessemer.
*(LATAM, Cuantico 2026)* CAC payback: 6–12 months; 60% of Brazilian SaaS companies recover CAC in <6 months. LATAM operators have structural CAC advantage due to lower sales team costs.

*(US-sourced benchmark)* LTV/CAC at Series A: ≥3:1.
*(LATAM, Cuantico 2026)* LTV/CAC at Series A: ≥3:1 expected; top LATAM SaaS firms achieve 5:1 due to low churn and strong retention culture.

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

## The a16z 16 Metrics Framework

Full framework at [a16z.com/16-metrics/](https://a16z.com/16-metrics/). Key additions beyond YC standard:

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
