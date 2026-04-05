# IC Investment Committee Memo — Output Template

ALWAYS use this exact structure. Every section is required. This template is for
VC FUND OPERATORS writing IC memos — not for startup founders.
Do not change section headings, table columns, or field order.

---

## Example Output: PayGo México

*This is a filled example showing Cóndor Ventures Fund I evaluating PayGo México —
a Seed-stage B2B fintech SaaS company. Use it as the structural template for every
IC memo you produce.*

---

# Investment Committee Memo: PayGo México

**Prepared by:** Isaac García, GP — Cóndor Ventures Fund I
**Date:** April 2026
**Fund:** Cóndor Ventures Fund I ($25M committed, 2022 vintage, Brazil/Mexico B2B SaaS
focus, Year 3 of 10-year fund life — active investment period)
**Decision required:** Approve $500k check at $12M pre-money SAFE

---

## 1. Executive Summary

**RECOMMENDATION: INVEST**

PayGo México is a Seed-stage B2B fintech enabling SMEs to accept digital payments
through a single API layer that integrates OXXO Pay, SPEI, and card processing. MRR
$45k (210 customers, 18% MoM growth). Funding ask: $2.5M raise on $12M pre-money.
Cóndor proposed check: $500k (20% of round).

**Conviction:** Founder-market fit is exceptional — CEO previously led BD at Clip
México (LATAM's leading card acceptance platform), giving PayGo the only biz-dev
relationship with OXXO Pay that would take a competitor 18+ months to replicate. SME
payment penetration in Mexico is 23% vs 78% in the US — a structural gap that CFDI
4.0 digital mandate (Jan 2024) is now forcing to close. Key risk is manageable: CNBV
fintech license required within 24 months — propose SOFOM structure as condition of
close, cutting timeline from 18 months to ~60 days.

---

## 2. Company Overview

| Field | Value |
|-------|-------|
| Company | PayGo México |
| Stage | Seed |
| Founded | January 2024 |
| MRR | $45,000 |
| MoM Growth | 18% |
| Customers | 210 SMEs |
| ACV | ~$2,571 (~$214/month per customer) |
| Gross Margin | 71% |

**What it does:** Single API integrating OXXO Pay cash acceptance, SPEI bank transfer,
and card processing. SME owners add a payment link to their WhatsApp catalog and
accept all three payment types through one dashboard. Billing is usage-based (0.8%
take rate on TPV + $29/mo platform fee).

**Why it matters to Cóndor:** Fits Fund I thesis (B2B SaaS, Mexico primary market,
Seed entry) exactly. This is the third payment infrastructure deal we have evaluated —
the first two lacked the OXXO relationship that creates a real moat.

---

## 3. Market Analysis

**TAM/SAM/SOM (bottom-up)**

- **TAM:** $28B — total SME payment processing in Mexico (5.4M SMEs × estimated $5,200
  annual payment volume per Banco de México data × 1% average take rate)
- **SAM:** $3.2B — SMEs with 5–200 employees, digital-payment-enabled segment (620k
  businesses × $5,200 average × 1% take rate)
- **SOM:** $80M — Year 5 target (2.5% SAM capture at current growth trajectory and
  18% MoM maintained through Year 2, then decelerating to 8% MoM by Year 4)

**Why now:** CFDI 4.0 mandate took effect January 2024, requiring all B2B transactions
to be digitally invoiced in real time. This forced the ~40% of Mexican SMEs still
issuing paper receipts to upgrade their payment infrastructure — creating a
once-in-a-decade infrastructure replacement cycle. Companies that captured this
upgrade window in 2024–2025 will have 3–5 year lock-in as customers standardize
on new payment rails.

**LATAM benchmark:** $3.2B SAM is credible for a LATAM fund returning mandate.
*(US-sourced benchmark, YC)* Series A market size threshold: SAM >$500M.
*(LATAM, LAVCA 2025)* LATAM Seed-stage SaaS with SAM >$100M is fundable for
LATAM-focused funds — $3.2B SAM is well above threshold.

---

## 4. Product & Technology

**Core product:** RESTful API with three integration modes — hosted payment page
(no code), JavaScript SDK (low code), and full API (developer). All three route to
the same OXXO Pay / SPEI / card processing backend.

**Moat assessment:**

| Moat Type | Assessment |
|-----------|-----------|
| Proprietary technology | MEDIUM — API layer is technically replicable; moat is not the technology itself |
| Network effects | LOW — no direct network effects at current scale |
| Switching costs | HIGH — merchants integrate payment flows into WhatsApp catalogs and POS; migration disrupts live business operations |
| Strategic relationship (OXXO Pay) | VERY HIGH — CEO's prior relationship from Clip México grants preferred API access terms not available to new entrants. 18-month replication timeline confirmed in founder reference call. |

**Technical risk:** Single point of failure on OXXO Pay API uptime. Mitigation: dual
SPEI fallback routing in production since March 2026. AWS São Paulo region redundancy
is planned for Q3 2026 (relevant for future Brazil expansion).

---

## 5. Team Assessment

**Alejandro Ríos — CEO**
Former Head of Business Development, Clip México (2019–2023, $2B+ TPV platform).
Led OXXO partnership that processed 35M+ transactions in Year 1. Deep LATAM fintech
operator experience — knows the CNBV regulatory path, the OXXO commercial structure,
and the SME sales motion. Prior to Clip: BD at Konfío (Mexico SME lending).

**Valentina Cruz — CTO**
Former Engineering Lead, Kushki (Ecuador/Colombia payment infrastructure, Series B).
Built the Kushki-to-SWIFT integration handling 8M+ cross-border transactions monthly.
Full-stack, knows payment rails architecture. Led 6-engineer team.

**LATAM operator experience: CONFIRMED**
Both founders were previously operators at LATAM fintech companies processing
real payment volume in LATAM markets. Prior US-only experience would be insufficient
for this deal — CNBV regulatory navigation, OXXO merchant relationships, and SPEI
integration require LATAM-specific operator experience. This team has it.

**Team gap:** No CFO/finance function. Acceptable at Seed; budget for VP Finance hire
at $1.5M ARR as a condition of Series A.

---

## 6. Financial Analysis

**Current metrics vs stage benchmarks**

| Metric | PayGo México | Seed Benchmark | Assessment |
|--------|-------------|----------------|-----------|
| MRR | $45,000 | $10k–$100k | In range |
| MoM Growth | 18% | 15–30% | In range *(US-sourced benchmark, YC / a16z)* |
| Logo Churn (annual) | ~8% | <10% | Passing *(US-sourced benchmark, YC)* |
| Gross Margin | 71% | >65% | Passing *(US-sourced benchmark, YC / a16z)* |
| LTV/CAC | 3.1:1 | >2:1 at Seed | Strong *(US-sourced benchmark, a16z)* |
| CAC Payback | 7 months | <18 months | Strong *(US-sourced benchmark, Bessemer)* |

**Unit economics detail:**
- ARPU: $214/month per customer
- Gross Margin: 71%
- Monthly Churn: 0.7% (logo); revenue churn 0.5% (expansion via higher TPV)
- LTV: $214 × 71% ÷ 0.7% = $21,700 per customer
- CAC: $7,000 (fully-loaded: sales commission + onboarding + allocated overhead)
- LTV/CAC: 3.1:1 — above Seed minimum threshold of 2:1

*(LATAM, LAVCA 2025)* LTV/CAC ≥3:1 is consistent with top-quartile LATAM B2B SaaS
at Seed. CAC payback of 7 months is well within the LATAM structural advantage
(lower sales team costs vs US peer set).

**Projection basis:** At 18% MoM growth maintained 12 months, MRR reaches ~$270k
(ARR ~$3.2M) by April 2027. Series A positioning at $3M ARR is achievable without
heroic assumptions. Gross margin expansion to 75–78% expected as OXXO Pay volume
discounts kick in at $5M TPV (currently at $2.1M TPV).

**Burn:** $85k/month. Runway at $2.5M raise: 29 months. Bridge to Series A included.

---

## 7. Competitive Landscape

**Named competitors:**

| Competitor | Stage | Strength | Weakness vs PayGo |
|-----------|-------|---------|------------------|
| Conekta | Series B (~$30M raised) | Strong brand, card processing | No OXXO cash acceptance; enterprise-focused, SME under-served |
| Clip México | Series D ($250M+ raised) | POS hardware + payment rails | Hardware dependency; API-only model not a focus; PayGo CEO's former employer — knows the gaps |
| OpenPay (BBVA) | Corporate | Bank distribution | Bureaucratic onboarding (14 days vs PayGo 15 minutes); no WhatsApp integration |
| Stripe (entering LATAM) | IPO-stage | Global brand, developer-first | No OXXO integration; no SPEI-native; US-focused API design misses LATAM SME needs |

**PayGo structural advantage:** The OXXO Pay preferred API relationship is the only
moat here that matters in the 18-month window. Without OXXO cash acceptance, PayGo
is just another payment aggregator. With it, PayGo is the only Seed-stage fintech
with full OXXO integration and an SME-native onboarding flow. Conekta is the most
dangerous competitor — recommend asking the team: "What is Conekta's move to add
OXXO in the next 12 months?"

---

## 8. Risk Register

| Risk | Severity | Mitigation Thesis |
|------|---------|------------------|
| CNBV fintech license timeline (24-month requirement) | HIGH | Structure as SOFOM (Sociedad Financiera de Objeto Múltiple) — regulatory pathway reduces timeline from 18 months to ~60 days. Propose SOFOM registration as closing condition. Convertible structure (SAFE) protects Cóndor if licensing is delayed. |
| FX risk: USD tech costs (AWS, some engineering) + MXN revenue | MEDIUM | 82% of cost base is MXN-denominated (local dev team + Mexico City office). AWS costs ~$8k/month USD. Hedging not required at Seed; review at Series A when USD cost exposure may increase with Brazil expansion. *(LATAM, LAVCA 2025)* BRL/USD and MXN/USD: 15–30% annual volatility typical. |
| Competitor risk: Conekta / Clip aggressive pricing in SME segment | MEDIUM | OXXO exclusivity window: 18 months before a competitor could replicate the relationship. After Month 18, differentiation must shift to the SME analytics dashboard (in roadmap). Track Conekta SME product announcements quarterly. |
| Customer concentration: Top 5 customers = 22% of MRR | LOW | Below the 30% concentration red flag threshold *(US-sourced benchmark, a16z)*. Manageable at Seed; monitor at Series A. |
| OXXO partnership dependency (single strategic partner) | HIGH | This is both the moat AND the key risk. If OXXO changes commercial terms or launches competing product, PayGo's primary moat dissolves. Mitigation: negotiate 24-month pricing lock in SAFE close conditions. |

**LATAM Fund Context — Regulatory Note:**
CNBV fintech regulation in Mexico requires operating licenses for companies processing
>$150k USD/month in payment volume. PayGo is currently at ~$2.1M TPV/month —
approaching the threshold. The SOFOM structure used as a closing condition addresses
this directly and is the standard path for Seed-stage Mexican fintech companies
(Konfío, Clip, and Kueski all used this approach in their early rounds).

---

## 9. Investment Recommendation

### INVEST

**Proposed terms:**
- **Instrument:** Post-money SAFE (YC standard form)
- **Pre-money valuation cap:** $12,000,000
- **MFN clause:** Yes (Most Favored Nation)
- **Cóndor check size:** $500,000 (20% of $2.5M round)
- **Pro-rata rights:** Yes — right to participate in Series A up to Cóndor's pro-rata
  percentage (maintain 4.2% ownership)
- **Board:** Board observer seat (non-voting) for Cóndor GP
- **Information rights:** Monthly financials, quarterly board updates, cap table access

**Closing conditions:**
1. SOFOM registration filed with CNBV within 60 days of close
2. No material adverse change in OXXO Pay partnership terms prior to closing
3. Reference calls completed: 2 customers, 1 Clip México colleague, 1 OXXO Pay
   commercial contact (GP to conduct)

**Rationale for valuation:**
$12M pre-money at $45k MRR = 22× ARR multiple. *(LATAM, LAVCA 2025)* LATAM Seed
B2B fintech multiples range 10–25× ARR; 22× is in the upper half, justified by
18% MoM growth, strong LTV/CAC, and the OXXO moat. Comparable: Konfío raised at
similar multiples with comparable metrics in 2019. This is a fair entry price for
Cóndor Fund I given the moat quality.

**Fund I portfolio fit:**
This is Investment #6 of 14 planned. At $500k check, exposure is 2% of committed
capital — appropriate for a Seed deal with identified execution risk (CNBV timeline).
PayGo is the only payment infrastructure deal in the portfolio; no overlap with
existing positions.

---

## LATAM Fund Context Box

**FX risk assessment:**
PayGo México revenue is 100% MXN-denominated. AWS costs ($8k/month USD) represent
~9% of operating expense. At current scale, USD exposure is manageable. At Series A
($1M+ ARR), re-evaluate if hiring migrates to USD-denominated talent.
MXN/USD 2023 volatility: 8% annualized (relatively stable vs. BRL). FX risk: LOW
at current scale.

**Regulatory structure recommendation:**
SOFOM registration as closing condition is the standard approach for Mexican fintech
at this stage. Estimated cost: $15k–$25k legal fees. Timeline: 45–60 days. Adds
regulatory legitimacy that will be required for Series A institutional due diligence.
File with CNBV before close.

---

## Sources

- a16z: https://a16z.com/how-a16z-evaluates-startups/
- Sequoia Enduring Companies: https://www.sequoiacap.com/article/elements-of-enduring-companies/
- Banco de México: https://www.banxico.org.mx
- LAVCA 2025: https://www.lavca.org/wp-content/uploads/2025/08/LAVCA_Startup-Ecosystem-Insights_2025.pdf
- YC Metrics Guide: https://www.ycombinator.com/library/Fp-a-guide-to-startup-metrics
- a16z 16 Metrics: https://a16z.com/16-metrics/
