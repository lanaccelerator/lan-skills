# LATAM Context: AI Engineering Playbook

See shared/latam-benchmarks.md for canonical LATAM benchmark data. Label US figures as
`(US-sourced benchmark, [Source])` and add the LATAM figure when one exists. There is no
public LATAM dataset on AI coding spend per engineer; do not invent one. Use the team's
own logs.

## Spend is in USD, revenue is not

- Model APIs and agent subscriptions are billed in USD. Salaries, prices and revenue are
  often in local currency, so the same token bill weighs more on a LATAM P&L. Token
  budgets, cheapest-adequate routing for tests and judges, and a hard cap per run are not
  optimizations: they protect runway.
- Corporate cards with USD limits or FX restrictions can cut access mid-month (the
  Argentina case is the classic one). Keep a backup payment method and an alert before the
  cap.
- Report model spend monthly in USD and as a share of revenue in local currency.

## Evaluate in the language your users write

- Prompts, test cases and LLM judges must use the users' real language and dialect:
  Rioplatense voseo, Paraguayan Spanish with Guaraní words (jopara), Brazilian Portuguese,
  Mexican business Spanish. An eval set written in neutral English does not catch the
  failures your users will see.
- Include local formats in test data: RUC, CUIT, RFC, CPF and CNPJ ids, decimal comma,
  dates as DD/MM/YYYY, local currencies.

## Personal data sent to model providers

- Sending customer personal data to a model provider abroad is an international data
  transfer under laws like Brazil's LGPD and Paraguay's Ley 7593 (promulgated 27 Nov 2025,
  2-year grace, enforceable around Nov 2027, per Ferrere). Use test data in QA and evals;
  check the provider's data retention and training terms; record the decision.
- For the full law map and certifications, use the security-compliance-starter skill.

## Small teams, high leverage

- LATAM startups often have one or two technical people. The orchestrator plus cheap
  subagents pattern and docs-as-memory matter more here: they let one engineer run the
  throughput of a larger team (benchmark: LAN Brain, 116 PRs in 30 days, one person).
- Hiring: the standard stack (TypeScript, React or Next.js, PostgreSQL) has the widest
  LATAM talent pool and the best agent support. Avoid niche stacks the agent and the local
  market both know poorly.

## Sources

- Ferrere, Paraguay Ley 7593: https://www.ferrere.com/es/novedades/paraguay-adopta-su-ley-de-proteccion-de-datos-personales/
- LGPD (Lei 13.709/2018): https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2018/lei/l13709.htm
- LAN Brain workflow-bench (Aug 2026)
