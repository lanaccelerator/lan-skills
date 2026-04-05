# Unit Economics Formulas — Definitions and Calculation Guide

**Primary source:** David Skok, SaaS Metrics 2.0
https://www.forentrepreneurs.com/saas-metrics-2/

**When to use:** Read this file BEFORE calculating any unit economics metric.
Branch to the correct model section based on the user's confirmed business model.

---

## SaaS Formulas

### CAC (Customer Acquisition Cost)

**Formula:** CAC = Total Sales & Marketing Spend in period ÷ New Customers Acquired in same period

**What to include in S&M spend (fully loaded):**
- Sales team salaries + commissions (fully loaded, including payroll tax, benefits)
- Marketing team salaries
- Paid advertising spend (Google, LinkedIn, Meta, etc.)
- Sales tools (CRM, outreach, enrichment tools)
- Trade shows, events, sponsorships
- Agency fees
- Allocated overhead proportional to S&M headcount

**Critical rules:**
- Use the SAME period for both numerator and denominator. If you spent $8,500 in April,
  count only customers acquired in April — not customers from a prior campaign.
- Common error: Using blended CAC (total S&M spend ever ÷ total customers ever). This
  understates CAC in growth phases and hides channel deterioration.
- Common error: Excluding salaries and counting only ad spend. Fully-loaded CAC is 2–4×
  higher than ad-spend-only CAC for most LATAM B2B SaaS companies.

### LTV (Customer Lifetime Value)

**Formula:** LTV = ARPA × Gross Margin % ÷ Monthly Churn Rate

**CRITICAL: This is gross-margin-adjusted LTV — NOT revenue × average lifetime months.**

- ARPA = Average Revenue Per Account per month
- Gross Margin % = (Revenue - COGS) ÷ Revenue × 100
  - COGS for SaaS includes: hosting, customer support (allocated), third-party APIs,
    data costs, payment processing. Does NOT include S&M, R&D, or G&A.
- Monthly Churn Rate = % of customers who cancel each month

**Alternative form:** LTV = (Gross Profit per customer per month) ÷ Monthly Churn Rate

**Why NOT revenue × lifetime:**

Revenue-based LTV = ARPA × (1 ÷ Churn Rate) months ignores that you keep only the
gross margin fraction of revenue after paying for service delivery. It overstates LTV
by 20–60% depending on gross margins. A SaaS with 50% gross margins sees 2× LTV
overstatement using revenue-based calculation.

**Common error:** LTV = $200/mo × 40 months = $8,000 (revenue-based)
**Correct:** LTV = $200 × 72% ÷ 2.5% = $5,760 (gross-margin-adjusted)

### LTV/CAC Ratio

**Formula:** LTV/CAC = LTV ÷ CAC

**Benchmarks by stage:**

| Stage | Minimum | Good | Exceptional |
|-------|---------|------|-------------|
| Pre-seed | Any positive | ≥1.5:1 | ≥3:1 |
| Seed | ≥1.5:1 | ≥3:1 | ≥5:1 |
| Series A | ≥3:1 | ≥5:1 | ≥8:1 |
| Series B+ | ≥5:1 | ≥8:1 | ≥10:1 |

*(Source: David Skok SaaS Metrics 2.0; top-quartile from Bessemer BVP)*

**If LTV/CAC < 1:1:** The business model destroys value. Every customer acquired results
in a net loss — more scale = more loss. Do not raise growth capital at this ratio.

**If LTV/CAC 1:1–3:1:** Business model viable but not yet venture-optimized. Acceptable
at Pre-seed/Seed with clear path to 3:1+ as gross margins improve or churn decreases.

### CAC Payback Period

**Formula:** CAC Payback (months) = CAC ÷ (ARPA × Gross Margin %)

**Interpretation:** Number of months of gross profit from a customer to recover acquisition cost.

**Benchmarks:**

| Stage | US Benchmark | LATAM Benchmark |
|-------|-------------|----------------|
| Seed | ≤24 months | ≤18 months |
| Series A | ≤18 months | ≤12 months |
| Series B | ≤12 months | ≤9 months |

*(US: OpenView SaaS Benchmarks; LATAM: Cuantico 2026)*

### Contribution Margin

**Formula:** Contribution Margin = Revenue − COGS − Variable Costs

**Per unit:** Contribution Margin per Customer = ARPA − Direct service COGS − Direct support cost

**As %:** Contribution Margin % = (Revenue − COGS − Variable Costs) ÷ Revenue × 100

**Note:** Contribution Margin is gross margin minus direct variable costs beyond COGS.
For many SaaS products, contribution margin ≈ gross margin. Where they diverge is in
per-customer support costs, per-transaction fees, or usage-based infrastructure costs.

### Break-Even

**Formula:** Break-Even MRR = Fixed Costs per month ÷ Contribution Margin %

**Result:** The MRR level at which the business covers all fixed costs from contribution
margin. Below this point, each period generates a net operating loss regardless of
unit economics quality.

---

## Marketplace Formulas

### CAC (Marketplaces)

Calculate separately for **buyers** and **sellers** — these are two different acquisition
motions with different CAC profiles.

- Buyer CAC = Buyer-side S&M spend ÷ New paying buyers acquired
- Seller CAC = Seller-side S&M spend ÷ New active sellers onboarded

If S&M spend is not split, use the combined approach:
- Blended CAC = Total S&M ÷ (New buyers + New sellers), then analyze ratio

### Revenue and LTV (Marketplaces)

- **Net Revenue** = GMV × Take Rate %
- **LTV per buyer** = (Average transaction value × Take Rate × Gross Margin on net revenue) ÷ Monthly transaction churn rate
- **Unit margin per transaction** = Transaction net revenue − Platform variable COGS (payment processing, infrastructure per transaction)

### Marketplace-Specific Benchmarks

| Metric | Seed | Series A |
|--------|------|---------|
| GMV Growth (YoY) | 3–5× | 2–3× |
| Take Rate | 5–20% | Stabilizing |
| Liquidity (demand met) | >50% | >70% |

*(Source: a16z marketplace benchmarks)*

---

## Transactional / E-commerce Formulas

### CAC

**Formula:** CAC = Total S&M spend ÷ New customers acquired in period

Include only S&M costs in numerator — not fulfillment or COGS.

### LTV (E-commerce / Transactional)

**Formula:** LTV = AOV × Gross Margin % × Repeat Purchase Frequency per month ÷ Monthly Attrition Rate

- AOV = Average Order Value
- Gross Margin % = (AOV − COGS − Shipping − Payment processing) ÷ AOV
- Repeat Purchase Frequency = average orders per active customer per month
- Monthly Attrition Rate = % of customers who do not reorder in 30-day window

### Contribution Margin Per Order

**Formula:** Contribution Margin per Order = AOV − COGS − Shipping − Payment processing fees

This is the true per-unit profit before S&M and fixed costs.

---

## Fintech Formulas

### Revenue Model

**Formula:** Net Revenue = TPV × Net Take Rate

- TPV = Total Payment Volume processed
- Net Take Rate = Gross take rate minus interchange, payment processing costs, banking fees
- LATAM context: Payment processing fees 2.5–3.5% vs 1.5–2.5% in US — compresses fintech
  margins structurally

### LTV (Fintech)

**Formula:** LTV = Monthly revenue per active user × Gross Margin % ÷ Monthly churn rate

**For lending products:** Subtract expected credit loss rate from LTV:
LTV (lending-adjusted) = LTV_base − (Expected loan volume × Default rate × Loss given default)

### Fintech-Specific Risk Metrics

- **Default Rate:** % of credit or lending facilities entering default. >5% is a red flag for
  early-stage fintech. Include this in any CAC/LTV analysis for lending products.
- **Net Revenue Margin on TPV:** Varies by model. Payments: 0.1–0.5%. Lending: 2–8%.
  Insurance: 15–30%. Understand which category your fintech falls into.

---

## Benchmark Summary Table

| Metric | Pre-Seed | Seed | Series A | Source |
|--------|---------|------|---------|--------|
| LTV/CAC | Any positive | ≥1.5:1 | ≥3:1 | David Skok SaaS Metrics 2.0 |
| CAC Payback (US, SaaS) | N/A | ≤24 months | ≤18 months | OpenView SaaS Benchmarks |
| CAC Payback (LATAM, SaaS) | N/A | ≤18 months | ≤12 months | Cuantico 2026 |
| Gross Margin (SaaS) | ≥50% | ≥60% | ≥65% | Bessemer BVP |
| Monthly Logo Churn | Any | ≤5% | ≤2% | Bessemer BVP |
| NRR (SaaS) | N/A | >100% | >110% | a16z / BVP |

---

## Sources

- David Skok SaaS Metrics 2.0: https://www.forentrepreneurs.com/saas-metrics-2/
- OpenView SaaS Benchmarks: https://openviewpartners.com/saas-benchmarks-report/
- Bessemer BVP Roadmap to Epiq: https://www.bvp.com/atlas/roadmap-to-epiq
- a16z 16 Metrics: https://a16z.com/16-metrics/
