# LATAM and AI-Native Unit Economics Context

**Apply these annotations AFTER calculating metrics with
[unit-economics-formulas.md](unit-economics-formulas.md).**

**Read this first (checked 27 Oct 2026):** no public LATAM report publishes CAC payback,
LTV/CAC, churn or gross-margin benchmarks. The Cuantico LatAm VC Report 2026 and the LAVCA
reports cover capital flows (amounts, deals, sectors, round sizes), not company metrics.
Every LATAM metric range in this file is therefore **directional** (LAN's read from
portfolio and cohort work). Never attribute it to Cuantico or LAVCA.

**Labels:**
- `(US-sourced benchmark, [source, date])` for US figures
- `(LATAM, directional)` for the LATAM ranges below
- `(LATAM, [report, date])` only for the verified capital-market facts at the end

---

## CAC and CAC Payback

### Why LATAM CAC can be lower

Sales and engineering salaries in LATAM are a fraction of US levels, so a fully loaded
S&M budget buys more pipeline (directional; verify local salaries before using a number).
The advantage disappears when the company sells to US customers or hires US-based sellers.

### CAC payback ranges

| Market | Seed | Series A | Exceptional |
|--------|------|---------|-------------|
| US | ≤24 months | ≤18 months | ≤12 months |
| LATAM (directional) | ≤18 months | ≤12 months | ≤6 months |

US ranges: commonly cited SaaS ranges (directional; OpenView published the reference
benchmarks until 2024, now offline). Always state whether payback is on revenue or on gross
margin: this skill uses gross-margin payback, which is longer.

**Annotation to use:**
> CAC payback: under 12 months on gross margin reads as strong at seed *(LATAM, directional)*.
> Show it by channel; a blended number hides the channel that does not pay back.

---

## Churn and Retention

### Why early LATAM churn runs higher

- More month-to-month contracts, fewer annual prepay commitments
- SME customer base exposed to FX, inflation and regulatory swings
- Smaller customer success budgets

### Churn ranges (directional)

| Stage | US SaaS | LATAM early SaaS (directional) |
|-------|---------|--------------------------------|
| Pre-seed | N/A | Any, if the trend is improving |
| Seed | ≤5% monthly | ≤7% monthly |
| Series A | ≤2% monthly | ≤3% monthly |
| Series B | ≤1% monthly | ≤2% monthly |

**Trajectory rule:** higher churn is tolerated at seed only with a credible path to ≤2%
monthly before a Series A from an international fund.

---

## Gross Margins

| Category | Typical range (directional) | Notes |
|----------|-----------------------------|-------|
| Pure SaaS, cloud-native | 70-82% | Bessemer averages ~70% at $1-25M ARR (Scaling to $100M, 2021) |
| SaaS with local integrations | 60-72% | Government APIs and local banking add COGS |
| SaaS with human-in-the-loop | 45-65% | Count the humans in COGS, not in G&A |
| AI-native (inference in COGS) | 40-60% | See AI-native section below |
| LATAM fintech (payments) | below US peers | PIX/SPEI/OXXO and banking API fees sit in COGS; size the gap from the company's own processor invoices |

---

## AI-Native Products

AI products carry a variable cost that SaaS does not: every task, conversation or agent
run consumes inference. Rules:

1. **Inference and third-party model/API costs go in COGS**, never in R&D. So do vector
   database, GPU hosting and human review of AI output.
2. **Compute cost per unit** (per task, per conversation, per active user per month) is a
   required input. If unknown, estimate from the model provider's price list and the
   median tokens per task, and flag it as `[ASSUMPTION]`.
3. **Market reference:** ICONIQ's State of AI bi-annual snapshot (Jan 2026, ~300 AI
   builders) reports average AI product gross margin rising from 41% (2024) toward a
   projected 52% (2026), well below SaaS. The High Alpha / Growth Unhinged 2025 SaaS
   Benchmarks (Nov 2025) found early-stage gross margins compressed about 10 points, likely
   from AI costs. *(US-sourced benchmark)*
4. **Heavy-user test:** compute gross margin for the 90th-percentile user, not only the
   average. If heavy users are margin-negative, the fix is pricing (meter or cap usage), see
   `/pricing-strategy-designer`.
5. **Trend matters more than level:** model prices fall over time; show gross margin by
   month and the levers (smaller models, caching, routing) that move it up.

---

## Pricing Context

LATAM SaaS is often priced well below delivered value (directional). Signals that a price
test is the fastest LTV lever:

- LTV/CAC > 5:1 at current ARPA
- CAC payback < 6 months
- Monthly churn < 2% with no discounting

Hand off to `/pricing-strategy-designer` for the test design.

---

## FX and Revenue Denomination

- **USD-denominated revenue:** cleanest for fundraising; no FX translation risk
- **Local currency revenue:** common with SMEs and regulated pricing; LTV must be converted
  at the current rate, with the rate and date stated
- **Mixed:** document the % of revenue in USD vs local currency

---

## Fundraising Ranges (directional)

| Stage | LTV/CAC | CAC Payback (gross margin) | Monthly Churn |
|-------|---------|----------------------------|---------------|
| Seed (LATAM) | ≥1.5:1 and improving | ≤18 months | ≤5% |
| Series A (LATAM fund) | ≥3:1 | ≤12 months | ≤3% |
| Series A (international fund) | ≥3:1 | ≤12 months | ≤2% |
| Series B | ≥5:1 | ≤9 months | ≤2% |

The 3:1 LTV/CAC floor comes from David Skok, SaaS Metrics 2.0. International funds apply
US benchmarks to LATAM companies from Series A on.

---

## Verified LATAM capital-market facts (for context only)

| Fact | Source |
|------|--------|
| USD 4.13B of LATAM VC across 681 rounds in 2025, +13.8% YoY | Cuantico, LatAm VC Report 2026 |
| Fintech 61% of 2025 VC dollars; SaaS 13% | Cuantico 2026 |
| ~20 months on average between rounds | LAVCA Trends in Tech 2025 |
| 12% of seed startups raise a Series A within 3 years | LAVCA Startup Ecosystem Insights 2025 |

---

## Sources

- David Skok, SaaS Metrics 2.0: https://www.forentrepreneurs.com/saas-metrics-2/
- Bessemer, Scaling to $100 Million (21 Sep 2021): https://www.bvp.com/atlas/scaling-to-100-million
- High Alpha and Growth Unhinged, 2025 SaaS Benchmarks Report (12 Nov 2025): https://www.highalpha.com/saas-benchmarks
- ICONIQ State of AI bi-annual snapshot (Jan 2026), summary by SaaStr (28 Jan 2026): https://saastr.com/inference-costs-average-23-of-revenue-at-ai-b2b-companies-how-will-you-pay-for-it
- Cuantico LatAm VC Report 2026: https://reports.cuanticovp.com/latin-america-vc-report-2026/
- LAVCA Trends in Tech 2025: https://www.lavca.org/wp-content/uploads/2025/02/LAVCA_Trends-in-Tech-2025.pdf
- LAVCA Startup Ecosystem Insights 2025: https://www.lavca.org/wp-content/uploads/2025/08/LAVCA_Startup-Ecosystem-Insights_2025.pdf
