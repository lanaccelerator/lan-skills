# KPI Benchmarks by Business Model

Stage-gated benchmark tables for all four business models. US-sourced
benchmarks are labeled `(US-sourced benchmark)`. LATAM ranges are labeled `(LATAM, directional)`:
no public LATAM report publishes KPI benchmarks.

**Sources:**
- Bessemer Cloud Index: https://www.bvp.com/atlas/scaling-to-100-million
- High Alpha and Growth Unhinged, 2025 SaaS Benchmarks Report (12 Nov 2025, 800+ companies; replaces the offline OpenView benchmarks): https://www.highalpha.com/saas-benchmarks
- YC Standard Metrics: https://www.ycombinator.com/library/Fp-a-guide-to-startup-metrics
- a16z 16 Metrics: https://a16z.com/16-startup-metrics/
- Carta State of Private Markets: https://carta.com/blog/state-of-private-markets/

---

## 1. SaaS KPI Benchmarks

Primary framework: Bessemer Cloud Index + YC Standard Metrics + a16z 16 Metrics.

### Stage-Gated SaaS Benchmarks

| KPI | Pre-Seed | Seed | Series A | Series B | Source |
|-----|---------|------|---------|---------|--------|
| MRR | $0–$10k | $10k–$100k | $100k–$1M | $1M+ | YC Standard Metrics |
| MRR Growth (MoM) | >15% | >10% | >7% | >5% | Directional (PG 2012: 5-7%/week during YC) |
| ARR Growth (YoY) | n/a | >100% | >80% | >60% | High Alpha/Growth Unhinged 2025: median 75-100% under $1M ARR |
| Logo Churn (monthly) | <5% | <3% | <2% | <1.5% | Directional |
| Revenue Churn (monthly) | <5% | <3% | <2% | <1% | a16z 16 Metrics |
| NRR (annual) | — | >100% | >110% | >120% | YC + Carta |
| GRR (annual) | — | >80% | >85% | >90% | Carta |
| Gross Margin | >55% | >65% | >70% | >72% | Bessemer Scaling to $100M (~70% avg), directional by stage |
| LTV/CAC | — | >2:1 | >3:1 | >4:1 | a16z 16 Metrics |
| CAC Payback (months) | n/a | <18 | <12 | <12 | Directional |
| Rule of 40 | n/a | n/a | >20 | >40 | Bessemer (Rule of 40, later stage) |

*(US-sourced benchmark)* All figures above are US-market benchmarks from BVP,
YC, a16z, Carta and High Alpha, or directional where marked. Apply LATAM adjustments from latam-context.md.

### SaaS LATAM Adjustments

| KPI | US Benchmark | LATAM Adjusted | Source |
|-----|-------------|----------------|--------|
| CAC payback "good" | 12–18 months | 6–12 months | Directional |
| Seed MoM growth floor | 15–20% | 10%+ (smaller markets) | Directional |
| NRR PMF signal | >110% (Series A) | >100% (Seed) | Directional |

### SaaS Metric Definitions (Fully-Loaded)

| Metric | Formula | What Counts in COGS |
|--------|---------|---------------------|
| MRR | Recurring subscription revenue for the month (annual contracts ÷ 12) | Subscriptions only; exclude one-time fees |
| ARR | MRR × 12 | — |
| Logo Churn | Customers churned ÷ starting customers | Count each customer once regardless of seats |
| Revenue Churn | MRR lost (excl. new) ÷ starting MRR | Include downgrades; exclude new customers |
| NRR | (Start MRR + expansion - contraction - churn) ÷ start MRR | Existing customers only; no new logos |
| CAC (fully-loaded) | Total S&M spend + sales ops + founder time cost | All roles touching acquisition |
| LTV | ARPU × gross margin % ÷ monthly churn rate | Gross-margin-adjusted, not revenue-based |
| LTV/CAC | LTV ÷ CAC | Use same time period for both |
| CAC Payback | CAC ÷ (ARPU × gross margin %) | Payback from gross profit, not revenue |

---

## 2. Marketplace KPI Benchmarks

Primary framework: a16z marketplace metrics + YC liquidity benchmarks.

### Stage-Gated Marketplace Benchmarks

| KPI | Seed | Series A | Series B | Source |
|-----|------|---------|---------|--------|
| GMV Growth (YoY) | 3–5× | 2–3× | 1.5–2× | a16z Marketplace 100 |
| Take Rate | 5–20% | Stabilizing | Optimizing | a16z |
| Liquidity (demand met) | >50% | >70% | >85% | YC Standard Metrics |
| Repeat Purchase Rate (buyers) | >30% | >45% | >60% | a16z |
| Supply Concentration | Top 10% sellers <50% GMV | <40% GMV | <30% GMV | Risk guideline |
| Buyer CAC / Seller CAC | Track both separately | Declining | Declining | a16z 16 Metrics |

### Marketplace Metric Definitions

| Metric | Formula | What Counts |
|--------|---------|------------|
| GMV | Sum of all transaction values through platform | Gross; before take rate deduction |
| Net Revenue | GMV × take rate | Actual recognized revenue |
| Take Rate | Net Revenue ÷ GMV | Watch for inflation via services fees |
| Liquidity | Demand-matched listings ÷ total demand requests | Core health metric |
| Repeat Rate | Buyers who transact again in 90 days ÷ all buyers | 90-day window standard |

---

## 3. E-Commerce KPI Benchmarks

Primary framework: YC e-commerce metrics + DTC benchmarks.

### Stage-Gated E-Commerce Benchmarks

| KPI | Early Revenue | Growth | Scale | Source |
|-----|--------------|--------|-------|--------|
| Revenue Growth (MoM) | >15% | >8% | >5% | YC |
| Gross Margin | >40% | >45% | >50% | YC + industry norms |
| CAC Payback (months) | <6 | <4 | <3 | YC |
| Repeat Purchase Rate (12mo) | >25% | >35% | >50% | DTC benchmarks |
| AOV (Average Order Value) | Track | Growing | Optimized | — |
| LTV/CAC | >1.5:1 | >2:1 | >3:1 | YC |

### E-Commerce Metric Definitions

| Metric | Formula |
|--------|---------|
| AOV | Total Revenue ÷ Number of Orders |
| Repeat Rate | Customers with 2+ orders in 12 months ÷ total customers |
| Contribution Margin | Revenue - COGS - variable fulfillment costs |
| DTC CAC | Total paid marketing spend ÷ new customers acquired |
| Payback Period | CAC ÷ monthly gross contribution per customer |

---

## 4. Fintech KPI Benchmarks

Primary framework: a16z fintech metrics + LATAM regulatory context.

### Stage-Gated Fintech Benchmarks

| KPI | Seed | Series A | Series B | Source |
|-----|------|---------|---------|--------|
| Revenue Growth (MoM) | >12% | >8% | >5% | a16z |
| Net Revenue / TPV | 0.5–3% | Optimizing | Optimized | a16z |
| Default Rate (lending) | <5% | <3% | <2% | Industry standard |
| CAC | Track | Declining | Below LTV/3 | a16z |
| LTV/CAC | >1.5:1 | >2:1 | >3:1 | a16z 16 Metrics |
| Regulatory Capital Ratio | Compliant | Compliant | Buffer maintained | Jurisdiction-specific |

### Fintech Metric Definitions

| Metric | Formula | Notes |
|--------|---------|-------|
| TPV | Total Payment Volume | Gross transaction volume processed |
| Net Revenue / TPV | Net Revenue ÷ TPV | Monetization rate; 0.5–3% typical |
| AUM | Total Assets Under Management | Asset management or neobank products |
| Default Rate | Defaulted loan value ÷ Total loan book | Track by cohort vintage |
| Regulatory Capital Ratio | Tier 1 capital ÷ risk-weighted assets | Varies by country; Brazil (BCB) most complex |

**LATAM Fintech Note:** fintech took 61% of LATAM VC dollars in 2025 (Cuantico, LatAm
VC Report 2026). CAC economics are harder in fintech due to high compliance
costs; a CAC payback of <12 months at Seed is strong for LATAM fintech.
