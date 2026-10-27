# LATAM Pitch Deck Context

**When to use:** pitch-deck-builder reads this file before producing the final slide
outline to calibrate investor expectations, market sizing methodology, and comparable
companies for LATAM-specific fundraising contexts.

## Verified data (checked 27 Oct 2026)

Cite these with source and date. Anything else in this file marked **directional** is
LAN's read of the market, not a published benchmark: never present it as one.

| Fact | Figure | Source |
|------|--------|--------|
| LATAM VC invested 2025 | USD 4.13B across 681 rounds, +13.8% YoY; average ticket USD 6.1M | Cuantico, LatAm VC Report 2026 |
| Brazil + Mexico share 2025 | ~73% of dollars (Brazil USD 2.03B, Mexico USD 0.98B) | Cuantico 2026 |
| Brazil + Mexico share 2024 | 70% of dollars | LAVCA Trends in Tech 2025 |
| Sector share 2025 | Fintech 61% of dollars (29% of deals); SaaS 13% of dollars and deals | Cuantico 2026 |
| Median round size 2024 | Seed USD 0.5M; Series A USD 10M; Series B USD 25.5M | LAVCA Trends in Tech 2025 |
| Time between rounds | ~20 months on average, any stage | LAVCA Trends in Tech 2025 |
| Seed to Series A | 12% of seed startups raise a Series A within 3 years (2019-Q2 2024 cohorts) | LAVCA Startup Ecosystem Insights 2025 |
| Local investors | Local funds in 85% of seed and Series A rounds (2024) | LAVCA Trends in Tech 2025 |
| Early stage 2025 | USD 2.2B, 52% of total VC | LAVCA 2026 Trends in Tech (public summary) |

URLs:
- Cuantico LatAm VC Report 2026: https://reports.cuanticovp.com/latin-america-vc-report-2026/
- LAVCA Trends in Tech 2025: https://www.lavca.org/wp-content/uploads/2025/02/LAVCA_Trends-in-Tech-2025.pdf
- LAVCA Startup Ecosystem Insights 2025: https://www.lavca.org/wp-content/uploads/2025/08/LAVCA_Startup-Ecosystem-Insights_2025.pdf
- LAVCA 2026 Trends in Tech: https://www.lavca.org/research/2026-lavca-trends-in-tech/

None of these reports publishes LATAM traction thresholds by stage, valuation multiples,
a LATAM-vs-US discount, LTV/CAC or CAC payback benchmarks. Those figures below are
**directional**.

---

## LATAM Investor Expectations by Stage

### Pre-seed (<$750k raise)

- Investors are buying the team and the thesis — product and traction are nice-to-have
- **Minimum threshold:** Demonstrated domain expertise + specific "why this team" story
- **Market sizing:** Qualitative acceptable; country-specific is preferred over
  "LATAM market" framing
- **Comparables:** Point to 1–2 LATAM companies that raised pre-seed in the same sector
  (not US comparables: LATAM caps sit well below US medians at the same stage, directional)
- **Typical range (directional):** $25k–$750k raise; $3M–$10M post-money cap on SAFE

### Seed ($750k–$3M raise)

- Investors expect evidence of PMF or strong leading indicators
- **What gets a LATAM seed funded (directional, LAN read):** paying customers with
  retention that holds (month-3 retention >60%), revenue growing ~10%+ per month, and
  validators (investors already in, closed paying logos). The median LATAM seed round
  was USD 0.5M in 2024 (LAVCA Trends in Tech 2025), so most "seed" rounds here are small.
- **Market sizing:** Bottom-up SAM calculation required. ICP count × ACV.
  Brazil + Mexico data specifically called out if those are target markets.
- **Unit economics:** LTV/CAC ≥3:1 is the common floor investors cite (directional);
  ≥5:1 reads as strong
- **Typical range (directional):** $750k–$3M raise; pre-money well below the US median
  (Carta seed median USD 16M pre in 2025, US-sourced benchmark)

### Series A ($3M–$15M raise)

- Investors are buying a proven business model and a clear path to $50M+ ARR
- **What investors look for (directional):**
  - $1M–$5M ARR
  - MoM growth ≥10% (top decile: 15%+)
  - Net revenue retention ≥100% for SaaS
  - Cohort retention charts with at least 12 months of data
- **Unit economics:** Full YC Series A diligence checklist compliance expected —
  CAC by channel, LTV by cohort, gross margin by product line
- **Comparable companies:** LATAM Series A comps essential; US comps as benchmark
  context only (not as valuation anchor)
- **Typical range:** median LATAM Series A round USD 10M in 2024 (LAVCA Trends in
  Tech 2025); pre-money directional

---

## Market Sizing Methodology for LATAM Decks

### The Brazil + Mexico First Rule

About 73% of 2025 LATAM VC dollars went to Brazil and Mexico *(Cuantico 2026)*.
A deck claiming "LATAM market = $X billion" without Brazil/Mexico data will fail
diligence. Correct approach:

1. Start with Brazil TAM (if relevant) with source: IBGE, Banco Central do Brasil
2. Add Mexico TAM with source: INEGI, CNBV
3. State other countries as "expansion markets in years 3–5" — do not include
   in SAM calculation unless you have distribution there today
4. Bottom-up only: ICP count (# of businesses or users matching your profile)
   × ACV or monetization metric = SAM

### Why Top-Down TAM Claims Fail LATAM Diligence

- "The global X software market is $50B" — LATAM capture of global software
  markets is typically 5–10% (fragmented, lower ACV, currency headwinds)
- "The LATAM fintech market is $500B" — this includes banks, payments networks,
  insurance, and stock exchanges; a SaaS founder claiming $500B TAM will lose
  credibility in the first 5 minutes
- Correct framing: "We are targeting 4.9M formal SMEs in Mexico with >5 employees
  (INEGI 2024). Our ICP is the top 20% by digital banking adoption = 980k businesses.
  At $240 ACV = $235M SAM. This is a fundable Seed TAM."

### Sector-Specific Market Sizing Notes

**Fintech:**
- Fintech took 61% of LATAM VC dollars in 2025 *(Cuantico 2026)* and in 2024 *(LAVCA Trends in Tech 2025)*
- Overvaluation risk: every LATAM fintech claims "the unbanked population" as TAM.
  Underbanked ≠ your customer if your product requires smartphone + internet +
  digital onboarding. Filter the TAM to your actual ICP.

**B2B SaaS:**
- SaaS took ~13% of LATAM VC dollars in 2025 *(Cuantico 2026)*: less capital chasing
  B2B software, which cuts both ways (fewer competitors, fewer follow-on investors)
- ACV in LATAM is usually well below US for equivalent products (directional):
  calibrate revenue projections to local pricing, not US SaaS benchmarks

**E-commerce / Marketplace:**
- Brazil has the highest e-commerce penetration in LATAM (~10% of retail)
- Mexico market is large (2nd in LATAM) but logistics infrastructure still developing
- Colombia, Chile growing but require separate distribution strategies

---

## Common LATAM Pitch Deck Mistakes

### Mistake 1: Using US Comparables as Valuation Anchors

"We're like Salesforce for LATAM SMEs, so we're worth 15× ARR."

Reality: LATAM rounds price below US medians at the same stage and growth. No 2025-2026
report we could verify quantifies the gap, so do not quote a percentage. What is verified:
the median LATAM seed round was USD 0.5M and Series A USD 10M in 2024 (LAVCA Trends in
Tech 2025), against US Carta medians of USD 4.1M and USD 14.4M (Carta, Jul 2026).

**Fix:** Use 2-3 LATAM comparable rounds with source and date. If you reference a US
comp, label it `(US-sourced benchmark)` and treat it as the ceiling, not the anchor.

### Mistake 2: Claiming Global TAM Without LATAM Specificity

"The global accounting software market is $15B. We're targeting LATAM, which is 10%
of that = $1.5B TAM."

Reality: LATAM's share of a given global software market depends entirely on the
product, pricing model, and distribution — it is never simply "10% of global."
More importantly, investors care about SAM (serviceable), not TAM.

**Fix:** Bottom-up. ICP count × ACV. Country-level data.

### Mistake 3: Skipping the LATAM Comparable Companies Slide (or Subsection)

International investors evaluating LATAM deals expect LATAM comparables — not to
size the market, but to establish that companies in this space have been funded,
scaled, and in some cases exited in LATAM.

**Fix:** Include 2–3 LATAM comparables with: company name, country, last known
ARR or user count, most recent funding round. Examples:
- Conta Azul (Brazil, SMB cloud ERP): acquired by Visma for about USD 300M, Aug 2025
  (Visma press release; LAVCA industry news): exit comparable
- Alegra, Siigo, Contifico, Defontana: verify current funding and ownership on Crunchbase
  or press releases at run time before citing any figure

### Mistake 4: Ignoring FX in Financial Projections

Revenue in local currency, VC returns in USD. A projection in BRL or MXN
without a USD equivalent and FX assumption will cause diligence confusion.

**Fix:** Always show ARR in USD equivalent. State FX assumption and as-of date.
For Brazil: note BRL/USD volatility as a risk factor with a mitigation (USD-denominated
contracts with larger customers).

### Mistake 5: Pre-seed Deck That Looks Like Series A Deck

Pre-seed investors in LATAM back teams and theses. A 15-page deck with cohort
analysis and unit economics for a pre-revenue company looks desperate and
misunderstands what the investor needs to decide.

**Fix:** Pre-seed deck = 8–10 slides max. Focus: Problem story, team origin,
vision, and a 90-day plan to prove the thesis. Metrics can be "here's what we'll
measure" rather than "here's our current traction."

---

## LATAM Stage Benchmarks Reference Table (directional)

| Stage | Typical Check (USD) | What investors look for | Notes |
|-------|---------------------|-------------------------|-------|
| Pre-seed | $25k–$750k | Team + thesis + first users | SAFE standard |
| Seed | median $0.5M (LAVCA 2024); $750k–$3M for VC-led | Paying customers, retention, ~10%+ MoM growth | Priced or SAFE |
| Series A | median $10M (LAVCA 2024) | $1M+ ARR, NRR ≥100%, 12 months of cohorts | Only 12% of seeds reach it within 3 years |
| Series B | median $25.5M (LAVCA 2024) | $10M+ ARR; scalable CAC | International co-investors typical |

Medians: LAVCA Trends in Tech 2025 (2024 data). Graduation rate: LAVCA Startup Ecosystem
Insights 2025. Everything else in the table is directional.
