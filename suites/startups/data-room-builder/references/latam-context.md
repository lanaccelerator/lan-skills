# LATAM Context — Data Room

Data room differences in LATAM fundraising. Apply these adjustments when
building data rooms for LATAM-based startups raising from LATAM VCs,
US VCs with LATAM exposure, or LATAM family office LPs.

**Sources:**
- LAVCA 2025 Startup Ecosystem Insights:
  https://www.lavca.org/wp-content/uploads/2025/08/LAVCA_Startup-Ecosystem-Insights_2025.pdf
- Cuantico LatAm VC Report 2026:
  https://reports.cuanticovp.com/latin-america-vc-report-2026/

---

## LATAM Seed VC Due Diligence

*(LATAM, LAVCA 2025)* LATAM Seed VCs perform lighter legal due diligence
than US Seed investors. For rounds under $2M, the following are typically
sufficient:

- Incorporation documents (proof of legal entity)
- Cap table (clean ownership, no undisclosed dilution)
- Prior SAFE notes or convertible notes

LATAM VCs generally do not require:
- Audited financials (at Seed; required at Series A)
- Full shareholder rights agreement (at Seed; required before Series A close)
- Material contracts review

**Exception:** IP assignment agreements are required by ALL LATAM VCs regardless
of stage. Engineering contractors in LATAM default to retaining IP rights under
local labor law — a missing IP assignment is an automatic hold on due diligence.

---

## LATAM Family Office LP Requirements

*(LATAM, LAVCA 2025)* Family offices represent 35% of LATAM LP capital
(vs 15% in US). Their due diligence requirements differ significantly from
institutional VCs:

- **Audited financials often expected at Seed** — for rounds >$2M, most LATAM
  family offices require a full audit or at minimum a "compilación financiera"
  (compiled financial statement from a licensed CPA). This is faster and cheaper
  than a full audit and satisfies most family office requirements.
- **In-person relationship required** — family office LPs rarely invest in
  companies they have not met in person. A data room sent cold to a family
  office rarely converts.
- **Personal references carry more weight** — one warm introduction from a
  known GP or portfolio founder is more effective than a complete data room.

**Implication:** If your round includes family office LP participation (common
in LATAM Seed co-investments), prepare for a more detailed financial review
than with institutional VCs.

---

## Jurisdiction-Specific Documents

Add a `07-latam-legal/` folder for jurisdiction-specific documents. Required
by LATAM VCs and regulators.

### Mexico

| Document | Purpose | Where to Obtain |
|---------|---------|-----------------|
| Acta Constitutiva | Corporate charter (equivalent of Delaware Certificate) | Notaría Pública |
| RFC / Constancia de Situación Fiscal | Tax registration (SAT) | SAT portal sat.gob.mx |
| CFDI (sample) | Electronic invoice format compliance proof | Your accounting system |
| Poder Notarial | Legal power of attorney for signatories | Notaría Pública |

### Brazil

| Document | Purpose | Where to Obtain |
|---------|---------|-----------------|
| Contrato Social | Corporate charter | Junta Comercial |
| CNPJ | Tax registration number | Receita Federal |
| Nota Fiscal (sample) | Electronic invoice compliance | Your ERP / tax system |
| Ata de Assembléia | Board resolutions | Corporate secretary |

### Colombia

| Document | Purpose | Where to Obtain |
|---------|---------|-----------------|
| Cámara de Comercio | Business registration certificate (must be <30 days old) | Cámara de Comercio local |
| RUT | Tax registration (DIAN) | DIAN portal |
| Estatutos Sociales | Corporate bylaws | Notaría or Cámara de Comercio |

### Argentina

| Document | Purpose | Where to Obtain |
|---------|---------|-----------------|
| Estatuto Social | Corporate charter | IGJ (Buenos Aires) or provincial registry |
| CUIT | Tax identification | AFIP portal |
| Acta de Directorio | Board resolution for significant actions | Corporate secretary |

**USD note for Argentina:** Given ARS volatility, all financial documents
should include USD equivalents at the official exchange rate on the document
date. LATAM investors will not evaluate ARS-only financials. *(LATAM, Cuantico 2026)*

---

## Common LATAM Data Room Gaps

The most frequently missing documents in LATAM startup data rooms, ranked by
frequency of due diligence failure:

1. **IP assignment agreements** — Most common. Engineering contractors (common
   in LATAM due to cost) default to retaining IP under local labor codes.
   Colombia's Law 23/1982, Mexico's LFDA, and Brazil's Lei 9.279/96 all
   favor contractors in ambiguous cases. Fix immediately.

2. **Shareholder rights agreement** — Often skipped at Seed because "everyone
   trusts each other." Every LATAM Series A investor will require this before
   the round closes. Start it at Seed, not at Series A prep.

3. **Founder vesting documentation** — LATAM founders often skip formal vesting
   schedules. US co-investors (Sequoia, a16z, Tiger) require 4-year vesting
   with 1-year cliff as a non-negotiable. If no vesting exists, it must be
   established before Series A.

4. **No audited financials** — Not blocking at Seed for VC rounds, but becomes
   a problem with family office LPs and at Series A.

---

## LATAM Data Room Access Tools

| Tool | Use Case | Notes |
|------|---------|-------|
| Google Drive (shared folder) | Most common; lowest friction | Simple but limited access tracking |
| Notion (with page access controls) | Product roadmap, team docs | Not suitable for sensitive legal documents |
| Capbase | LATAM-focused startup legal and data room SaaS | Handles cap table, SAFEs, and document storage |
| Dropbox Business | Professional document sharing; access tracking | Good for Series A data rooms requiring auditability |
| DocuSign | Electronic signatures on SAFEs and legal documents | Standard for US SAFEs; Firma Digital acceptable in some LATAM jurisdictions |

**Recommendation for LATAM Seed:** Google Drive with organized folder structure
is sufficient and introduces zero friction. Move to a dedicated data room tool
(Capbase or Dropbox Business) for Series A, when access logging matters.
