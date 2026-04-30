# Unit Economics Calculator — Output Template

ALWAYS use this exact structure. Every section is required. Do not change column
headings. Fill every cell with real numbers — no "TBD" or "N/A" without explanation.

---

## Example Output: PayRoll MX

*This is a filled example for PayRoll MX — a Mexico City B2B SaaS for SME payroll
processing, $22k MRR, 110 customers, Series Seed stage. Use it as the structural
template for every unit economics analysis.*

---

# Unit Economics Analysis: PayRoll MX

**Date:** April 2026
**Stage:** Seed
**Business Model:** B2B SaaS (payroll processing for Mexican SMEs)
**Analyzed by:** LAN Skills via Claude

---

## Inputs Provided

| Input | Value |
|-------|-------|
| MRR | $22,000 |
| Active customers | 110 |
| ARPA/mo | $200 |
| Monthly churn rate | 2.5% |
| Gross margin | 72% |
| Monthly S&M spend | $8,500 |
| New customers last month | 18 |
| Stage | Seed |

---

## LTV Calculation Note

**[RED FLAG] Revenue-based LTV error caught:** User initially calculated LTV = $200 × 40 months
(average customer lifetime) = $8,000. This is the most common unit economics error in LATAM
pitches — revenue-based LTV ignores that not all revenue is profit. Corrected to
gross-margin-adjusted:

> LTV = ARPA × Gross Margin % ÷ Monthly Churn Rate
> LTV = $200 × 72% ÷ 2.5% = **$5,760**

Revenue-based LTV overstated value by 39%. Every VC that has seen >10 pitches catches
this error. Always use gross-margin-adjusted LTV.

---

## Unit Economics Dashboard

| Metric | Your Number | Benchmark | Source | Status |
|--------|------------|-----------|--------|--------|
| CAC | $472 | — | Calculated | — |
| LTV (gross-margin-adjusted) | $5,760 | — | David Skok | — |
| LTV/CAC | 12.2:1 | ≥3:1 | David Skok / OpenView | ABOVE |
| CAC Payback | 3.3 months | ≤18 months (Seed) | OpenView | ABOVE |
| Gross Margin | 72% | ≥65% SaaS | Bessemer BVP | ABOVE |
| Monthly Churn | 2.5% | ≤2% (Series A) | Bessemer | WATCH |

**Calculations shown:**

- CAC = $8,500 (S&M spend) ÷ 18 (new customers) = **$472**
- LTV = $200 × 72% ÷ 2.5% = **$5,760**
- LTV/CAC = $5,760 ÷ $472 = **12.2:1**
- CAC Payback = $472 ÷ ($200 × 72%) = **3.3 months**
- Contribution Margin = ~68% (gross margin minus direct CS costs estimated at 4 points)
- Annual break-even = $38,000 fixed costs ÷ 68% = **$55,882 MRR** needed to cover fixed costs

---

## Red Flags

No disqualifying red flags at this stage. One metric on watch:

- **[WATCH] Monthly churn at 2.5%** is within acceptable range for Seed but above the
  Series A threshold of ≤2%. At current MRR of $22k, losing 2.5% monthly = $550/mo in
  churned revenue. Reducing churn to 1.5% would increase LTV from $5,760 to $9,600 —
  a 67% improvement in LTV/CAC without any change to acquisition cost.

---

## LATAM Context

- **CAC payback — US benchmark:** 12–18 months is "good" *(US-sourced benchmark, Bessemer Cloud Index)*
- **CAC payback — LATAM:** 6–12 months typical; 60% of Brazilian SaaS recover CAC in <6 months
  *(LATAM, Cuantico 2026)*. PayRoll MX's 3.3-month payback is exceptional even by LATAM
  standards — LATAM structural advantage from lower S&M costs is fully realized here.

- **Monthly churn — US benchmark:** ≤1% monthly at Series A for enterprise SaaS
  *(US-sourced benchmark, Bessemer)*
- **Monthly churn — LATAM:** ≤2.5% monthly is within range for early LATAM SaaS; contracts
  less standardized, economic volatility higher. Must trend toward ≤1.5% before Series A raise
  to US-comparable benchmarks *(LATAM, Cuantico 2026)*. PayRoll MX's 2.5% is acceptable at
  Seed but requires active reduction.

- **Gross margin — LATAM note:** LATAM SaaS gross margins similar to US (70–80%) when
  infrastructure is cloud-native. PayRoll MX's 72% is on target *(LATAM, Cuantico 2026)*.

- **Pricing opportunity:** LATAM SaaS is chronically underpriced — median ARPA 40–60% below
  equivalent US product. At $200/mo, PayRoll MX has pricing upside. A 20% price increase to
  $240/mo raises LTV to $6,912 without touching CAC. Run a pricing test before raising.
  *(LATAM, Cuantico 2026)*

---

## Interpretation

PayRoll MX's unit economics are genuinely strong for Seed stage. A 12.2:1 LTV/CAC ratio
puts this in the top decile of LATAM SaaS — the kind of number that triggers competitive
Series A processes. The 3.3-month CAC payback means the company does not need to raise large
amounts of capital to fund growth; every customer acquired becomes profitable in one quarter.

The one number to address before Series A is monthly churn. At 2.5%, PayRoll MX is within
acceptable Seed range but will face scrutiny from Series A investors who expect to see a
trajectory toward ≤2% annually (equivalent to ≤1.5% monthly). The path is product-led
retention: reduce the manual steps in payroll processing that cause customers to disengage,
and build proactive success touchpoints at the 90-day mark where early churn concentrates.

The unit economics support a Series A raise at current trajectory. Raise on the strength of
LTV/CAC and payback; be prepared to show churn trending down quarter-over-quarter.

---

## Next Steps

1. **Reduce monthly churn from 2.5% to 1.5% within 6 months.** Analyze your 30 churned
   customers from the last quarter: what was the last feature they used, what support ticket
   preceded the cancellation? Build a 90-day onboarding checklist that forces completion of
   the 3 features most correlated with 12-month retention.

2. **Run a 20% price increase test on all new customers.** At $240/mo ARPA, LTV rises to
   $6,912 with no change to CAC. LATAM SaaS is systematically underpriced relative to value
   delivered. Price before raising — diluting equity to fund growth at underpriced ARPA is
   the most expensive way to scale.

3. **Document CAC by channel before your Series A deck.** Your blended CAC is $472 but
   Series A investors will ask about paid vs organic vs referral split. If 60% of new
   customers come via referral at near-zero CAC, that story is worth more than the blended
   number.

4. **Track NRR (Net Revenue Retention).** You have the churn data. Add expansion tracking
   (upsells to larger payroll tiers). NRR above 110% is the most powerful Series A signal
   in SaaS — it means existing customers fund growth even before acquiring new ones.

---

## Sources

- David Skok SaaS Metrics 2.0: https://www.forentrepreneurs.com/saas-metrics-2/
- OpenView SaaS Benchmarks: https://openviewpartners.com/saas-benchmarks-report/
- Bessemer BVP Roadmap to Epiq: https://www.bvp.com/atlas/roadmap-to-epiq
- Cuantico LatAm VC Report 2026: https://reports.cuanticovp.com/latin-america-vc-report-2026/
- LAVCA 2025 Startup Ecosystem Insights: https://www.lavca.org/wp-content/uploads/2025/08/LAVCA_Startup-Ecosystem-Insights_2025.pdf
