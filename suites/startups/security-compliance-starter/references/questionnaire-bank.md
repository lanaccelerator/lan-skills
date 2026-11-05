# Security Questionnaire Answer Bank

**Sources:**
- Vanta, security questionnaires explained (SIG, CAIQ formats): https://www.vanta.com/collection/trust/security-questionnaires-explained
- Cloud Security Alliance, CAIQ: https://cloudsecurityalliance.org/research/cloud-controls-matrix
- Shared Assessments, SIG: https://sharedassessments.org/sig/

Security questionnaires eat up to ~44% of a 45-day SaaS sales cycle (Vanta). Most of them
ask the same 40 questions in different words. Answer once, keep the evidence next to the
answer, reuse.

---

## 1. Where it lives

One page per domain in the company brain (or one shared doc with one section per domain):
`security/answer-bank/<domain>`. If a brain is connected, the agent reads these pages to
draft a new questionnaire. Without a brain, a single markdown file or spreadsheet works.

Each answer is a row:

| ID | Question (canonical wording) | Answer (2-4 sentences, true today) | Status | Evidence | Owner | Last reviewed |
|---|---|---|---|---|---|---|

Status values: **Sí** (in place, evidence exists), **Parcial** (partly in place, say
what is missing), **No, planificado** (with target quarter), **No aplica** (with reason).

## 2. Rules for answering

1. Never claim a control that does not exist. "No, planificado para T2" is acceptable; a
   false "Sí" is a misrepresentation that can void the contract.
2. Answers are short and specific: tool names, frequencies, regions. No marketing.
3. Every "Sí" links evidence: a screenshot, a policy, a log, a report.
4. The agent drafts; a human owner approves before sending. Answers it cannot support are
   marked `[SIN EVIDENCIA]`.
5. New questions and answers go back into the bank the same day.
6. Review every answer each quarter and after any infrastructure change.

## 3. The 40 most common questions, by domain

**Governance**
1. Do you have a written information security policy approved by management?
2. Who is responsible for security (name, role)?
3. Do employees and contractors sign confidentiality agreements?
4. Do you run security awareness training, and how often?
5. Do you hold SOC 2, ISO 27001 or another certification? If not, what is the plan?

**Access control**
6. Is MFA enforced for all employees on email, code hosting and cloud consoles?
7. Do you support SSO (SAML or OIDC) for customer users?
8. How are access rights granted, reviewed and revoked (and how fast at offboarding)?
9. Is access to production data restricted to named people, and logged?
10. How are passwords and secrets stored?

**Data protection**
11. Is customer data encrypted in transit? Which TLS version?
12. Is customer data encrypted at rest? Who manages the keys?
13. Where is customer data hosted (provider, region)? Can it be kept in a given country?
14. How is customer data isolated between tenants?
15. What is your data retention policy, and how is data deleted at contract end?
16. Do you use customer data to train AI models?

**Infrastructure and application security**
17. Which cloud providers do you use?
18. Do you scan code and dependencies for vulnerabilities? With what tools and how often?
19. Have you had a penetration test in the last 12 months? Can you share a summary?
20. How do you manage patches and updates?
21. Do you scan for secrets in code?
22. How do you separate development, staging and production?

**AI-specific**
23. Which AI models or providers process customer data, and under what terms?
24. How do you defend against prompt injection and data leakage through AI features?
25. Can customers opt out of AI processing?
26. Do AI agents or tools have access to production systems? With what permissions?

**Business continuity**
27. How often do you back up data, and when did you last test a restore?
28. What are your RPO and RTO targets?
29. Do you have a business continuity and disaster recovery plan?

**Incident response**
30. Do you have a documented incident response procedure?
31. How fast do you notify customers of a security incident affecting their data?
32. Have you had a security incident in the last 24 months?
33. Do you log and monitor security events? How long are logs kept?

**Vendors and subprocessors**
34. Do you have a list of subprocessors? Will you notify changes?
35. How do you assess the security of your own vendors?

**Privacy and legal**
36. Which data protection laws do you comply with (LGPD, Ley 7593, others)?
37. Will you sign our Data Processing Agreement?
38. How do you handle data subject requests (access, correction, deletion)?
39. Do you carry cyber liability insurance? Coverage amount?
40. Do you have a public security or trust page?

## 4. Drafting a new questionnaire with the agent

1. Load the questionnaire (spreadsheet, portal export, PDF).
2. For each question, the agent finds the closest canonical question in the bank and
   drafts the answer in the buyer's wording and language.
3. No match, or the bank answer is older than 90 days: mark `[REVISAR]` for the owner.
4. Output: the filled questionnaire plus a list of new questions to add to the bank.
5. Log in the CRM: questionnaire received date, sent date, open items.
