# LATAM Context — Venture Model Validator

**Source:**
- [LAVCA 2025 Startup Ecosystem Insights](https://www.lavca.org/wp-content/uploads/2025/08/LAVCA_Startup-Ecosystem-Insights_2025.pdf)
- [Cuantico LatAm VC Report 2026](https://reports.cuanticovp.com/latin-america-vc-report-2026/) (2025 actuals)
- [LAVCA Trends in Tech 2025](https://www.lavca.org/wp-content/uploads/2025/02/LAVCA_Trends-in-Tech-2025.pdf)

**When to use:** venture-model-validator reads this file in Step 3 (Workflow, step 5) and
Step 5 (LATAM Context) BEFORE calculating the final score. Adjust all US-sourced benchmarks
using the data below before presenting the scorecard.

---

## How to Annotate Benchmarks in Scorecard Output

Every quantitative benchmark in the scorecard must follow this protocol:

1. Show the US benchmark first, labeled `(US-sourced benchmark)`
2. Immediately follow with the LATAM-adjusted figure, labeled `(LATAM, LAVCA 2025)` or `(LATAM, Cuantico 2026)`
3. Note the direction: LATAM advantage, LATAM discount, or same as US

**Example format:**
> Seed-stage SaaS valuation: $8M–$15M pre-money *(US-sourced benchmark, YC S24 data)*
> LATAM seed valuation: $3M–$8M pre-money *(LATAM, LAVCA 2025)* — 40–60% LATAM discount

---

## Capital Markets Context (Cuantico 2026 — 2025 actuals)

| Metric | Value | Source |
|--------|-------|--------|
| Total LATAM VC invested 2025 | US$4.126B across 681 rounds | Cuantico 2026 |
| YoY growth | +13.8% (vs US$3.627B in 2024) | Cuantico 2026 |
| Average ticket size 2025 | US$6.1M (up from US$5.2M in 2024) | Cuantico 2026 |
| Pre-seed deals 2025 | 152 deals (-39% vs 2024; -77% vs 2022 peak) | Cuantico 2026 |
| Brazil + Mexico funding share | 78.5% of regional total | Cuantico 2026 |
| Fintech sector share | 61% of LATAM VC | LAVCA 2025 |
| SaaS sector share | ~13% of LATAM VC | LAVCA 2025 |
| Early-stage rounds (Seed + Series A) | US$2.2B = 52% of total | LAVCA 2025 |
| Median time between rounds | 20 months (vs 12–15 months in US) | LAVCA 2025 |

---

## Sector Mix — Implications for VC-Backability Scoring

| Sector | LATAM VC % | US VC % | Implication for Scoring |
|--------|-----------|---------|--------------------------|
| Fintech | ~61% | ~13% | Dominant LATAM capital pool; higher competition but more investors |
| SaaS | ~13% | ~30%+ | Underfunded vs US; structural opportunity but fewer LATAM SaaS VCs |
| Healthtech | ~8% | ~15% | Emerging; regulatory complexity limits investor pool |
| Edtech | ~6% | ~8% | Post-pandemic contraction; cautious investors |
| Logistics/Supply Chain | ~5% | ~5% | Consistent; LATAM supply chain gaps create demand |

**Scoring adjustment:** A non-fintech SaaS startup in LATAM must demonstrate stronger
PMF signals and market size than a fintech peer to access the same capital, because the
investor pool is proportionally smaller. Score PMF and market size with this constraint.

---

## Fundraising Benchmarks by Stage (LATAM)

| Stage | Typical Check (USD) | Post-Money Cap / Valuation | Notes |
|-------|--------------------|-----------------------------|-------|
| Pre-pre-seed (idea, accelerator) | $25K–$150K | $1.5M–$5M cap | LAN Accelerator, Platanus, 500 Latam |
| Pre-seed (product, no revenue) | $150K–$750K | $3M–$10M cap | SAFE note standard |
| Seed (early revenue, PMF signals) | $750K–$3M | $8M–$20M pre-money | Priced or SAFE |
| Series A (PMF proven) | $3M–$15M | $20M–$60M pre-money | Priced round |
| Series B (scale) | $15M–$50M | $60M–$200M pre-money | Top-quartile LATAM companies |

**LATAM discount:** All LATAM valuations run 40–60% below equivalent US market at same
stage. This is market pricing norm, not a quality signal.

**US comparison:**
> Seed-stage SaaS pre-money: $10M–$20M *(US-sourced benchmark, YC S24 data)*
> LATAM seed pre-money: $8M–$20M, median ~$12M *(LATAM, LAVCA 2025)*

---

## VC-Backability Adjustments for LATAM

### Minimum Thresholds (LATAM-calibrated)

| Criterion | US Standard | LATAM Adjustment |
|-----------|-------------|------------------|
| SAM for fund-returner | >$500M (top-tier fund) | >$100M (LATAM seed fund, $50M–$300M) |
| Growth rate at seed | >10% MoM | >8% MoM acceptable if market shows structural advantage |
| Series A revenue threshold | $1–3M ARR | $1–3M ARR — same floor (LAVCA 2025) |
| Time to Series A | 12–18 months post-seed | 18–30 months post-seed (20-month median gap) |
| PMF signal for seed | 40% "very disappointed" (Sean Ellis) | Same threshold applies |

### Market Geographic Requirement

A LATAM startup achieving regional scale MUST eventually reach Brazil or Mexico:
- Brazil: ~55% of LATAM VC; largest tech ecosystem
- Mexico: ~23.5% of LATAM VC; fastest-growing tech ecosystem

Startups outside Brazil/Mexico should price in 2–4 years to enter one of these markets.
Investors will ask about the Brazil/Mexico strategy in every pitch.

**For startups in other LATAM countries:** Expect fundraising at 60–70% of Brazilian
peer valuations. Cross-border expansion to Brazil or Mexico required for full VC market
access.

---

## Pre-Seed Market Contraction (Critical Context)

Pre-seed deals dropped from 660 in 2022 to 152 in 2025 — a 77% contraction.

**Implications for venture-model-validator output:**
- Ideas and pre-product startups face a significantly harder funding environment in 2025
- Earlier-stage companies must demonstrate seed-level metrics (revenue, PMF signals)
  faster to access the reduced pre-seed capital pool
- Accelerator programs (LAN, Platanus, 500 Latam) have become more critical as bridge
  capital before reaching seed-fundable stage
- Score PMF criterion conservatively for pre-product startups — the market has moved up

---

## SaaS-Specific LATAM Benchmarks (Cuantico 2026)

| Metric | LATAM Value | US Benchmark | Direction |
|--------|-------------|--------------|-----------|
| CAC payback period | 6–12 months | 12–18 months (Bessemer "good") | LATAM structural advantage |
| % recovering CAC in <6 months | 60% (Brazil) | ~30% top-quartile US | LATAM advantage |
| LTV/CAC at Series A | ≥3:1 expected; top firms 5:1 | ≥3:1 standard | Same floor |
| Revenue multiple discount | ~30–50% to US peers at same growth | — | LATAM discount |
| SaaS market CAGR 2024–2030 | ~25% | ~17% global | LATAM growth advantage |

---

## Risk Factors to Note in Output

| Risk | Implication |
|------|-------------|
| FX volatility | Revenue in local currency; VC returns in USD — mention for LATAM startups not USD-denominated |
| Regulatory fragmentation | No unified LATAM framework — country-specific compliance required |
| Capital markets depth | Limited Series B+ follow-on capital locally — international co-investors needed at Series A |
| Talent density | Engineering talent concentrated in BR/MX/COL — remote-first required for other markets |
| Pre-seed contraction | 152 deals (2025) vs 660 (2022) — earlier companies must hit seed metrics faster |
