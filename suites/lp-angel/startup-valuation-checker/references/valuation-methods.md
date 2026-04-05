# Startup Valuation Methods Reference

**Purpose:** Five-method reference for startup-valuation-checker Step 2. Each method
is independent — show each calculation separately. Triangulate qualitatively across
applicable methods. Do not blend into a weighted average.

**When to use:** startup-valuation-checker — loaded in Step 2 to apply the appropriate
valuation methods for the startup's stage and revenue status.

---

## Method 1: Revenue Multiple (Damodaran)

**Applies to:** Pre-seed (if any ARR/MRR), Seed, Series A+. Skip for pre-revenue companies.

**Mechanism:** Multiply current ARR by the median revenue multiple for the startup's
stage, sector, and geography.

**LATAM-adjusted multiples (Cuantico 2026 / LAVCA 2025):**

| Stage    | Sector        | US Multiple (2024) | LATAM Multiple | Source |
|----------|---------------|--------------------|----------------|--------|
| Pre-seed | SaaS          | 5–8× ARR           | 3–5× ARR       | Cuantico 2026 |
| Seed     | SaaS          | 6–10× ARR          | 4–6× ARR       | Cuantico 2026 |
| Series A | SaaS          | 8–15× ARR          | 5–8× ARR       | LAVCA 2025 |
| Seed     | Fintech       | 8–12× ARR          | 5–8× ARR       | LAVCA 2025 (+20–30% to SaaS) |
| Seed     | Edtech        | 4–6× ARR           | 2–4× ARR       | LAVCA 2025 (post-pandemic contraction) |
| Seed     | Healthtech    | 5–8× ARR           | 3–5× ARR       | LAVCA 2025 |
| Seed     | Logistics     | 3–5× ARR           | 2–3× ARR       | Cuantico 2026 |

**LATAM discount explanation:** LATAM revenue multiples are 30–50% below US peers at
the same growth rate (LAVCA 2025). This reflects: (1) lower exit multiples in regional
M&A; (2) fewer IPO paths; (3) longer time-to-exit; (4) higher FX risk. Not a quality
discount — a market pricing norm.

**Fintech LATAM premium:** Add 20–30% to the SaaS multiple for LATAM fintech startups
with regulatory moat (CNBV license in Mexico, BACEN accreditation in Brazil). Regulated
fintech faces higher barriers to entry — the moat is worth a premium.

**Calculation:**
```
Implied pre-money = Current ARR × LATAM median multiple for stage/sector
```

**Example:**
```
EduSign Brasil — $420k ARR, Seed, SaaS (e-signature for schools)
LATAM SaaS Seed multiple: 4× (median)
Implied pre-money = $420k × 4 = $1.68M
```

**Source:** https://pages.stern.nyu.edu/~adamodar/ (Damodaran valuation data, updated annually)

---

## Method 2: Comparable Transactions

**Applies to:** Pre-seed, Seed, Series A+. Especially useful when LATAM sector comparables exist.

**Mechanism:** Identify 3–5 comparable LATAM startup funding rounds at similar stage and
sector. Build a comparables table. Extract implied pre-money and revenue multiple.
Triangulate against the ask.

**LATAM comparable data guidance:**
- Use named LATAM companies from LAVCA 2025, Cuantico 2026, Crunchbase LATAM filters,
  and PitchBook LATAM data
- Prefer comparables within the same country/region when possible
- Flag if comparables are from a different vintage (2021–2022 LATAM bull market comps
  are not applicable in 2025–2026)

**LATAM sector comparables (representative, not exhaustive):**

| Company    | Country | Sector   | Stage | ARR at Raise (est.) | Pre-money | Multiple |
|------------|---------|----------|-------|---------------------|-----------|----------|
| Konfío     | Mexico  | Fintech  | Seed  | $1.2M               | $8M       | 6.7×     |
| Alegra     | Colombia| SaaS/ERP | Seed  | $800k               | $4.5M     | 5.6×     |
| Tul        | Colombia| B2B Mkt  | Seed  | Pre-rev             | $3.5M     | N/A      |
| Fintoc     | Chile   | Fintech  | Seed  | $300k               | $4M       | 13.3×    |
| Nuvemshop  | Brazil  | E-commerce| Series A | $3M            | $18M      | 6×       |

*(Apply directly from LAVCA/Cuantico data when available. Adjust for vintage: post-2023
market correction applies a 25–40% discount vs. 2021–2022 peak multiples.)*

**Calculation:**
```
Implied pre-money = Comparable pre-money adjusted for relative ARR/traction
Revenue multiple range = [low comparable] to [high comparable] × current ARR
```

**Source:** PitchBook LATAM data + LAVCA 2025 + Crunchbase LATAM filters

---

## Method 3: Berkus Method (Pre-Revenue Only)

**Applies to:** Pre-revenue companies ONLY. If company has any ARR/MRR, skip this method.

**Mechanism:** Dave Berkus' method assigns value to 5 qualitative risk factors. Each factor
reduces startup risk. Maximum valuation is the sum of all factors at full credit.

**Risk factors and maximum credit (LATAM-adjusted):**

| Risk Factor               | Max Value (US) | Max Value (LATAM) | Basis |
|---------------------------|----------------|-------------------|-------|
| Sound idea (basic value)  | $500k          | $250k             | LAVCA pre-revenue median |
| Working prototype         | $500k          | $250k             | Proof of concept reduces tech risk |
| Quality management team   | $500k          | $250k             | Team execution reduces team risk |
| Strategic relationships   | $500k          | $250k             | Partnerships reduce market risk |
| Product rollout / sales   | $500k          | $250k             | Early traction reduces financial risk |

**Maximum pre-revenue valuation:**
- US: $2.5M (all 5 factors at full credit)
- LATAM: $1.25M (all 5 factors at full credit)

**LATAM adjustment rationale:** LAVCA 2025 pre-revenue median pre-money is $1.5–3M in
LATAM (vs. $3–6M US). The $250k/factor cap reflects LATAM market reality for pre-revenue
companies. Use $300–400k/factor only for LATAM companies with US co-investors or
exceptional team backgrounds (prior exits, top-tier accelerator).

**Calculation:**
```
Implied pre-money = Sum of credits assigned to each factor (0 to $250k LATAM each)
```

**Source:** Dave Berkus https://berkus.com/the-berkus-method/

---

## Method 4: Bill Payne Scorecard

**Applies to:** Pre-seed and Seed. Useful as a cross-check when comparable transactions exist.

**Mechanism:** Score the startup against regional averages. Multiply regional average
pre-money by the scorecard index to get implied pre-money.

**LATAM regional average pre-money (LAVCA 2025):**
- Pre-seed average: $4M pre-money
- Seed average: $8M pre-money

**Six factors with weights:**

| Factor                         | Weight |
|--------------------------------|--------|
| Strength of management team    | 30%    |
| Size of the opportunity        | 25%    |
| Product / technology           | 15%    |
| Sales channels / go-to-market  | 10%    |
| Stage of business              | 10%    |
| Other (IP, competitive moat)   | 10%    |

**Scoring each factor:** Rate each factor on a scale of 0.0 to 2.0:
- 0.0: Well below average
- 0.5: Below average
- 1.0: Average (regional benchmark)
- 1.5: Above average
- 2.0: Exceptional

**Calculation:**
```
Scorecard index = Σ(factor weight × factor score)
Implied pre-money = Regional average pre-money × scorecard index
```

**Example:**
```
Pre-seed Seed startup in Colombia with strong team, large market, early product
Team: 1.5 × 30% = 0.45
Opportunity: 1.5 × 25% = 0.375
Product: 1.0 × 15% = 0.15
Channels: 0.5 × 10% = 0.05
Stage: 1.0 × 10% = 0.10
Other: 1.0 × 10% = 0.10
Scorecard index = 1.225
Implied pre-money = $4M × 1.225 = $4.9M
```

**Source:** Bill Payne https://billpayne.com/2011/01/04/scorecard-valuation-methodology/

---

## Method 5: DCF (Series A+ Only)

**Applies to:** Series A and beyond — only when 3+ years of revenue data or reliable
projections exist. Do NOT apply at pre-seed or seed.

**Mechanism:** Discount future free cash flows (or terminal value) at a risk-adjusted
rate reflecting LATAM venture risk.

**LATAM DCF parameters:**

| Parameter              | LATAM Range        | US Range         | Notes |
|------------------------|--------------------|------------------|-------|
| Projection horizon     | 7–10 years         | 7–10 years       | Longer for LATAM due to slower scale |
| Terminal growth rate   | 3–5% (conservative)| 3–5%             | GDP growth proxy; lower for LATAM FX risk |
| Discount rate (WACC)   | 25–35%             | 15–25%           | LATAM venture risk premium = +10% |
| Terminal value weight  | 80–90% of total    | 70–85% of total  | Early-stage DCF is mostly terminal value |

**Critical DCF warning for early-stage companies:**

At Seed stage, DCF is almost entirely terminal value speculation. A 1% change in the
discount rate (25% vs. 26%) changes the implied valuation by 15–25%. A 1% change in
the terminal growth rate changes it by similar magnitude. Report DCF as:
"DCF implies [range] — highly sensitive to terminal assumptions; treat as directional
only, not as a stand-alone valuation anchor."

**Only use DCF at Series A+ when:**
- 2+ years of actual revenue exist
- Revenue growth rate is observable and stable
- Unit economics (LTV/CAC, gross margin) are measurable

**Source:** Damodaran Applied Corporate Finance: https://pages.stern.nyu.edu/~adamodar/pdfiles/acf4E/presentations/startupval.pdf
