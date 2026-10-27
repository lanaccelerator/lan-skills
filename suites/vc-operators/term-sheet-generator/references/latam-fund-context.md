# LATAM Legal Structures and Fund Governance Context

**Purpose:** Apply when term-sheet-generator is used for a LATAM deal or LATAM-domiciled fund.
Covers legal investment vehicles by country, family office LP governance norms, and currency considerations.
For FX risk methodology and country-by-country regulatory tables, use the deal-memo-writer skill.

---

## 1. Brazilian Fund and Company Structures

### VC Fund Vehicles

**FIP (Fundo de Investimento em Participações):**
Primary vehicle for private equity and venture capital investments in Brazil. A closed-end fund
structure regulated by CVM (Comissão de Valores Mobiliários — the Brazilian SEC). FIPs can invest
in equities of non-listed companies, make convertible loan instruments, and hold board-level rights.

- Requires Brazilian legal counsel and CVM registration
- Minimum investor qualification: qualified investors (investidor qualificado, R$1M+ in financial assets)
- FIP quota holders receive proportional participation rights
- Quarterly CVM reporting required
- For Fund I GPs: FIP structure adds significant administrative overhead — offshore Cayman LP + SPV
  structure is more common for first-time LATAM managers with international LPs

**FIDC (Fundo de Investimento em Direitos Creditórios):**
For credit and receivables-based investments. Used for fintech credit funds, not standard equity VC.
If a deal involves a lending component (e.g., revenue-based financing, BNPL infrastructure), FIDC
may be relevant as the investee company's own funding structure — not the VC fund's structure.

### Portfolio Company Equity Structures

**SA (Sociedade Anônima):**
Standard equity structure for portfolio companies receiving VC investment in Brazil. Equivalent to a US C-Corp.
Preferred stock (ações preferenciais) and common stock (ações ordinárias) are both supported.
Most VC-backed Brazilian companies use SA structure.

**LTDA (Sociedade Limitada):**
Simpler structure, but does not support preferred stock. Not appropriate for VC-backed companies
that will receive institutional investment with preferred stock rights.

**Practical note for term sheets:**
Brazilian preferred stock (ações preferenciais) has different default rights than US Delaware preferred.
Liquidation preference, anti-dilution, and protective provisions must be explicitly documented in the
company's estatuto social (articles of association) AND in the shareholders' agreement (acordo de acionistas).
Do not assume NVCA template terms translate without Brazilian legal counsel review.

---

## 2. Mexican Fund and Company Structures

### Portfolio Company Equity Structures

**SAPI (Sociedad Anónima Promotora de Inversión):**
The standard equity structure for VC-backed startups in Mexico. Introduced specifically to facilitate
startup and VC investment — more flexible than standard SA. Supports:
- Preferential rights on capital return (equivalent to liquidation preference)
- Tag-along, drag-along rights
- Anti-dilution provisions
- Convertible instruments equivalent to YC SAFE mechanics
- More permissive foreign investor ownership rules than standard SA

Most LATAM VC funds use SAPI for Mexican portfolio companies. Term sheet provisions from NVCA templates
require adaptation to Mexican law by local counsel but are substantially achievable via SAPI.

### VC Fund Vehicles (for institutional LP capital)

**CKD (Certificados de Capital de Desarrollo):**
Listed instrument on BMV (Bolsa Mexicana de Valores — Mexican Stock Exchange). Used to raise capital
from institutional Mexican investors — specifically AFOREs (pension funds).

- Requires CNBV (Comisión Nacional Bancaria y de Valores) registration and authorization
- Publicly reported performance metrics (quarterly)
- Strict governance and audit requirements
- For Fund I GPs: CKD complexity is prohibitive. Most Fund I managers use offshore Cayman LP structure
  even for Mexico-focused funds, accepting that AFORE capital is not accessible until Fund II or III.

**CERPI (Certificados de Proyectos de Inversión):**
Similar to CKD but introduced in 2016 with more flexible investment scope. Allows investment in
infrastructure, real estate, and private equity. Like CKDs, requires CNBV registration and BMV listing.
Also inaccessible for Fund I GPs — same reasoning as CKD.

**Practical guidance for Fund I GPs in Mexico:**
Structure the fund as a Cayman Islands LP with a Mexican SAPI as the direct investment vehicle.
US-law Delaware SAFEs are increasingly accepted by Mexican startups with Cayman holdco structures.
Consult CNBV-registered Mexican legal counsel for any deal involving fintech (CNBV licensing) or
healthtech (COFEPRIS) — regulatory approval timelines affect term sheet closing conditions.

---

## 3. Colombian Fund and Company Structures

**SAS (Sociedad por Acciones Simplificada):**
The standard equity structure for Colombian startups. Most flexible corporate structure available in Colombia.
Supports preferred stock, special rights, shareholders' agreements, convertible instruments.
Equivalent in flexibility to SAPI in Mexico. Most VC-backed Colombian companies use SAS.

**Practical note:**
Colombian law is civil-law based (Código de Comercio). Anti-dilution, drag-along, and protective
provisions must be adapted from NVCA templates with local counsel. Cayman Islands holdco + Colombian SAS
subsidiary is the most common structure for Colombia-focused funds with international LPs.

---

## 4. Family Office LP Governance Considerations

### Why This Matters for Term Sheets

Family offices are often the largest LP group in a LATAM Fund I (directional, from LATAM GP practice;
no public dataset gives a reliable share). Their governance expectations differ significantly from US institutional LPs
(endowments, pension funds, fund of funds):

### Board Governance

| Structure | LATAM Family Office Standard | US Institutional Standard |
|-----------|------------------------------|--------------------------|
| Seed board | 3 persons: 2 founders + 1 lead | 3–5 persons, depends on deal |
| Series A board | 3–5 persons; 5 common | 5 persons: 2 founders + 2 investors + 1 independent |
| LP advisory committee | Informal calls acceptable | Formal LPAC with governance rights |

**Implication for term sheet drafting:**
- Do not propose a 5-person board at Seed stage for a LATAM deal with family office LPs. A 3-person
  board (2 founders + 1 lead investor) is appropriate and will not signal weakness to a family office LP.
- Observer rights (without voting rights) are an acceptable alternative to a full board seat for
  non-lead investors with family office backing.

### Reporting

ILPA (Institutional Limited Partners Association) full quarterly reporting templates are standard for
US institutional LPs but are operationally complex for Fund I GPs. Family office LPs typically accept:
- Quarterly NAV updates
- Quarterly portfolio company summary (1 page per company)
- Annual audited financial statements
- Direct communication (calls) over formal written reports

When drafting term sheets, information rights clauses should be calibrated to what the fund GP can
actually fulfill. Over-promising reporting obligations at the term sheet stage creates downstream
LP relations issues.

---

## 5. Currency Denomination

**USD is market standard:**
Even for LATAM-focused funds and deals, term sheets are denominated in USD. This provides:
- Stability for founders and investors across FX fluctuation
- Comparability with global VC benchmarks
- Simplified cap table math across multiple investors from different geographies

**Exceptions to USD standard:**
- Brazilian FIP structures with domestic institutional LPs (AFAPs, FICs) may require BRL denomination
- Colombian development bank co-investors (Bancóldex, iNNpulsa) often require COP-denominated co-investment
- If fund itself is structured in local currency (rare for VC), deal currency follows fund currency

**FX risk in term sheets:**
Currency denomination alone does not eliminate FX risk for portfolio companies. A Colombian company
raising USD on a SAS structure will still have COP-denominated revenues and USD-denominated investors.
FX risk belongs in the deal memo Risk Register (see deal-memo-writer) — not in the term sheet itself.
The term sheet should note that financial reporting will be in USD for consistency with investor reporting.

---

## Sources

- CVM (Brazil): https://www.gov.br/cvm
- CNBV (Mexico): https://www.cnbv.gob.mx
- BMV (Mexico): https://www.bmv.com.mx
- Superintendencia Financiera de Colombia: https://www.superfinanciera.gov.co
- NVCA Model Documents: https://nvca.org/resources/model-legal-documents/
- LAVCA 2025 VC Activity Report: https://www.lavca.org
- ILPA Principles 3.0: https://ilpa.org/ilpa-principles/
