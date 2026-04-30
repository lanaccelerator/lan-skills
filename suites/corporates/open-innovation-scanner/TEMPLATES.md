# Innovation Opportunity Map — Output Template

ALWAYS use this exact structure. Every section is required. Do not change headings,
table columns, or field order. Fill every section with real analysis — no placeholders.

---

## Example Output: Bancolombia Innovation Lab — SME Lending Automation

*This is a filled example for Bancolombia Innovation Lab (Bogotá, Colombia's largest bank)
evaluating how to address SME lending automation as their strategic challenge. Dr. Ana
Gómez, VP Innovation, is running the analysis. Use it as the structural template for
every analysis.*

---

# Innovation Opportunity Map: Bancolombia Innovation Lab

**Date:** April 2026
**Organization:** Bancolombia S.A. — Grupo Bancolombia (Bogotá, Colombia)
**Sector:** Financial Services / Banking
**Scale:** ~$12B USD revenue; ~43,000 employees
**Contact:** Dr. Ana Gómez, VP Innovation
**Analyzed by:** LAN Skills via Claude

---

## Input Recap

*Dr. Gómez's answers to the Step 1 input questions:*

1. **Company name, sector, and scale:** Bancolombia S.A. — Colombia's largest bank by
   assets ($80B USD). Financial services, consumer and SME banking, wealth management.
   43,000 employees; revenue ~$12B USD (2024). Operates through Bancolombia branches,
   Nequi (digital banking, 12M users), and Ahorro a la Mano (basic savings).

2. **Business problem / strategic challenge:** SME lending cycle takes 21 days from
   application to disbursement. Target: reduce to 3 days via AI-powered credit decisioning.
   Current process: manual financial statement review, branch visit required, paper-based
   documentation. SME clients are abandoning Bancolombia for Nequi (Bancolombia's own
   digital unit) and Daviplata competitors who offer faster approvals. Bancolombia risks
   losing SME segment to fintechs with faster decisioning.

3. **Innovation budget and governance:** $2M USD for this initiative (standalone, approved
   by the Digital Transformation Committee). Governance: central Bancolombia Innovation Lab
   owns the initiative. VP Innovation (Dr. Gómez) reports to a Digital Transformation
   Committee — committee approvals required for vendor selection above $200k. No named
   C-level executive has taken ownership of pilot outcome yet.

4. **Current innovation portfolio:** Nequi (consumer digital bank — existing Bancolombia
   spinout, highly successful). Ahorro a la Mano (basic savings for unbanked). 3 active
   fintech startup pilots (names withheld). No AI credit decisioning pilot yet.

5. **External openness:** Open to external startups for technology. Strongly prefer
   partner (pilot) over acquisition. Internal IT team handles core banking (SAP + Finacle)
   and would not accept an external party touching core systems.

6. **Geographic scope:** Colombia-only for this initiative. Regulatory environment is
   SFC (Superintendencia Financiera de Colombia) and DIAN for tax. International startups
   must demonstrate SFC compliance capability.

7. **Timeline for results:** Proof of concept result in 12 months. Board presentation
   on scale decision in 18 months.

---

## Innovation Opportunity Map

*Four gaps identified from the business problem: SME lending cycle from 21 days → 3 days.*

| Gap | Mode | Startup Archetype | Strategic Alignment (1–5) | Complexity (1–5) | Priority |
|-----|------|------------------|--------------------------|-----------------|---------|
| **1. AI credit scoring for SMEs** (alternative data: transaction history, tax records, cash flow patterns to replace manual financial review) | Partner (startup pilot) | B2B fintech with AI/ML credit decisioning; alternative data integration with DIAN MUISCA tax data and Bancolombia transaction history | 5/5 — Core to the 21→3 day transformation; no other gap closes the decisioning time | 4/5 — SFC regulatory approval required for automated credit decisions; FINAGRO compatibility check needed for agricultural SME sub-segment | **PRIORITY 1** |
| **2. Digital onboarding** (e-signature, video identity verification, document upload to replace branch visit requirement) | Partner (startup pilot) | KYC/identity verification provider with Colombian regulatory compliance; e-signature certified by SIC (Superintendencia de Industria y Comercio) | 4/5 — Eliminates the branch visit requirement; directly reduces cycle time by 5–7 days | 3/5 — SIC-certified e-signature providers exist in Colombia (Certicámara, Validando); integration complexity manageable | **PRIORITY 1** |
| **3. Open banking data integration** (accessing third-party bank transaction data via API to enrich credit assessment beyond Bancolombia's own data) | License (API) | Open banking data aggregator; Colombia open banking regulation is nascent but SFC has published framework; API providers include Belvo, Finerio Connect | 3/5 — Enriches data, but Bancolombia's own transaction history covers 40%+ of Colombian SME banking; marginal improvement vs. internal data | 3/5 — Open banking regulatory framework in Colombia not yet fully operational; pilot can run with consent-based manual data sharing in interim | **PRIORITY 2** |
| **4. Internal process automation — legacy system integration** (connecting AI decisioning output to Finacle core banking for automated disbursement, without human re-entry) | Build (internal IT) | Not applicable — internal IT project; external startup cannot touch core banking systems (Finacle). This is an internal API development project for Bancolombia's IT team. | 4/5 — Without this, AI gives a decision in 3 days but disbursement still takes 10 days waiting for Finacle manual entry | 5/5 — Core banking integration is the highest-complexity gap; estimated 12–18 months internal development; cannot be outsourced due to Finacle licensing terms and PCI DSS requirements | **PRIORITY 3** |

---

## Innovation Theater Indicators

**[THEATER] No named C-level executive owns this pilot — Dr. Gómez reports to a
committee, not a named executive.**

VP Innovation reporting to a Digital Transformation Committee is not an executive sponsor.
Committees approve budgets; they do not break procurement blockage, do not resolve
cross-functional conflicts, and do not make the "go/no-go" decision with authority. Pilots
sponsored by committees fail at 3× the rate of pilots with a named C-level owner *(NESTA
LATAM 2023)*. Bancolombia's VP of Consumer Banking or Chief Digital Officer (CDO) must own
this pilot outcome in their personal performance review before any startup engagement begins.
Dr. Gómez should escalate this governance gap before presenting to any external startup —
if a startup asks "who is the executive sponsor?" and the answer is "a committee," the best
startups will decline to engage. They have seen this movie.

**[THEATER] 12-month proof-of-concept timeline with no previous AI credit scoring pilot is
unrealistic given SFC regulatory requirements.**

Gap 1 (AI credit scoring) requires SFC approval before automated decisions can be issued for
credit products. SFC review of AI/algorithmic credit decisioning models has taken 8–14 months
in prior Colombian fintech cases (Rapicredit, Addi, Sistecrédito). Adding SFC review to a
12-month pilot timeline means the proof-of-concept window is effectively 0–4 months — not
enough to generate statistically significant default data. Revise the timeline: 24 months to
proof of concept, 36 months to scale decision. Alternatively, scope the pilot to a low-value
SME credit product ($5M–$50M peso tickets) that qualifies under the SFC's simplified fintech
regulatory sandbox, which has an 18-month maximum review timeline.

---

## LATAM Context

**Procurement timeline warning:**
LATAM enterprise contracts with startup vendors take 4–9 months from vendor selection to
first payment *(BCG 2024)*. At Bancolombia's scale and regulatory requirements, the upper
end is more likely: 6–9 months. This means:

- Vendor selection by June 2026 → First payment by December 2026–March 2027
- Pilot start (first data produced) by Q1–Q2 2027
- Proof-of-concept result by Q3–Q4 2027

This is an 18–24 month realistic timeline for Gap 1 — not 12 months. Presenting a 12-month
timeline to the Board would require accelerating procurement (pre-approved MSA template,
startup vendor category, CDO as executive breaker) and scoping to the SFC regulatory sandbox.

**Bancolombia as model — Nequi spinout case:**
Bancolombia's most successful innovation outcome is Nequi — built as a fully separate entity
with its own technology stack, brand, and culture. Nequi reached 12M users precisely because
Bancolombia gave it autonomy from Bancolombia's procurement, compliance, and IT governance.
The lesson for Gap 1: if Bancolombia cannot run a meaningful AI credit scoring pilot within
its existing governance, the correct model may be to run the pilot through Nequi and
port the model to Bancolombia core after validation.

**SFC regulatory context:**
- SFC issued Circular Externa 022 (2023) establishing requirements for algorithmic credit
  decisioning models — explainability requirements, bias audits, and appeal mechanisms for
  rejected applicants are mandatory.
- FINAGRO (Fondo para el Financiamiento del Sector Agropecuario) has separate regulatory
  track for agricultural SME credit — if Bancolombia's SME pilot includes agricultural
  borrowers, FINAGRO compliance is required in parallel with SFC.
- SFC's Innovation Hub (Sandbox) accepts fintech applicants for supervised pilot operation.
  Apply before engaging an AI credit startup — running the pilot under SFC sandbox supervision
  removes the "unauthorized automated credit" risk and accelerates full-scale approval.

**Open banking in Colombia:**
Bancolombia is a SFC-mandated participant in Colombia's open banking framework. The SFC
published its open banking standards in 2024. However, interoperability between banks is
not yet operational — only consent-based data sharing is available today. Gap 3 (open
banking integration) should be deprioritized until SFC mandates API interoperability
(expected H2 2026).

---

## Recommended Actions by Priority Tier

### Tier 1 — Do in 60 Days

1. **Appoint a named CDO or VP Consumer Banking as executive sponsor.** Dr. Gómez's
   committee governance is not sufficient. Identify the executive whose P&L is affected
   by the 21-day SME lending cycle and make them the named sponsor. This single action has
   the highest correlation with pilot success *(NESTA LATAM 2023)*.

2. **Engage SFC Innovation Hub before any startup selection.** Submit an Innovation Hub
   application describing the AI credit scoring pilot. SFC sandbox provides regulatory cover
   during pilot and accelerates full-scale approval by 6–12 months vs. post-pilot review.
   Legal cost: ~$50k for Colombian fintech regulatory counsel (Gómez-Pinzón, Baker McKenzie
   Colombia). This is the best $50k Bancolombia can spend before the $2M initiative.

3. **Source Gap 2 vendors now (digital onboarding / e-signature).** Gap 2 has no regulatory
   blocker, clear success criteria (branch visit eliminated), and SIC-certified providers
   exist in Colombia. This pilot can start in 90 days and produce data within 6 months.
   Start here while Gap 1 SFC work is in progress. Candidates: Certicámara (Colombian
   state-backed), Validando (Colombian fintech), DocuSign (international with SIC recognition).

### Tier 2 — Next Quarter

4. **Prepare a startup MSA template with Bancolombia Legal.** The 4–9 month procurement
   timeline is the primary startup partnership killer *(BCG 2024)*. Bancolombia Legal should
   prepare a standard MSA template for startup vendors — pre-approved by Legal and Compliance
   — that can be executed in 3–4 weeks vs. 3–4 months of custom negotiation. The Cubo Itaú
   model in Brazil demonstrates this is achievable at a major LATAM bank.

5. **Evaluate open banking data aggregators for Gap 3 — Belvo and Finerio Connect.**
   Do not build an RFP process for Gap 3 yet — evaluate product demos only. Gap 3 is
   Priority 2 and the open banking regulatory framework is not yet operational. A demo
   evaluation (no procurement, no contract) will determine whether a future pilot is viable
   without committing budget.

---

## Next Steps

*Concrete actions for Dr. Gómez and the Bancolombia Innovation Lab within 60 days:*

1. **Name a C-level executive sponsor by [target date].** Schedule a meeting with the Chief
   Digital Officer (CDO) and VP Consumer Banking. Present the SFC timeline and procurement
   reality — a committee cannot break the bureaucratic blockages this pilot will encounter.
   Without a named executive by Day 30, this initiative will stall at vendor selection.

2. **Submit SFC Innovation Hub application by [target date + 30 days].** Assign Colombian
   fintech regulatory counsel (budget: $40–60k). Application window: SFC Innovation Hub
   accepts applications quarterly. Missing the next window adds 3 months to total timeline.
   This is not optional for Gap 1 — it is the critical path.

3. **Issue a Gap 2 RFP for digital onboarding / e-signature by Day 45.** Gap 2 has no
   regulatory blocker. Certicámara, Validando, and DocuSign are qualified candidates.
   Prepare a 2-page requirements brief (use cases, SIC compliance requirement, integration
   with Finacle via API). Target: vendor selected by Day 90, contract executed by Day 180,
   first pilot branch live by Day 270.

4. **Prepare startup MSA template by Day 60 (parallel to Gap 2 RFP).** Assign one attorney
   from Bancolombia Legal with fintech experience to draft a 15-page standard MSA for startup
   vendors. Model on Cubo Itaú's template (publicly available as reference). Target:
   Legal pre-approval by Day 90. This investment reduces ALL future startup procurement timelines.

5. **Set pilot kill criteria for Gap 2 before issuing any RFP.** Define in writing:
   - Success criteria: branch visit rate drops from 100% to <20% within 6 months
   - Kill criteria: >15% identity verification failure rate OR SIC compliance issue
   - Budget cap: $300k total (vendor fee + internal IT integration + legal)
   If the committee cannot agree on these criteria within 30 days, the pilot is not ready
   to start — and that is the diagnosis, not the problem.

---

## Sources

- BCG 2024 Corporate Innovation Survey: https://www.bcg.com/publications/2024/corporate-innovation-benchmarking
- NESTA LATAM Corporate Innovation Study 2023: https://www.nesta.org.uk/toolkit/open-innovation-toolkit/
- SFC Colombia (Superintendencia Financiera): https://www.superfinanciera.gov.co/
- FINAGRO Colombia: https://www.finagro.com.co/
- Bancolombia Investor Relations: https://www.grupobancolombia.com/investors
- Nequi: https://nequi.com.co/
- Daviplata: https://www.daviplata.com/
- Certicámara: https://www.certicamara.com/
- Belvo (open banking): https://belvo.com/
- Finerio Connect: https://finerio.mx/
- SFC Colombia Innovation Hub: https://www.superfinanciera.gov.co/innovacion
- Cubo Itaú MSA reference: https://cubo.network/
- IDB Digital Transformation Report 2024: https://publications.iadb.org/en/publications/english
- LAVCA 2025: https://www.lavca.org/wp-content/uploads/2025/08/LAVCA_Startup-Ecosystem-Insights_2025.pdf
