# LATAM Context: Data Room

Data room differences in LATAM fundraising. Apply these adjustments when
building data rooms for LATAM-based startups raising from LATAM VCs,
US VCs with LATAM exposure, or LATAM family office LPs.

**Sources:** LAN Accelerator operator read from LATAM seed and Series A processes (2023-2026),
labeled directional. No public dataset measures LATAM due diligence requirements; do not cite
LAVCA or Cuantico for them.

---

## LATAM Seed VC Due Diligence (directional)

LATAM seed funds usually run lighter legal diligence than US seed funds. For rounds under
USD 2M, these are typically enough to start:

- Incorporation documents (proof of legal entity)
- Cap table (clean ownership, no undisclosed dilution)
- Prior SAFEs or convertible notes

Usually not required at seed (required by Series A):
- Audited financials
- A full shareholders' agreement
- Review of every material contract

**Exception:** IP assignment agreements are asked for at every stage. Without a signed
assignment, ownership of contractor-built code is contestable under local law; a missing
assignment typically pauses diligence until fixed. Confirm the right instrument with a local
lawyer in each country.

---

## Family Offices Investing Directly (directional)

Family offices often co-invest directly in LATAM seed rounds. Compared with institutional VCs:

- **Financial review comes earlier.** For rounds above USD 2M, many ask for reviewed or audited
  financials. A CPA-compiled statement ("compilación financiera") is a faster, cheaper first step.
- **In-person relationship.** They rarely invest in companies they have not met; a data room
  sent cold rarely converts.
- **References weigh more.** One warm introduction from a known GP or portfolio founder beats a
  complete data room.

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
| CUIT | Tax identification | ARCA portal (arca.gob.ar; ARCA replaced AFIP in 2024) |
| Acta de Directorio | Board resolution for significant actions | Corporate secretary |

**USD note for Argentina:** Given ARS volatility, all financial documents
should include USD equivalents at the official exchange rate on the document
date. Investors will not evaluate ARS-only financials.

---

## Common LATAM Data Room Gaps

The most frequently missing documents in LATAM startup data rooms, ranked by
frequency of due diligence failure:

1. **IP assignment agreements.** Most common. LATAM teams rely on contractors, and without a
   signed assignment their code's ownership is contestable. Fix immediately with a local lawyer.

2. **Shareholder rights agreement**: Often skipped at Seed because "everyone
   trusts each other." Every LATAM Series A investor will require this before
   the round closes. Start it at Seed, not at Series A prep.

3. **Founder vesting documentation**: LATAM founders often skip formal vesting
   schedules. US institutional co-investors usually require 4-year vesting
   with 1-year cliff as a non-negotiable. If no vesting exists, it must be
   established before Series A.

4. **No audited financials**: Not blocking at Seed for VC rounds, but becomes
   a problem with family office LPs and at Series A.

---

## LATAM Data Room Access Tools

| Tool | Use Case | Notes |
|------|---------|-------|
| Google Drive (shared folder) | Most common; lowest friction | Simple but limited access tracking |
| Notion (with page access controls) | Product roadmap, team docs | Not suitable for sensitive legal documents |
| Carta or Pulley | Cap table and SAFE management | Keeps the cap table investor-grade and exportable |
| Dropbox Business | Professional document sharing; access tracking | Good for Series A data rooms requiring auditability |
| DocSend | Shareable data room links with per-page view analytics | Useful to see which investors actually read what |
| DocuSign | Electronic signatures on SAFEs and legal documents | Standard for US SAFEs; check local e-signature validity per country |

**Recommendation for LATAM Seed:** Google Drive with organized folder structure
is sufficient and introduces zero friction. Move to a dedicated data room tool
(DocSend or Dropbox Business) for Series A, when access logging matters.
