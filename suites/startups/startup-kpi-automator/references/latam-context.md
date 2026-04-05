# LATAM Context — KPI System

KPI-specific LATAM adjustments for startup-kpi-automator. Apply these
annotations to all US-sourced benchmarks in the output.

**Sources:**
- LAVCA 2025 Startup Ecosystem Insights:
  https://www.lavca.org/wp-content/uploads/2025/08/LAVCA_Startup-Ecosystem-Insights_2025.pdf
- Cuantico LatAm VC Report 2026:
  https://reports.cuanticovp.com/latin-america-vc-report-2026/
- Carta State of Private Markets (LATAM section):
  https://carta.com/blog/state-of-private-markets/

---

## CAC Payback Divergence

*(US-sourced benchmark, Bessemer Cloud Index)* CAC payback: 12–18 months is
"good" for B2B SaaS at Seed.

*(LATAM, Cuantico 2026)* CAC payback in LATAM: 6–12 months typical. 60% of
Brazilian SaaS companies recover CAC in less than 6 months. LATAM operators
have a structural CAC advantage driven by lower sales team costs and high
inbound pull from underserved market segments.

**Implication:** A LATAM B2B SaaS with 10-month CAC payback is performing
within the US "good" range but below the LATAM median. Flag this in output
and ask what is causing elevated CAC vs. LATAM peers.

---

## NRR as Primary PMF Indicator

*(LATAM, LAVCA 2025)* LATAM investors weight NRR heavily as the indicator of
product-market fit, more so than in the US where DAU/MAU and growth rate
carry equal weight.

A LATAM Seed company with NRR >100% will open Series A conversations that a
company with 30% MoM growth but NRR <90% will not. Prioritize NRR tracking
from day 1.

**Target:** NRR >100% is the LATAM Seed PMF signal. NRR >110% is exceptional
and will attract top-tier LATAM VCs (Softbank LATAM, Kaszek) at Seed.

---

## Growth Rate Expectations

*(US-sourced benchmark, YC)* Seed-stage SaaS: 20–30% MoM is the YC bar for
VC-backable early-stage growth.

*(LATAM, LAVCA 2025)* LATAM Seed investors expect 15–20% MoM from B2B SaaS
companies due to smaller initial addressable markets. An SMB software product
targeting Mexican accountants has a different TAM ceiling than a product
targeting US enterprise — growth acceleration typically comes at Series A when
cross-border expansion begins.

**Implication:** 15% MoM in LATAM at Seed is respectable. Below 10% requires
explanation. At 20%+ MoM with LATAM-focused product, the company has
outperformed the market.

---

## Reporting Frequency by LP Type

*(LATAM, LAVCA 2025)* LP base in LATAM is 35% family offices vs. 15% US.
Family offices prefer quarterly reporting cadence with in-person relationship
management. US-based VCs (Sequoia, a16z, Tiger) co-investing in LATAM rounds
expect monthly updates in standard format.

**Implication for KPI system design:**
- Build ONE monthly investor update (covers US VC co-investors)
- Family office LPs receive quarterly version (3 months of data in one email)
- Do not build separate systems; derive the quarterly from the monthly

---

## LATAM SaaS NRR and Valuation

*(LATAM, Cuantico 2026)* LATAM B2B SaaS companies with NRR >100% at Seed
attract 30% higher valuations compared to same-ARR peers with NRR <95%.
This premium reflects the difficulty of achieving expansion revenue in LATAM
SMB markets where budget cycles are constrained.

**Implication:** NRR is the highest-leverage KPI for LATAM Seed fundraising.
If only one metric gets automated and tracked weekly, it should be NRR.

---

## Fintech-Specific LATAM Context

*(LATAM, LAVCA 2025)* Fintech represents 61% of LATAM VC investment vs. 13%
globally. This creates two divergent dynamics:

1. **More capital available:** LATAM fintech companies can raise at Seed with
   lighter metrics than SaaS equivalents because investors are more familiar
   with the space
2. **More competition for capital:** Top LATAM fintech VCs (QED, Ignia,
   Monashees) see 10× more deal flow in fintech than SaaS; differentiation
   requires exceptional unit economics, not just growth

**LATAM fintech KPI priority at Seed:**
1. Default rate (if lending) — must be below 5% to be fundable
2. CAC payback — must show path to <12 months
3. Regulatory compliance cost as % of revenue — often overlooked; BCB and
   CNBV compliance costs can destroy margins if not tracked
