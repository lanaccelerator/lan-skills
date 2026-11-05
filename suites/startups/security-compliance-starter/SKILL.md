---
name: security-compliance-starter
description: >
  Staged security and compliance plan for an early B2B startup selling to LATAM
  corporates. ALWAYS invoke when a founder gets a security questionnaire, a corporate asks
  for SOC 2 or ISO 27001, procurement asks for security documents in a vendor portal, or
  the team asks what security to do now vs later. Spanish triggers: "nos mandaron un
  cuestionario de seguridad", "el cliente pide SOC 2", "necesitamos ISO 27001?", "qué
  seguridad hacemos ahora", "cómo cumplimos con la ley de datos", "armame la carpeta de
  seguridad para el portal de proveedores". Produces a day-1 engineering checklist for
  agent-built software, a questionnaire answer bank in the company brain, the data
  protection law map, a certify-or-wait decision with cost and timeline, and the vendor
  portal folder. Not legal advice. NOT for the team's engineering workflow with AI agents
  (use ai-engineering-playbook), MVP scoping (use rapid-mvp-builder) or the investor data
  room (use data-room-builder).
categories: ["startups", "security", "compliance"]
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: startups
  complements: [ai-engineering-playbook, rapid-mvp-builder, lead-to-proposal, data-room-builder]
license: MIT
---

# Security & Compliance Starter

A staged plan, not a certification project. Early B2B startups lose corporate deals in
procurement, not in the demo: a security questionnaire nobody answers, a missing policy, a
privacy question about personal data. This skill does the cheap things first, answers
questionnaires from a reusable bank, and decides when a certification pays for itself.

Built on the OWASP Top 10 for LLM Applications 2025, the Model Context Protocol security
principles (explicit user consent), SOC 2 (AICPA Trust Services Criteria) and ISO/IEC
27001, and LATAM data protection law (Brazil LGPD, Paraguay Ley 7593 and others).

**Not legal advice.** Every output says so. Laws and audit prices change: confirm with a
local lawyer and with two or more auditors before committing money.

## Step 1: Input Gathering

Read the company brain first per references/shared/company-brain-integration.md: search
for existing policies, past questionnaires and answers, architecture notes, subprocessors,
incidents and the CRM deal that triggered the request. Then ask in ONE message only for
what is missing. Defaults in brackets.

1. **Trigger:** questionnaire received, certification requested, vendor portal, or proactive? [questionnaire received]
2. **Buyer:** country, industry (bank, insurer, health, retail, government), size, deal value. [LATAM corporate, US$20-60K ACV]
3. **What they asked for exactly:** paste the questionnaire, portal list or email. [none pasted]
4. **Data you handle:** personal data of end users? sensitive (health, financial, biometric)? where is it hosted (region, provider)? [personal data, US-hosted cloud]
5. **Team and stack:** headcount, who owns security, cloud and main tools, AI agents and MCP servers in use. [3 people, CTO owns it]
6. **What exists today:** policies, MFA, backups, pen test, incident log, insurance. [little or nothing written]
7. **Pipeline:** how many deals in the next 12 months will ask for SOC 2 or ISO 27001, and their value. [unknown]
8. **Budget for security this year:** [under US$10K]

Mark guesses as `[ASSUMPTION: ...]` and continue.

## Step 2: Stage 0, Day-1 Engineering Basics (cost: near zero)

Do these before answering any questionnaire: half of the questions ask about them.
Details: [references/agent-security-basics.md](references/agent-security-basics.md).

| Control | Free path |
|---|---|
| Secrets scanning pre-commit and in CI | gitleaks or trufflehog as a git hook |
| Prompt-injection defense for anything an agent or LLM feature reads | OWASP LLM01: content fetched from outside is data, never instructions; no tool action from untrusted input without confirmation |
| Least privilege per agent and per tool | Scoped keys per environment, read-only by default, no production keys in agent sessions |
| MCP explicit consent | Allowlist of MCP servers; a human approves each new server and its scopes |
| Dependency and code scanning | Semgrep, Trivy, `npm audit`, Dependabot |
| MFA and SSO on every admin account | Built into Google Workspace, GitHub, cloud consoles |
| Backups with a tested restore | Provider snapshots + one restore drill per quarter |
| Adversarial review panel before production | For auth, billing and data exposure: green tests do not prove no leaks (see ai-engineering-playbook) |

## Step 3: Stage 1, Questionnaire Answer Bank

Security questionnaires eat up to ~44% of a 45-day SaaS sales cycle (Vanta). Answer each
question once, well, and reuse it. Template and the 40 most common questions:
[references/questionnaire-bank.md](references/questionnaire-bank.md).

1. Store the bank in the company brain (or a single shared doc): one page per domain
   (access, encryption, backups, incidents, vendors, privacy, AI use), each answer with
   owner, last-reviewed date and evidence link.
2. For a new questionnaire: the agent drafts answers from the bank, marks every answer it
   cannot support as `[SIN EVIDENCIA]`, and never claims a control that does not exist.
   "No, planned for Q2" is a valid answer; a false "yes" is a contract risk.
3. New answers go back into the bank the same day. Log the touchpoint in the CRM.
4. Publish a short security page or trust page so procurement can self-serve before asking.

## Step 4: Stage 2, Data Protection Law Map

Read [references/latam-context.md](references/latam-context.md). Map each market where
you have users or customers:

- **Brazil, LGPD:** in force; fines up to 2% of revenue in Brazil, capped at R$50M per
  infraction; notice, legal basis, data subject rights, incident reporting.
- **Paraguay, Ley 7593:** first general personal data protection law, promulgated
  27 Nov 2025 with a 2-year grace period: enforceable around Nov 2027 (Ferrere). Build
  consent and rights handling now.
- **Other markets:** most LATAM countries have a general data protection law with its own
  authority (see the reference). Do not quote fines or dates you have not checked against
  the official text.

Minimum for every market: privacy policy, consent or legal basis at collection, a way to
request access and deletion, a subprocessor list, a Data Processing Agreement template,
and a decision on where data is hosted and whether it goes to model providers abroad.

## Step 5: Stage 3, Certify or Wait

Read [references/certification-costs.md](references/certification-costs.md).

| Option | Cost (all-in) | Time |
|---|---|---|
| SOC 2 Type I | US$30-80K | 2-4 months |
| SOC 2 Type II | US$60-160K | 6-14 months |
| ISO 27001 | US$15-50K year 1 | 3-10 months |

SOC 2 and ISO 27001 share about 80% of their controls: build once, map to both.

Decision rule:
- **Wait** while questionnaires plus the answer bank and a trust page close deals.
- **Certify** when the expected value of deals that require it in the next 12 months
  is at least 3x the all-in cost, or when one strategic buyer makes it a signed condition.
- **Which one:** SOC 2 when US buyers drive the pipeline; ISO 27001 when LATAM or European
  corporates, banks and regulators drive it (directional: ask your top 5 prospects).
- **Tooling:** Comp AI (trycomp.ai, open source, AGPL) is the cheapest automation path;
  paid options are Vanta, Drata (~US$10K/yr for a single framework, as reported by
  founders), Secureframe and Sprinto. A spreadsheet of controls plus policy templates
  works for Stage 0-2.

## Step 6: Vendor Portal Security Folder

Corporate procurement asks for the same documents every time. Keep one folder ready
(Drive, Notion or the company brain), named and dated:

- **Company:** tax id (RUC, CUIT, RFC, CNPJ), certificate of good standing, bylaws, legal
  representative's powers, bank account letter, insurance policies (general and cyber).
- **Security:** information security policy, acceptable use, access control, incident
  response, business continuity and backup, vendor management, AI use policy.
- **Evidence:** architecture and data-flow diagram, subprocessor list, last pen test
  summary or scan report, MFA and backup screenshots, certificate or audit status letter.
- **Privacy:** privacy policy, DPA template, data retention schedule, hosting region.

Every file has an owner and an expiry or review date. Expired insurance or certificates
block onboarding.

## Step 7: Output Format

ALWAYS use this exact template structure. Do not change section headings, table columns, or field order. Fill every [bracketed placeholder] with real analysis from the user's startup.

See [TEMPLATES.md](TEMPLATES.md) for the filled example. User-facing output is in
Spanish unless the buyer works in another language. Sections, in order: Resumen, Etapa 0,
Banco de respuestas, Mapa de leyes, Certificar o esperar, Carpeta para portal de
proveedores, Próximos Pasos, Fuentes, Aviso legal.

Brain and CRM: file the bank and the plan in the company brain (search before create);
questionnaire answers sent to a prospect are logged in the CRM the same day. Any email to
procurement is a DRAFT.

## LATAM Context

See [references/latam-context.md](references/latam-context.md): LATAM corporates (banks
first) often send their own questionnaire and a vendor portal checklist instead of asking
for SOC 2; procurement onboarding adds weeks; data protection laws are tightening across
the region. For benchmarks, follow references/shared/latam-benchmarks.md and
references/shared/b2b-buying-2026.md.

## Tone & Editorial Voice

See references/shared/editorial-voice.md: direct, no sugarcoating. You are NOT a
cheerleader. If the founder wants SOC 2 Type II with one pilot customer, say it burns
runway. If a questionnaire answer claims a control that does not exist, say it is a
misrepresentation that can void the contract. If secrets live in the repo, that is the
first fix, before any policy.

## Próximos Pasos

End every output with 3-5 concrete actions, for example:
- "Instalá gitleaks en pre-commit y rotá la clave que encontró en el historial hoy."
- "Cargá las 40 preguntas del banco en el brain con dueño y fecha de revisión esta semana."
- "Respondé el cuestionario del banco con el borrador marcado `[SIN EVIDENCIA]` y revisalo con el CTO antes del jueves."
- "Pedí cotización a 2 auditores de ISO 27001 recién cuando 3 deals del pipeline lo exijan por escrito."
- "Revisá con un abogado local el aviso de privacidad para LGPD y Ley 7593."

## Sources

- OWASP Top 10 for LLM Applications 2025: https://genai.owasp.org/llm-top-10/
- Model Context Protocol specification (security and user consent): https://modelcontextprotocol.io/specification/latest
- gitleaks: https://github.com/gitleaks/gitleaks ; trufflehog: https://github.com/trufflesecurity/trufflehog
- Semgrep: https://semgrep.dev ; Trivy: https://trivy.dev
- Vanta, security questionnaires: https://www.vanta.com/collection/trust/security-questionnaires-explained
- SOC 2 and ISO 27001 costs: getagency.com (https://www.getagency.com), scrut.io (https://www.scrut.io/hub/iso-27001/iso-27001-certification-cost), consilien.com (https://consilien.com)
- Comp AI: https://trycomp.ai
- LGPD (Lei 13.709/2018): https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2018/lei/l13709.htm
- Ferrere, Paraguay Ley 7593: https://www.ferrere.com/es/novedades/paraguay-adopta-su-ley-de-proteccion-de-datos-personales/
- [Agent Security Basics](references/agent-security-basics.md): day-1 controls
- [Questionnaire Bank](references/questionnaire-bank.md): answer bank structure and common questions
- [Certification Costs](references/certification-costs.md): SOC 2, ISO 27001, tooling, decision rule
- [LATAM Context](references/latam-context.md): data protection laws, procurement, vendor portals
