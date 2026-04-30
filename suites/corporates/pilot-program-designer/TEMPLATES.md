# Pilot Program Designer — Template

## Template: Pilot Program Document

This template shows the exact output format. Fill every field. Do not leave placeholders.
Use the Claro Colombia / TechBot IA example below as the reference for tone, specificity,
and structure.

---

## Pilot Program Document

**Prepared by:** [Innovation Director Name]
**Date:** [Date]
**Status:** Draft — Awaiting Kill Criteria Sign-Off

---

### 1. SMART Problem Statement

**[One paragraph. Metric-based. Time-bounded. Specific to business unit and customer segment.]**

**Example:**
Reduce Tier 1 support ticket resolution time from 48 hours to 12 hours for internet
connectivity issues in the Bogotá residential segment (Claro Colombia, Customer
Experience Management). Current median: 48 hours, measured via ServiceNow ticket data from
Q4 2025. Target: 12 hours median by Day 60 of pilot. Evaluation date: April 15, 2026.
Startup: TechBot IA (Bogotá, AI customer service routing, 3 enterprise customers including
ETB and Movistar Colombia).

---

### 2. KPI Dashboard Design

| Metric | Current Baseline | Target | Failure Threshold | Measurement Method | Frequency | Type |
|--------|-----------------|--------|-------------------|-------------------|-----------|------|
| Tier 1 resolution time (median) | 48 hours | ≤12 hours | >30 hours | ServiceNow ticket export | Weekly | Lag |
| Customer satisfaction (CSAT) | 3.8/5.0 | ≥4.2/5.0 | <3.5/5.0 | Post-resolution survey | Biweekly | Lag |
| AI escalation rate to human agents | 68% | ≤25% | >40% | TechBot IA dashboard | Weekly | Lead |

**Notes:** 3 KPIs maximum for a 90-day pilot. Resolution time is the primary KPI — the
others are directional. CSAT measures customer impact; escalation rate is the lead
indicator that predicts resolution time trajectory.

---

### 3. Timeline

**Phase 0 (Pre-Pilot): 60 days before Day 1**

| Action | Owner | Deadline | Status |
|--------|-------|----------|--------|
| NDA signed | Legal + Jorge Méndez | 2 weeks before Day 1 | Pending |
| MSA / pilot agreement signed | Legal + TechBot IA | Day -14 | Pending |
| Confirm TechBot IA DIAN invoice compliance (CUFE) | Finance + TechBot IA | Day -21 | Pending |
| IT security review completed | IT Security + TechBot IA | Day -14 | Pending |
| ServiceNow API access granted to TechBot IA | IT (1 engineer, 40 hours) | Day -7 | Pending |
| DPA (Data Processing Agreement) signed | Legal + CRC review | Day -14 | Pending |

**Phase 1 — Integration and Training (Days 1–30):**
- Days 1–14: ServiceNow integration + TechBot IA training data ingestion (historical ticket data)
- Days 15–21: Internal UAT (user acceptance testing) — 50 tickets/day in test environment
- Days 22–30: Soft launch — 200 tickets/day from Bogotá residential segment only

**Midpoint Go/No-Go Gate (Day 60):**
- Kill criteria applied (see Section 5)
- Decision: GO (proceed to full launch) or NO-GO (terminate pilot)
- Decision authority: Jorge Méndez + VP Technology

**Phase 2 — Full Launch (Days 31–60):**
- Days 31–45: Scaled launch — 500 tickets/day; weekly performance review
- Days 46–60: Full launch — 2,000 tickets/day; biweekly KPI review with Jorge Méndez

**Phase 3 — Evaluation (Days 61–90):**
- Days 61–75: Performance analysis + commercial negotiation (if GO at Day 60 gate)
- Days 76–90: Final evaluation + commercial decision

**Final Decision Gate (Day 90):**
- Full KPI review vs. kill criteria
- Commercial proposal evaluation
- GO: proceed to commercial contract | NO-GO: terminate and document learnings

---

### 4. Budget Breakdown

| Category | Amount (USD) | Notes |
|----------|-------------|-------|
| TechBot IA pilot fee (90 days) | $40,000 | Includes implementation + license; confirmed in pilot term sheet |
| Internal IT resources | $28,000 | 1 engineer × 60 days × $450/day blended rate |
| Legal and compliance | $17,000 | MSA drafting, DIAN confirmation, DPA, CRC review, IT security review |
| Internal project management | $5,000 | Innovation team coordination overhead |
| Contingency (10%) | $9,000 | Integration delays, scope creep, additional IT hours |
| **Total** | **$99,000** | Within approved budget range |

**Budget note:** This budget covers internal resource costs. The $40k startup fee is the
minimum viable pilot cost; LATAM enterprise procurement typically adds $25–50k in legal
and IT overhead that founders and corporates alike routinely underestimate.

---

### 5. Kill Criteria Table

**MANDATORY. This section cannot be removed or deferred. If kill criteria are not defined
before pilot start, the pilot should not begin.**

| Metric | Success Threshold | Failure Threshold | Decision Date | Decision Authority |
|--------|-----------------|-------------------|---------------|-------------------|
| Resolution time (median) | ≤12 hours by Day 60 | >30 hours at Day 60 | April 15, 2026 | Jorge Méndez (Customer Experience Manager) + VP Technology |
| Customer CSAT | ≥4.2/5.0 by Day 60 | <3.5/5.0 at Day 60 | April 15, 2026 | Jorge Méndez |
| AI escalation rate | ≤25% of tickets by Day 45 | >40% at Day 45 | March 31, 2026 | IT Lead + Jorge Méndez |

**Kill criteria interpretation:**
- If ALL success thresholds are met at Day 60 → GO: proceed to commercial contract negotiation
- If ANY failure threshold is triggered → NO-GO: pilot terminated, learnings documented
- If results are between success and failure thresholds → WATCH: 30-day extension with
  accelerated KPI review; final decision by Day 90

**Note on this pilot design:** This design includes explicit kill criteria. Approximately 40%
of Claro Colombia corporate pilots historically lack kill criteria, resulting in programs that
run 12–18 months without a commercial outcome (BCG LATAM 2024). This pilot will not repeat
that pattern.

---

### 6. Governance

| Role | Person | Responsibility |
|------|--------|----------------|
| Internal Champion | Jorge Méndez, Customer Experience Manager | Day-to-day pilot owner; escalation point for TechBot IA; weekly standup lead |
| Executive Sponsor | VP Technology (to be named before Day 1) | Kill criteria sign-off; commercial negotiation authority; escalation from Jorge Méndez |
| IT Point of Contact | [IT Engineer Name] | ServiceNow API access, integration support, 40 hours allocated for Phase 1 |
| Legal Point of Contact | [Legal Counsel Name] | Contract review, DPA, CRC compliance |
| TechBot IA Contact | [CEO or CTO name] | Product delivery, integration, KPI reporting |

**Weekly standup:** Every Monday, 30 minutes. Jorge Méndez + TechBot IA lead + IT point of contact.
**Monthly review:** Jorge Méndez + VP Technology + TechBot IA CEO. KPI dashboard review + trajectory assessment.
**Escalation path:** Jorge Méndez → VP Technology → Chief Digital Officer (for budget or legal escalations)

---

### 7. Risk Register

| Risk | Probability | Impact | Mitigation |
|------|------------|--------|-----------|
| ServiceNow API integration takes longer than 14 days | HIGH | HIGH | Pre-allocate IT engineer 2 weeks before Day 1; request ServiceNow API documentation from Claro IT before contract signature |
| TechBot IA cannot issue DIAN-compliant invoices | MEDIUM | HIGH | Confirm CUFE compliance before MSA signature; if non-compliant, TechBot IA must complete DIAN registration (4–8 weeks) before pilot start |
| CRC data protection review delays pilot start by 60+ days | MEDIUM | MEDIUM | Initiate DPA review in Phase 0, not Day 1; engage Claro legal team 8 weeks before pilot start |

---

### 8. LATAM Context

**Telecommunications sector regulatory context (Colombia):**

- **CRC oversight:** Colombia's Comisión de Regulación de Comunicaciones (CRC) governs
  customer data handling in telecoms. Pilots involving customer interaction data require
  DPA review before live data is shared with a third party. Add to Phase 0.
- **SIC (Superintendencia de Industria y Comercio):** Data protection authority.
  Habeas Data (Ley 1581/2012) applies to customer PII — ticket data contains account
  identifiers that qualify as PII. TechBot IA must operate as a data processor (not controller).
- **DIAN invoice compliance:** TechBot IA must register with DIAN and obtain CUFE
  (Código Único de Factura Electrónica) before issuing invoices to Claro. Without CUFE,
  invoices are invalid and cannot be processed by Claro's accounts payable.
- **Telecom zombie pilot rate:** 28% of Colombian telecom corporate pilots become zombies
  (BCG LATAM 2024). The most common cause: IT integration delays consume pilot time,
  leaving no data to evaluate, and the corporate team delays the NO-GO decision.

---

### 9. Next Steps

1. **Confirm TechBot IA can issue Colombian e-invoices (DIAN CUFE-compliant) before contract
   signature** — request invoice compliance documentation from TechBot IA within 5 business
   days. If non-compliant, add 6-week DIAN registration to Phase 0 timeline.

2. **Name the VP Technology executive sponsor and schedule kill criteria sign-off meeting**
   — kill criteria table must be reviewed and approved by executive sponsor before pilot
   agreement is signed. Target: within 10 business days.

3. **Request ServiceNow API documentation and technical specification from Claro IT** —
   share with TechBot IA for integration scoping. IT engineer must be allocated before
   contract signature, not after.

4. **Initiate CRC/SIC data protection review** — engage Claro legal team to begin DPA
   review and SIC consultation. Do not wait for contract signature; start the clock now.
   Target completion: 6 weeks from today.

5. **Schedule kickoff meeting with TechBot IA CEO, Jorge Méndez, IT lead, and Legal** —
   align on Phase 0 timeline, integration access requirements, invoice compliance, and
   kill criteria thresholds before any work begins. Target: within 2 weeks.

---

*This pilot design complies with Wayra 90-day POC framework and includes explicit kill
criteria per Techstars Corporate Innovation standards. Pilot estimated start: [Date].
Estimated GO/NO-GO decision: April 15, 2026.*
