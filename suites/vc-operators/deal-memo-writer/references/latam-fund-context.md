# LATAM Fund Context — IC Memo Considerations

**Sources:**
- LAVCA: https://www.lavca.org
- Banco de México: https://www.banxico.org.mx
- Brazilian Central Bank (BACEN): https://www.bcb.gov.br
- LAVCA 2025 Startup Ecosystem Insights:
  https://www.lavca.org/wp-content/uploads/2025/08/LAVCA_Startup-Ecosystem-Insights_2025.pdf
**License/Attribution:** Data from public regulatory and fund industry sources.
**When to use:** deal-memo-writer reads this file before finalizing any IC memo for a
LATAM deal. Contains FX risk assessment methodology, regulatory environment by country,
LATAM operator experience standards, and exit environment context.

---

## 1. FX Risk Assessment

**When mandatory:** Any deal where the portfolio company has USD-denominated costs AND
local-currency revenue. This is the most common structural risk in LATAM B2B SaaS.

**Common USD cost exposure in LATAM startups:**
- Tech talent billed in USD (US-hired engineers, offshore teams contracted in USD)
- Cloud infrastructure (AWS, GCP, Azure — all USD-denominated)
- SaaS tooling (Salesforce, HubSpot, Stripe, Intercom — USD billing)
- US-entity operating costs (Delaware incorporation, US bank accounts)

**Typical LATAM FX impact in devaluation year:**
- 15–40% margin compression for companies with 30–60% USD cost base
- Brazil BRL/USD: 15–25% average annual volatility; peak devaluation years
  (2020, 2023): 30%+ depreciation
- Mexico MXN/USD: 8–15% average annual volatility; more stable than BRL
- Colombia COP/USD: 10–20% average annual volatility
- Argentina ARS/USD: Extreme — ARS has depreciated 60–90%+ in multiple years;
  Argentina deals must be structured separately with USD-indexed contracts or
  USD pricing. Do not apply standard LATAM FX analysis to Argentina deals.
- Chile CLP/USD: 10–18% average annual volatility

**Mitigation options (assess which apply to each deal):**

| Mitigation | Reduces Risk By | Notes |
|-----------|----------------|-------|
| Local hiring (MXN/BRL/COP salaries) | HIGH | Most effective; 60–80% of costs shift to local currency |
| USD-denominated customer contracts | HIGH | Shifts FX risk to customer; acceptable for enterprise, hard for SME |
| Partial currency hedging (forward contracts) | MEDIUM | Expensive at Seed/Series A; practical at Series B+ |
| Multi-country revenue base | LOW | Diversifies FX exposure but does not eliminate it |
| USD pricing for all customers | HIGH | Optimal structure for VC-backed company; requires customer acceptance |

**FX risk severity guide:**
- HIGH: >40% of costs are USD-denominated AND revenue is local-currency-only
- MEDIUM: 20–40% of costs USD-denominated; some hedging or local hiring in progress
- LOW: <20% of costs USD-denominated; or revenue is USD-denominated

**FX risk in the Risk Register:** ALWAYS include FX risk for deals with USD cost
exposure. Label severity honestly. "Manageable" is not a mitigation thesis — name
the specific action (e.g., "Hire CTO replacement in São Paulo vs. San Francisco to
shift $240k/year salary from USD to BRL").

---

## 2. Regulatory Environment by Country

**Critical principle:** LATAM regulatory timelines are typically 3–5× longer than US
equivalents. A US regulatory timeline assumption applied to a LATAM deal will produce
materially wrong financial projections. When the company provides a regulatory
timeline, double it for IC memo conservatism.

### Mexico

| Regulatory Body | Domain | What It Controls | Key Timeline Issue |
|----------------|--------|-----------------|-------------------|
| CNBV | Fintech, investment services | Operating licenses for companies accepting/processing payments >threshold | Full fintech license: 12–24 months. SOFOM alternative: 45–90 days. |
| COFEPRIS | Health | Medical devices, health apps, telemedicine | Health app authorization: 6–18 months depending on risk classification |
| SAT | All B2B companies | Tax compliance, electronic invoicing (CFDI) | CFDI 4.0 is now mandatory (Jan 2024); non-compliance = SAT audit risk |
| Cofece | All sectors | Antitrust / competition | Acquisition clearance: 3–6 months above filing threshold |

**Mexico fintech path:** SOFOM (Sociedad Financiera de Objeto Múltiple) is the
standard structure for Seed/Series A Mexican fintech companies before obtaining a
full CNBV operating license. Used by Konfío, Clip, Kueski in early rounds.
Filing cost: $15k–$25k legal fees. Timeline: 45–90 days.

### Brazil

| Regulatory Body | Domain | What It Controls | Key Timeline Issue |
|----------------|--------|-----------------|-------------------|
| BACEN | Fintech, payments | Payment institution license (IP), electronic money institution (IE) | IP authorization: 6–18 months. Payment Initiator (PI) license for Open Finance: 3–6 months |
| ANVISA | Health | Medical devices, health apps, diagnostics | Class II medical device: 12–24 months. Health app without diagnostic function: 3–6 months |
| LGPD (ANPD enforcement) | All B2B SaaS | Brazilian GDPR equivalent | LGPD affects all B2B SaaS handling Brazilian personal data. ANPD enforcement began 2021. Non-compliance fines: up to 2% of Brazil revenue (max R$50M per violation). |
| CADE | All sectors | Antitrust / competition | M&A clearance above threshold: 90–240 days |

**Brazil LGPD note:** Every B2B SaaS deal in Brazil must include LGPD compliance
assessment in the Risk Register. This is not optional. Investors that fail to flag
LGPD exposure before Series A will be flagged in post-money due diligence.

**Brazil PIX:** Brazil's instant payment system (2020 launch) is mandatory
infrastructure context for any Brazil payment or fintech deal. PIX processes 4B+
transactions/month. Any fintech not natively supporting PIX is structurally behind.

### Colombia

| Regulatory Body | Domain | What It Controls |
|----------------|--------|-----------------|
| SFC (Superintendencia Financiera) | Fintech, investment services | Financial services licenses |
| SDS (Superintendencia de Salud) | Health | Health service provider authorization |
| Habeas Data law | All companies | Colombian data protection; similar to GDPR but less comprehensive than LGPD |
| SIC (Superintendencia de Industria y Comercio) | All sectors | Consumer protection, antitrust |

**Colombia fintech note:** SFC regulatory timeline for fintech licenses: 8–18 months.
Sandbox program available for early-stage companies — recommend all Colombian fintech
deals use SFC sandbox path to defer full licensing while operating.

### Argentina

**Special case: structure separately.** ARS/USD devaluation history makes standard
LATAM analysis inapplicable. Recommendations for Argentina deals:
- All contracts in USD or USD-indexed (no ARS contracts)
- Revenue recognized in USD regardless of billing currency
- FX risk severity: EXTREME (not HIGH/MEDIUM/LOW scale)
- Regulatory uncertainty is an additional layer — political and regulatory environment
  changes with each administration cycle
- Only include Argentina in portfolio if the business model is explicitly designed
  to operate under ARS devaluation (e.g., USD-priced export-focused product)

---

## 3. LATAM Operator Experience Assessment

**The standard:** Prior US startup experience is insufficient evidence of LATAM market
operator capability. The relevant question is not "has this founder built a startup?"
but "has this founder sold to LATAM customers, navigated LATAM regulatory environments,
or scaled a LATAM-native product?"

**What counts as LATAM operator experience:**

| Experience Type | Qualifies? | Notes |
|----------------|-----------|-------|
| Prior startup/scaleup at LATAM company (Brazil, Mexico, Colombia, etc.) | YES | Even at early stage |
| B2B sales to LATAM enterprise buyers (LATAM companies as customers) | YES | Must be sustained, not one deal |
| Navigated LATAM regulatory environment (CNBV, BACEN, SFC, ANPD) | YES | Practical experience, not theory |
| LATAM-specific investor/customer/talent network | YES | Meaningful warm intro network |
| US startup experience | NO | Valuable but not LATAM operator experience |
| Studying abroad in LATAM | NO | Academic, not operational |
| "Customer base includes LATAM" at US company | NO | Geography of customers ≠ LATAM market operation |
| Selling to US companies from LATAM | NO | LATAM cost base, not LATAM market experience |

**IC memo phrasing:** Use one of these explicit judgments:
- "LATAM operator experience: CONFIRMED — [specific evidence]"
- "LATAM operator experience: PARTIAL — [what exists + what is missing]"
- "LATAM operator experience: NOT CONFIRMED — [risk implication]"

**When NOT CONFIRMED is acceptable:** Early-stage pre-revenue deals where the team
demonstrates clear intent to hire LATAM market expertise before Series A. Acceptable
only with explicit hiring condition in investment terms.

**When NOT CONFIRMED is disqualifying:** Series A+ deals. B2B enterprise sales in
LATAM. Any deal where regulatory navigation is a primary execution requirement.

---

## 4. Exit Environment Context

**M&A activity:**
LATAM M&A buyer universe is thinner than US. Strategic acquirers are limited to:
- Large LATAM conglomerates (Grupo Bancolombia, Grupo Bimbo, WEG, etc.) — typically
  $50M–$300M deal sizes; slow processes
- US tech companies entering LATAM (Visa, Mastercard, SAP, Oracle LATAM) — acquisition
  requires US corp dev involvement; 12–24 month processes
- LATAM unicorns as acqui-hire/consolidation plays (Nubank, Mercado Libre, Rappi,
  Gympass/Wellhub) — faster; strategic fit required

**IPO:**
- Brazil B3 exchange: Viable for companies with $500M+ valuation and $100M+ revenue.
  Brazilian company listing on B3 is possible but rare for tech at <$500M. ADR on
  NYSE/NASDAQ remains the primary exit for large LATAM tech.
- Mexico BMV / BIVA: Limited tech IPO track record. Most LATAM tech companies target
  US markets for liquidity.
- Colombia, Chile, Argentina: Minimal viable tech IPO market at any scale.
- Practical guideline for fund modeling: Build for acquisition or US NYSE/NASDAQ IPO
  at Fund II / Fund III horizon. B3 secondary exit is possible for large exits.

**Secondary market:**
Minimal secondary market for LATAM startup equity. LATAM venture secondary buyers
are sparse (Tiger Global, Kaszek occasionally participate in secondary rounds at
Series C+). Do not model secondary exits in LP return projections for Seed deals.

**Return modeling note:**
For a $25M LATAM fund like Condor Fund I, a $500k Seed check that returns $5M+ (10×)
on a $50M–$100M acquisition is a fund-returner on an individual deal basis. Most
LATAM exits are acquisitions in the $20M–$150M range — not IPOs. Model accordingly.
A $150M acquisition at 20% Condor ownership = $30M return on $500k invested = 60×
gross return. This is the math that justifies LATAM Seed concentration.

---

## Sources

- LAVCA 2025: https://www.lavca.org/wp-content/uploads/2025/08/LAVCA_Startup-Ecosystem-Insights_2025.pdf
- Banco de México: https://www.banxico.org.mx
- Brazilian Central Bank (BACEN): https://www.bcb.gov.br
- CNBV Mexico: https://www.cnbv.gob.mx
- ANPD Brazil (LGPD enforcement): https://www.gov.br/anpd
- SFC Colombia: https://www.superfinanciera.gov.co
- B3 Brazil Exchange: https://www.b3.com.br
