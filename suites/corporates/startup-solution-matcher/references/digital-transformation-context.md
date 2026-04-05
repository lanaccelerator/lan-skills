# Digital Transformation Context — Startup Evaluation Methodology

**Source:** Digital Transformation 2025 (references/digital-transformation-2025.pdf) — Technology Evaluation chapter.
**Scope for this skill:** CB Insights market map methodology + Gartner evaluation framework + startup procurement evaluation criteria.
**NOT this skill's scope:** Open innovation / Chesbrough framework (see open-innovation-scanner), CVC readiness (see corporate-venture-evaluator).

---

## CB Insights Market Map Methodology

**Source:** https://www.cbinsights.com/research/report/startup-corporate-partnerships/

CB Insights market map approach for corporate startup shortlisting:

**Four-step process:**

1. **Problem → Solution Category:** Define the business problem precisely, then identify the solution category (e.g., "reduce invoice fraud" → "accounts payable automation with anomaly detection"). This prevents shortlisting the wrong category of startup.

2. **Solution Category → Sub-categories:** Break the solution category into specific technology sub-categories (e.g., "AP automation" → ML-based fraud detection / OCR invoice capture / ERP connector layers / approval workflow automation). Map one startup archetype per sub-category.

3. **Filter by stage and enterprise readiness:** CB Insights classifies companies by funding stage and enterprise customer count. For corporate procurement, minimum viable filter = Series A+ funding AND 5+ enterprise customers (or 3+ Fortune 500 / LATAM equivalent).

4. **Geographic filter:** Prioritize startups with LATAM presence (office, legal entity, or named LATAM customer reference). US-only startups require US subsidiary contracting (average 5-month setup vs. 6-8 weeks for LATAM-native vendors).

**Market map limitations for LATAM:**
- CB Insights coverage of LATAM startups is incomplete — supplement with LAVCA database and local ecosystem reports
- Funding stage data for LATAM startups lags 3-6 months behind actual rounds
- Enterprise customer counts for LATAM startups are often underdisclosed — require direct reference check

---

## Gartner Hype Cycle — Technology Phase Assessment

**Source:** https://www.gartner.com/en/research/hype-cycle

Gartner Hype Cycle provides a standardized framework to assess where a startup's underlying technology sits in the adoption curve. This directly determines procurement risk:

| Phase | Enterprise Risk | Procurement Implication |
|-------|----------------|------------------------|
| Innovation Trigger | Very High | No enterprise references, no integration patterns established, high implementation failure rate |
| Peak of Inflated Expectations | High | Hype exceeds results; vendors oversell; proof-of-concept failure rate ~60% |
| Trough of Disillusionment | Medium | Surviving vendors have real customers; technology works but expectations are calibrated; good time to pilot |
| Slope of Enlightenment | Low | Enterprise integration patterns established; implementation playbooks exist; 2-3× faster deployment |
| Plateau of Productivity | Very Low | Commodity; commoditized technology should be licensed, not piloted; avoid innovation theater |

**Decision rule:**
- Technology at "Innovation Trigger" or "Peak": Do NOT procure for a critical business problem. Too high implementation risk.
- Technology at "Trough" or "Slope": Good procurement window. Reference customers exist. Integration patterns known.
- Technology at "Plateau": Use License/API instead of startup partner. Build-or-buy from established vendors.

**Relevant Gartner 2024-2025 positions for LATAM corporate procurement:**
- Generative AI for enterprise applications: Peak of Inflated Expectations → HIGH RISK for 2025 pilots
- Computer vision for retail/manufacturing: Slope of Enlightenment → Good procurement window
- Predictive analytics (churn, demand): Plateau of Productivity → License from established vendors
- RPA (robotic process automation): Plateau of Productivity → License tier only
- Conversational AI / chatbots: Trough of Disillusionment → Pilot with caution, reference-heavy evaluation

---

## Plug and Play Corporate Matching Methodology

**Source:** https://www.plugandplaytechcenter.com/corporate/

Plug and Play's 3-phase evaluation model for corporate-startup matching — used by 500+ corporate innovation programs globally:

**Phase 1: Fit Assessment (2-4 weeks)**
- Does the startup solve the stated problem? (not "is it interesting?")
- Does the startup have an enterprise customer reference in the same sector?
- Can the startup produce a signed NDA and preliminary scope document within 2 weeks?

Failure at Phase 1 = do not proceed. Do not spend procurement resources on a startup that cannot pass Phase 1.

**Phase 2: Pilot Design (4-8 weeks)**
- Can the startup run a 90-day pilot with defined success metrics?
- Is there an integration path with the corporate's existing stack (APIs documented)?
- Are legal/commercial terms within the corporate's standard procurement framework?

**Phase 3: Commercial Terms (4-12 weeks)**
- Is the startup's pricing within budget (LATAM pilot average: $50-150k USD)?
- Does the startup have a LATAM legal entity (or acceptable US subsidiary structure)?
- Can the startup provide SLA commitments and enterprise support terms?

**LATAM-specific addition to Phase 2:** Verify fiscal invoice compliance (NF-e Brazil, CFDI Mexico, e-invoicing Colombia) before Phase 3. A startup that cannot issue a compliant invoice in the corporate's market cannot be paid — a common and preventable contract failure.

---

## Enterprise Readiness Criteria for Corporate Procurement

Minimum enterprise readiness requirements for a startup to be shortlisted for corporate procurement (not accelerator/pilot exploration):

| Criterion | Minimum Bar | Premium Bar |
|-----------|-------------|-------------|
| Data security | SOC 2 Type I | SOC 2 Type II (preferred) |
| Enterprise references | 3+ named enterprise customers | 10+ enterprises, at least 1 in same sector |
| Customer success | Named CSM contact in contract | Dedicated CSM for pilot, 4-hour response SLA |
| SLA | Response time defined in contract | Uptime SLA + credits for violation |
| Legal | Standard MSA available (corporate template accepted) | Legal review completed < 4 weeks |
| LATAM | US subsidiary contracting accepted | LATAM legal entity + local fiscal compliance |

**Note:** SOC 2 Type II is the data security standard for enterprise procurement. Startups without it cannot pass corporate IT security review in financial services, healthcare, or telecoms sectors in LATAM.

---

## LATAM Corporate Pilot Data

**Source:** McKinsey LATAM Corporate Innovation 2024

Key statistics for calibrating shortlist and procurement expectations:

- **65% of corporate-startup pilots in LATAM involve a startup with no LATAM legal entity** → average 5-month contract setup overhead
- **Startups with LATAM customer references close corporate pilots 3× faster** than US-only startups
- **LATAM enterprise pilot budget average: $50-150k USD** (vs. $200-500k for equivalent US enterprise pilots)
- **Pilot-to-production conversion rate:** ~18% in LATAM (vs. ~25% globally) — design pilots with conservative scale criteria
- **Top reason LATAM pilots fail (ranked):**
  1. No internal corporate champion with budget authority (38%)
  2. Integration complexity exceeded IT team capacity (29%)
  3. Startup could not meet LATAM fiscal invoice compliance (18%)
  4. Budget consumed by procurement overhead before pilot started (15%)
