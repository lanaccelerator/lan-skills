# LATAM Context: Security & Compliance Starter

See shared/latam-benchmarks.md for canonical LATAM benchmark data and
shared/b2b-buying-2026.md for the corporate buying process. Label US figures
as `(US-sourced benchmark, [Source])`. Certification costs and the 44% questionnaire
figure are US-sourced; there is no public LATAM equivalent. Do not invent one.

**Not legal advice.** Laws below are summarized from public sources; confirm scope,
dates and obligations with a local lawyer before acting.

---

## Data protection laws

| Country | Law | Status | What to do at startup stage |
|---|---|---|---|
| Brazil | LGPD (Lei 13.709/2018), authority ANPD | In force. Fines up to 2% of revenue in Brazil, capped at R$50M per infraction | Privacy notice at collection, legal basis per use, data subject rights, incident reporting, DPO contact |
| Paraguay | Ley 7593/2025 de Protección de Datos Personales | Promulgated 27 Nov 2025, first general data law; 2-year grace period, enforceable around Nov 2027 (Ferrere) | Build consent, privacy policy and rights handling now; retrofitting consent on an existing base costs more |
| Other LATAM markets | Most countries (for example Argentina, Chile, Colombia, Mexico, Peru, Uruguay) have a general personal data law and an authority; several were reformed recently | Varies; check the official text and current status | Same minimum as above; confirm international transfer rules before hosting abroad or sending data to model providers |

Do not quote fines or effective dates for a country unless you checked the official text
or a law firm's published summary.

### International transfers and AI providers

Hosting in a US region or sending personal data to a model provider abroad is usually an
international transfer under these laws. Record: which data, which provider, what legal
basis or contract clause, retention and training terms. Use test data in QA and evals.

## How LATAM corporates buy security

- **Banks, insurers and large groups send their own questionnaire** (often a long
  spreadsheet) and a vendor portal checklist more often than they ask for SOC 2.
  An answer bank closes most of them. Regulated buyers (banks, health) may also audit you
  against their regulator's outsourcing rules.
- **Vendor portal onboarding (alta de proveedor)** asks for company documents alongside
  security ones: tax id (RUC in Paraguay, CUIT in Argentina, RFC in Mexico, CNPJ in
  Brazil, RUT in Chile, NIT in Colombia), certificate of good standing, bylaws, legal
  representative's powers, bank account letter, insurance policies, sometimes a tax
  compliance certificate. Expired documents block payment, not just onboarding.
- **Procurement adds weeks.** Ask in discovery who owns vendor security review and what
  they will send, so the questionnaire starts in parallel with the business case.
- **ISO 27001 is the name corporates and banks recognize most** in many LATAM markets;
  SOC 2 matters when the buyer is a US multinational's subsidiary following headquarters
  policy (directional: ask your top prospects).

## Budget reality

Certification is quoted in USD. For a seed startup billing in local currency, an
all-in SOC 2 Type II can rival a year of an engineer's salary (directional). That is why Stage 0-2
(basics, answer bank, trust page, law map) come first, and why the certify decision
uses risk-weighted pipeline, not fear of losing a deal.

## Sources

- LGPD (Lei 13.709/2018): https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2018/lei/l13709.htm
- Ferrere, Paraguay Ley 7593: https://www.ferrere.com/es/novedades/paraguay-adopta-su-ley-de-proteccion-de-datos-personales/
- Ley 7593/2025 text (BACN): https://www.bacn.gov.py/leyes-paraguayas/12924/ley-n-7593-2025-de-protecci-n-de-datos-personales-en-la-rep-blica-del-paraguay
