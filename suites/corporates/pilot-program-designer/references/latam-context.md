# LATAM Corporate Pilot Operational Context

**Source:** Compiled from BCG LATAM 2024, Wayra program data, DIAN/SAT/SFC regulatory
sources, and NESTA LATAM Corporate Innovation Study 2023.
**When to use:** Read by pilot-program-designer during Step 6 (LATAM context). Apply
LATAM-specific adjustments to every pilot timeline, budget, and risk register.

## Invoice Compliance (Pre-Pilot Gate)

Startup must be able to issue tax-compliant invoices in the corporate's country before
receiving any payment. This is a hard prerequisite — failure blocks the first payment
regardless of pilot results. Confirm before contract signature.

| Country | Invoice System | Requirement | Risk |
|---------|---------------|-------------|------|
| Brazil | NF-e (Nota Fiscal Eletrônica) + ICMS state tax | Startup must have CNPJ and be registered with SEFAZ in the relevant state | Foreign startups cannot invoice directly; require local entity or representative |
| Mexico | CFDI (Comprobante Fiscal Digital por Internet) + SAT validation | Must use a PAC (Proveedor Autorizado de Certificación) to generate valid CFDI | US startups invoicing Mexican corporates must use an intermediary or open a Mexican entity |
| Colombia | Electronic invoicing via DIAN (CUFE number required) | Startup must be registered with DIAN and use DIAN-authorized software | Registration takes 4–8 weeks; cannot invoice without CUFE |
| Argentina | AFIP-registered invoices, Factura C/B/A by tax category | FX controls may require invoicing in ARS and converting at official rate | FX controls mean actual USD value is uncertain at time of payment |
| Chile | SII electronic invoicing (DTE) | Lower barrier than Brazil/Mexico; SII registration straightforward | Less risk; standard 30–45 day process |

**Action:** Always include "Confirm startup can issue [country]-compliant invoices before
contract signature" as the first item in Próximos Pasos.

## Data Protection Requirements

Pilots involving customer data require a Data Processing Agreement (DPA) before data is
shared with the startup. In regulated sectors, this requires regulatory pre-approval.

| Country | Framework | Timeline | Regulated Sector Additional Layer |
|---------|-----------|----------|----------------------------------|
| Brazil | LGPD (Lei Geral de Proteção de Dados) | DPA review: 4–8 weeks; regulated sector (banking, health): add BACEN/ANVISA review | Financial: BACEN data localization + consent requirements |
| Colombia | Habeas Data (Ley 1581/2012) | DPA review: 3–6 weeks; SIC registration for data processing companies | Telecom: CRC approval; Financial: SFC pre-clearance |
| Mexico | LFPDPPP (Ley Federal de Protección de Datos) | DPA review: 3–5 weeks; INAI registration if processing sensitive data | Financial: CNBV, CONDUSEF oversight; Healthtech: COFEPRIS |
| Argentina | PDPA (Ley 25.326) | 2–4 weeks; AAIP registration required for data processors | Banking: BCRA; Health: ANMAT |

**Rule:** Any pilot involving customer data in banking, insurance, healthcare, or
telecommunications adds 3–6 months to the compliance review timeline. Budget for this
explicitly in the pilot schedule — do not compress the timeline and assume compliance will
resolve itself.

## Procurement and Contract Timeline

LATAM enterprise procurement takes 4–9 months to execute a contract vs. 6–8 weeks in
US *(BCG 2024)*. The sources of delay:

1. **Legal review cycles:** 3–5 internal legal review rounds typical for technology
   contracts; each round: 3–6 weeks
2. **IT security review:** Enterprise IT security review of startup's infrastructure,
   API documentation, and penetration test results — adds 4–8 weeks
3. **Compliance/procurement:** Vendor registration in corporate ERP system, certificate
   requirements, payment terms negotiation — adds 2–4 weeks
4. **Finance approval:** Budget approval for unbudgeted pilots requires VP Finance or CFO
   sign-off — add 2–6 weeks depending on governance structure

**Practical implication:** A 90-day pilot with 60 days of procurement ahead of it is a
150-day commitment. Build procurement time into the pilot schedule as Phase 0 (pre-pilot).

**Typical Phase 0 (pre-pilot) timeline:**
- Weeks 1–4: NDA + initial term sheet
- Weeks 5–8: IT security review + data protection assessment
- Weeks 9–12: Contract negotiation + signature
- Weeks 13–16: IT integration access + startup onboarding
- Day 1 of actual pilot: Week 17+

## Pilot Failure Rates by Sector

Zombie pilot likelihood varies significantly by sector due to procurement complexity
and regulatory review requirements:

| Sector | Zombie Pilot Rate | Primary Cause | Time to Zombie Termination |
|--------|------------------|---------------|---------------------------|
| Banking / Insurance | 35% | SFC/BACEN/CNBV regulatory review + data localization | 18 months avg |
| Telecommunications | 28% | CRC/IFT regulatory review + IT integration complexity | 14 months avg |
| Retail / CPG | 22% | Internal stakeholder alignment; multiple business units | 12 months avg |
| Agriculture / Agritech | 18% | Simpler procurement; lower regulatory burden | 8 months avg |
| Manufacturing | 25% | IT/OT integration complexity; legacy systems | 16 months avg |

**Note:** "Zombie pilot rate" = percentage of pilots that run past their intended end
date without a GO/NO-GO decision. Source: BCG LATAM 2024 corporate innovation survey.

## LATAM Startup Enterprise Readiness

70% of LATAM startups cannot sign enterprise MSAs without legal counsel *(NESTA 2023)*.
The corporate must provide template contracts (or at minimum, a contract framework) or
the pilot will stall at the legal stage.

Sourcing enterprise-ready LATAM startups with prior corporate pilot experience:
- **Wayra Brazil + Wayra Mexico**: Portfolio companies have already been through Wayra's
  pilot compliance process — they can issue correct invoices, sign MSAs, and have DPA
  templates ready
- **500 Global LATAM portfolio**: Pre-vetted for enterprise readiness; 500 requires data
  security basics before program acceptance
- **LAN Accelerator network**: Direct access to LATAM Seed/Pre-Seed companies with LAN
  program completion as enterprise-readiness signal

## FX Risk Management

Innovation budgets denominated in local currency, startup costs often priced in USD.

| Currency | Risk Level | FX Volatility Context | Mitigation |
|----------|-----------|----------------------|------------|
| Brazilian Real (BRL) | MEDIUM | Volatile vs USD; managed float; IOF tax on international transfers | USD-denominated contract with BRL payment at PTAX rate |
| Colombian Peso (COP) | MEDIUM | Volatile; 2024 range: 3,900–4,400 COP/USD | USD contract; payment at prevailing rate at time of invoice |
| Argentine Peso (ARS) | HIGH | Multiple official/parallel exchange rates; capital controls | Avoid ARS-denominated contracts; use USD invoicing via legal structure |
| Mexican Peso (MXN) | LOW-MEDIUM | Relatively stable; no capital controls | MXN or USD contracts both viable |
| Chilean Peso (CLP) | LOW | Stable managed float | Standard FX risk |

**Rule:** For any pilot with budget over $50k involving a non-Mexican/Chilean corporate,
include FX risk in the risk register and specify the FX mechanism in the contract terms.
