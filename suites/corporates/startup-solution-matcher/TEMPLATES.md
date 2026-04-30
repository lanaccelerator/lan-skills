# Startup Solution Matcher — Output Template

This file contains the canonical output format for the startup-solution-matcher skill.
Fill every section with real analysis. Do not change section headings, table columns,
or field order. This example is fully worked through.

---

## Example Output: FEMSA Digital — OXXO Inventory Shrinkage

---

## Problem Definition

**Company:** FEMSA Digital (Monterrey, Mexico) — Digital innovation division of FEMSA/OXXO
**Internal Champion:** Carlos Ávila, Digital Innovation Manager (reports to CTO)
**Problem Statement (refined):** Reduce inventory shrinkage at OXXO convenience stores by
20% within 12 months through real-time computer vision shelf monitoring integrated with
the existing SAP inventory management system.
**Success Metric:** 20% reduction in shrinkage rate across 50-store pilot by Month 12.
**Kill Criteria:** Less than 10% shrinkage reduction at Month 6 → pilot terminated.
**Pilot Budget:** $80,000 USD (hardware + software + integration + legal)
**Geographic Scope:** Mexico only (Monterrey pilot, potential CDMX expansion)

---

## Startup Shortlist

| Archetype | Example Companies | Strategic Fit (1–5) | LATAM Availability (1–5) | Integration Complexity (1–5) | Enterprise Readiness (1–5) | Est. Pilot Cost (USD) | Recommendation |
|-----------|-------------------|--------------------|--------------------------|-----------------------------|---------------------------|----------------------|----------------|
| Computer vision shelf monitoring (AI-native) | Focal Systems (US), Trigo (Israel), Invistics (US) | 5 | 1 — no LATAM entity | 4 — SAP integration required | 4 — 20+ enterprise customers | $60-120k | [RED FLAG] — no LATAM entity; US contracting adds 5 months |
| LATAM-native IoT sensor + analytics | Particle/Losant resellers in Mexico, Canaán IoT (MX) | 3 | 5 — Mexico entity, CFDI capable | 3 — IoT sensors, API required | 2 — 2-3 enterprise customers | $40-80k | [RED FLAG] — enterprise readiness too low for FEMSA scale |
| Internal IoT + Qualcomm partner build | Qualcomm partner (Intraway or equivalent) | 4 | 5 — Mexico presence | 5 — requires full internal build | 5 — established integrator | $150-300k | Exceeds pilot budget; reserve for full rollout if pilot succeeds |

---

## Procurement Red Flags

**[RED FLAG] Archetype 1 — No LATAM Legal Entity:**
Focal Systems, Trigo, and Invistics are US-incorporated with no Mexico or LATAM legal entity.
Contracting must go through US parent → FEMSA accounts payable requires a CFDI-compliant
invoice from a Mexico RFC. US companies cannot issue CFDI. This creates a payment processing
block that no purchase order approval can resolve. Estimated contract setup: 5-7 months
including Mexico subsidiary incorporation OR acceptance of 15% withholding tax on cross-border
services payment (requires Mexican tax authority pre-approval).

**[RED FLAG] Archetype 2 — Enterprise Readiness Too Low:**
LATAM-native IoT vendors in the shelf monitoring category average 2-3 enterprise customers
— none at the scale of OXXO's 20,000 stores. A 50-store pilot with a vendor at enterprise
readiness 2/5 means FEMSA Digital's IT team is effectively QA for the product. Add $30-40k
to budget for integration debugging and vendor support gaps.

---

## Innovation Theater Indicators

**[THEATER] Missing C-Suite Sponsorship:**
Carlos Ávila reports to a cross-functional innovation committee — not directly to the CTO or
CEO. FEMSA has 20,000 OXXO stores. A pilot that requires store operations buy-in at this scale
without a C-Suite executive sponsor will not survive the procurement committee. The innovation
committee can approve a $30k feasibility study; it cannot approve an 8-figure rollout. If this
pilot is designed to scale, a named C-Suite executive (CTO or COO of OXXO Operations) must be
the sponsor before any startup engagement begins.

**NESTA LATAM Corporate Innovation Study 2023:** Pilots without C-level champions fail at 3×
the rate of champion-led pilots.

---

## LATAM Context

> **LATAM Procurement Reality (McKinsey LATAM Corporate Innovation 2024):**
> - 65% of LATAM corporate-startup pilots involve a startup with no LATAM legal entity →
>   average 5-month contract setup overhead
> - Startups with LATAM customer references close pilots 3× faster
> - OXXO's scale (20,000 stores) requires enterprise readiness 4/5 minimum — the addressable
>   LATAM-native supply for computer vision at this readiness level is ~5-8 companies globally
> - LATAM enterprise pilot average: $50-150k USD — the $80k budget is feasible for a 50-store
>   pilot with a LATAM-native vendor, but not sufficient for a US-based vendor with LATAM entity setup costs

---

## Recommended Path

**Recommended Archetype:** Archetype 1 (Computer Vision AI-native) with US-based startup,
but ONLY if the following procurement conditions are met:

1. Startup must have LATAM entity established OR accept FEMSA's 15% withholding tax structure
   before contract signature (not after)
2. CFDI-compliant invoice capability confirmed before RFI shortlist
3. SAP integration API documentation available within 10 business days of RFI response

**Alternative if Archetype 1 fails procurement conditions:** Revert to Archetype 3 (Qualcomm
partner build) and revise budget upward to $150-200k for a 100-store pilot. The build path has
higher upfront cost but zero LATAM entity risk and full CFDI compliance via FEMSA's existing
vendor relationships.

---

## Next Steps

1. **Secure C-Suite sponsor within 30 days.** Request that Carlos Ávila escalate to the CTO of
   OXXO Operations for executive sponsorship. No external startup engagement should begin until
   this sponsor is confirmed and has signed off on the pilot success criteria (20% shrinkage
   reduction at 6 months).

2. **Issue RFI to top 3 computer vision shortlisted startups (Focal Systems, Trigo, and 1
   LATAM-vetted alternative) within 14 days.** RFI must require: (a) LATAM legal entity
   confirmation OR acceptance of withholding tax structure, (b) CFDI invoice capability,
   (c) SAP integration API documentation, and (d) minimum 2 enterprise retail references.

3. **Evaluate LATAM-native alternative within 30 days.** Request demos from 2-3 LATAM-native
   IoT/shelf monitoring vendors. If any achieve enterprise readiness 3+/5 with OXXO references,
   they move to the top of the shortlist regardless of technical sophistication.

4. **Confirm IT team bandwidth allocation.** Computer vision integration with SAP is complexity
   3-4/5. Before issuing the RFI, confirm that FEMSA IT has 1 dedicated integration engineer
   available for 3 months. If not, either reduce complexity requirement or delay pilot start.

5. **Define procurement timeline realistically.** If C-Suite sponsor is secured in 30 days and
   RFI responses arrive in 14 days, the earliest realistic contract signature (for US-based
   vendors) is 5-7 months from today — not 90 days. Pilot start Q3 2026 is realistic.
   Q1 2026 is not.
