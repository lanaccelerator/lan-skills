# LATAM Unit Economics Context

**Apply these annotations AFTER calculating metrics using the formulas in
[unit-economics-formulas.md](unit-economics-formulas.md).**

These figures are sourced from the LATAM VC industry's two most current reports.
Do not substitute with generic "emerging market" assumptions.

**Primary sources:**
- Cuantico LatAm VC Report 2026: https://reports.cuanticovp.com/latin-america-vc-report-2026/
- LAVCA 2025 Startup Ecosystem Insights: https://www.lavca.org/wp-content/uploads/2025/08/LAVCA_Startup-Ecosystem-Insights_2025.pdf

**Annotation protocol:** For every US benchmark presented, immediately follow with the
LATAM-adjusted figure. Use these exact labels:
- `(US-sourced benchmark, [source])` for US figures
- `(LATAM, Cuantico 2026)` or `(LATAM, LAVCA 2025)` for LATAM figures

---

## CAC and CAC Payback

### LATAM CAC Structural Advantage

LATAM B2B SaaS companies have a structural CAC advantage over US peers driven by
lower sales and marketing team costs:

- **SDR (Sales Development Rep) salaries:** $12,000–$25,000/year in LATAM vs
  $55,000–$80,000/year in US (OTE)
- **Account Executive salaries:** $25,000–$50,000/year in LATAM vs
  $100,000–$200,000/year in US (OTE)
- **Engineering talent for product-led growth:** 40–60% lower than US Silicon Valley rates

**Result:** Fully-loaded S&M costs are 40–60% lower in LATAM than equivalent US companies,
directly compressing CAC.

### CAC Payback Benchmarks

| Market | Seed | Series A | Exceptional |
|--------|------|---------|-------------|
| US | ≤24 months | ≤18 months | ≤12 months |
| LATAM | ≤18 months | ≤12 months | ≤6 months |

*(LATAM figures: Cuantico 2026; US figures: OpenView SaaS Benchmarks)*

**Annotation to use:**
> CAC payback: 12–18 months is "good" *(US-sourced benchmark, Bessemer Cloud Index)*
> CAC payback in LATAM: 6–12 months typical; 60% of Brazilian SaaS recover CAC in <6 months
> *(LATAM, Cuantico 2026)* — LATAM structural advantage

---

## Churn and Retention

### LATAM Churn Context

Early LATAM SaaS companies face higher churn than US enterprise SaaS peers due to:
- Contracts less standardized (more month-to-month, fewer annual prepay commitments)
- SME customer base with higher economic volatility (FX, inflation, regulatory changes)
- Lower CS budgets limiting proactive retention programs
- Product immaturity in earlier-stage companies

### Churn Benchmarks

| Stage | US Enterprise SaaS | LATAM Early SaaS |
|-------|-------------------|-----------------|
| Pre-seed | N/A | Any |
| Seed | ≤5% monthly | ≤7% monthly (within range) |
| Series A | ≤2% monthly | ≤3% monthly (within range) |
| Series B | ≤1% monthly | ≤2% monthly (within range) |

*(US: Bessemer BVP; LATAM: Cuantico 2026, LAVCA 2025)*

**Trajectory requirement:** LATAM churn tolerance is higher at Seed, but trajectory toward
US-equivalent benchmarks is required before a Series A from international funds. A company
at 5% monthly churn at Seed must show a credible path to ≤2% by Series A.

**Annotation to use:**
> Monthly churn 3–7% at Seed is within LATAM range *(LATAM, Cuantico 2026)* but must trend
> toward ≤2% before Series A raise to meet international fund benchmarks
> *(US-sourced benchmark, Bessemer)*

---

## Gross Margins

### SaaS Gross Margins

LATAM SaaS gross margins are comparable to US when infrastructure is cloud-native
(AWS, GCP, Azure with LATAM-region instances):

| Category | LATAM Range | US Range | Notes |
|----------|------------|---------|-------|
| Pure SaaS (cloud-native) | 70–82% | 72–85% | Similar to US; LATAM hosting slightly cheaper |
| SaaS with local integrations | 60–72% | 68–80% | Government APIs, local banking add COGS |
| SaaS with human-in-loop | 45–65% | 50–70% | Offshore LATAM support is cost-efficient |

### Fintech Gross Margins (LATAM-specific compression)

LATAM fintech companies face structural margin compression vs US peers due to
local payment infrastructure costs:

| Cost Category | LATAM Rate | US Rate | Impact |
|--------------|-----------|---------|--------|
| Payment processing | 2.5–3.5% of transaction | 1.5–2.5% | ~1% net margin compression |
| PIX/SPEI/OXXO integration | $0.05–$0.20 per transaction | N/A (US ACH cheaper) | Fixed cost per transaction |
| Banking API fees (Open Finance) | Variable by bank | Lower in US | LATAM banking fragmentation adds COGS |
| Regulatory compliance overhead | Higher as % of revenue | Lower % at scale | LATAM compliance is manually intensive |

**Result:** LATAM fintech gross margins typically run 15–30 percentage points below
equivalent US fintech at same scale. This is structural, not operational.

**Annotation to use:**
> LATAM fintech gross margins: expect 40–55% vs 55–70% for equivalent US fintech
> *(LATAM, Cuantico 2026)* — compression driven by PIX/SPEI/banking API costs, not operational inefficiency

---

## Pricing Context

### LATAM SaaS Underpricing

LATAM SaaS is systematically underpriced relative to the value delivered:

- LATAM median ARPA is 40–60% below equivalent US product at same stage
- Primary cause: founders price against local SME willingness-to-pay (perceived lower
  than reality) rather than value-based pricing
- Secondary cause: fear of losing early customers prevents price increases

**Implication for unit economics:** If unit economics look healthy at current LATAM price,
a 20–30% price increase is often the fastest lever to improve LTV/CAC before raising capital.
Diluting equity to fund growth at underpriced ARPA is the most expensive scaling strategy.

*(LATAM, Cuantico 2026)*

**When to flag pricing opportunity:**
- LTV/CAC > 5:1 at current ARPA → strong signal of underpricing
- CAC payback < 6 months → potential room for price increase without destroying payback
- Churn < 2% despite pricing → customers are price-insensitive; test higher price

---

## FX and Revenue Denomination

### USD vs Local Currency Revenue

LATAM SaaS founders raising from US-denominated VC funds face FX risk:

- **USD-denominated revenue:** Best for fundraising narrative; removes FX uncertainty
- **Local currency revenue:** Common for government-regulated pricing or SME contracts;
  creates FX translation risk for VC reporting
- **Mixed:** Most common; document % of revenue in USD vs local currency

**Impact on LTV calculation:** If ARPA is in local currency, LTV must be converted at
current FX rate with a note that historical LTV may differ. VCs will adjust for FX
when comparing to portfolio companies.

*(LAVCA 2025 risk factors: FX volatility as primary LATAM investment risk)*

---

## Fundraising Benchmarks (LATAM Context)

Connecting unit economics to fundraising stage expectations:

| Stage | LTV/CAC Needed | CAC Payback | Monthly Churn |
|-------|---------------|-------------|---------------|
| Seed (LATAM) | ≥1.5:1 (any positive strong) | ≤18 months | ≤5% |
| Series A (LATAM) | ≥3:1 | ≤12 months | ≤3% |
| Series A (international fund) | ≥3:1 | ≤12 months | ≤2% |
| Series B (LATAM) | ≥5:1 | ≤9 months | ≤2% |

*(LATAM, Cuantico 2026 + LAVCA 2025)*

**Note:** International funds (Sequoia, a16z, Tiger Global) apply US benchmarks even
to LATAM investments at Series A+. LATAM-local funds (Kaszek, ALLVP, Monashees) apply
LATAM-adjusted benchmarks through Series A.

---

## Sources

- Cuantico LatAm VC Report 2026: https://reports.cuanticovp.com/latin-america-vc-report-2026/
- LAVCA 2025 Startup Ecosystem Insights: https://www.lavca.org/wp-content/uploads/2025/08/LAVCA_Startup-Ecosystem-Insights_2025.pdf
- LAVCA Trends in Tech 2025: https://www.lavca.org/wp-content/uploads/2025/02/LAVCA_Trends-in-Tech-2025.pdf
- OpenView SaaS Benchmarks: https://openviewpartners.com/saas-benchmarks-report/
- Bessemer BVP Roadmap to Epiq: https://www.bvp.com/atlas/roadmap-to-epiq
