---
name: ai-engineering-playbook
description: >
  For small startup teams building software with AI coding agents. ALWAYS invoke when a
  founder or CTO asks how to organize engineering with Claude Code, Codex or Cursor: docs
  and PRDs as the AI's memory, AGENTS.md or CLAUDE.md, which model class for which task,
  test and LLM-judge budgets, browser QA, adversarial review before production and
  shipping several PRs per day. Spanish triggers: "cómo trabajamos con Claude Code en el
  equipo", "armame el AGENTS.md", "qué modelo uso para cada tarea", "cuánto gastamos en
  tests con IA", "cómo revisamos antes de pasar a producción", "cómo shippeamos más
  rápido". Produces the team's engineering operating system: instructions file, model
  routing table, test and judge budget, weekly cadence and review checklist. NOT for MVP
  scoping or feature prioritization (use rapid-mvp-builder), compliance certification or
  security questionnaires (use security-compliance-starter) or KPI dashboards (use
  startup-kpi-automator).
categories: ["startups", "engineering", "ai"]
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: startups
  complements: [rapid-mvp-builder, security-compliance-starter, startup-kpi-automator, ai-service-horizon]
license: MIT
---

# AI Engineering Playbook

How a team of one to ten people builds production software with AI coding agents without
burning money or shipping leaks. The output is the team's engineering operating system:
what the agent reads, which model class does which job, how tests and LLM judges are
budgeted, how work ships, and what review gates production.

Built on Anthropic's context engineering guidance (progressive disclosure, short
instructions, simple tool descriptions), the Claude Code subagent docs (route subagent
tasks to lower-cost models), Anthropic's advisor strategy (a small model executes and
consults a big one when needed), OWASP's Top 10 for LLM Applications, and LAN Brain's own
workflow-bench measurements. Tool-agnostic: the same system works in Claude Code, Codex
and Cursor; only file names and config syntax change.

## Step 1: Input Gathering

Read the company brain first per references/shared/company-brain-integration.md: search
for an existing AGENTS.md or CLAUDE.md, engineering decisions, incident notes and model
spend. Then ask in ONE message only for what you could not find. Defaults in brackets.

1. **Team:** how many people write code, and how many are technical? [1-3, at least one technical]
2. **Agent tools:** Claude Code, Codex, Cursor, other? [Claude Code]
3. **Repo state:** new, or existing with docs? Is there an instructions file today? [existing, no instructions file]
4. **Product surface:** web app, API, mobile, AI product (the model call is the core)? [web app + API]
5. **Sensitive paths:** authentication, multi-tenant data, billing, personal data? [auth + billing]
6. **Model spend today:** monthly AI coding and API spend, and who pays (subscription vs API key)? [unknown]
7. **Shipping today:** PRs merged per week, deploy method, tests that run before deploy? [a few per week, manual deploy, few tests]
8. **Pain:** what breaks most (agent forgets context, regressions, cost, slow review)? [agent forgets context]

Mark anything you assume as `[ASSUMPTION: ...]` and continue. Never block on a missing answer.

## Step 2: Docs as the AI's Memory

The agent starts every session from zero. What it remembers is what the repo or the
company brain says. Read [references/engineering-practices.md](references/engineering-practices.md),
section 1.

- **Write the PRD before the prompt.** A spec in `docs/` beats any clever prompt; for scoping
  the first PRD, hand off to `/rapid-mvp-builder`.
- **Curate, do not dump.** LAN Brain workflow-bench (Aug 2026, 165 runs of real tasks):
  a curated brain vs raw files cut tokens 67% and time 52% at least at the same quality;
  a cheaper model class (Opus) with curated docs scored 82.9/100 vs the top model class
  (Fable) alone at 79.6; fixing 3 stale pricing pages raised scores +56 points across all
  4 models tested.
- **Lessons:** good docs beat a bigger model; one stale page poisons every answer that
  reads it; the PR that changes behavior updates the doc in the same PR.

## Step 3: Instructions File, Short (Progressive Disclosure)

Design `AGENTS.md` (Codex, Cursor and most agents) or `CLAUDE.md` (Claude Code; it can
import `AGENTS.md` so there is one source). Anthropic removed over 80% of Claude Code's
system prompt for newer models with no measurable loss. Apply the same principles:

1. **Let the model use judgment.** State goals and hard rules, not step-by-step scripts.
   Delete rules written for an older model's weaknesses.
2. **Design the interfaces.** Clear folder layout, file names, scripts and commands
   (`make test`, `make deploy`) so the right action is obvious.
3. **Progressive disclosure.** The root file is a map: under ~150 lines, pointing to
   `docs/`, skills and per-folder instruction files that load only when needed.
4. **Simple tool descriptions.** One line: what it does and when to use it.

The skeleton is in [TEMPLATES.md](TEMPLATES.md). Hard rules that always stay in the root
file: secrets handling, what needs human approval, how to run tests, deploy surfaces.

## Step 4: Model Routing

Route each job to the cheapest model class that does it well. Read
[references/engineering-practices.md](references/engineering-practices.md), section 2.

| Job | Model class | Why |
|---|---|---|
| Planning, architecture, synthesis, final review | Top class (Fable) | Judgment errors here cost days |
| Implementation, non-trivial edits | Opus | Best cost to quality for code |
| Sweeps, research, mechanical edits, parallel subagents | Sonnet | Cheap and good enough |
| Trivial high-volume steps, LLM judges, checks | Haiku | Cheapest adequate |

- **Orchestrator + subagents.** One session on the top class plans and reviews;
  subagents on cheaper classes do the file sweeps and mechanical work. Claude Code's docs
  recommend routing subagent tasks to lower-cost models like Haiku. Anthropic's advisor
  strategy is the inverse pattern for runtime: a small model executes and consults the big
  one only when stuck.
- **Refer to models by class, never by version number.** Versions rotate; the routing table
  should survive a release.
- **Re-run critical work when new models ship:** evals, key prompts, the judge set and the
  main user flows. A new release can fix a workaround you no longer need or break an
  assumption.

## Step 5: Tests and LLM Judges on a Budget

1. **Cheapest adequate class for tests and judges.** Haiku for judging and checks; Sonnet
   only when writing quality is what you measure. Never the top class or Opus in a test
   suite.
2. **Before any run that hits a paid API:** estimate cost, set a budget and a hard cap per
   run, sample excerpts instead of full inputs, log tokens per run, stop at the cap.
3. **Who pays.** Prefer subscription usage (headless agent runs) for dev-time LLM work; an
   API key belongs to the shipped product's runtime, one key per project, never borrowed
   from another project.
4. **Deterministic first.** Assertions, snapshot tests and type checks before any LLM judge.

## Step 6: Browser End-to-End QA

Have the agent drive a headless or isolated browser (Playwright, a sandboxed agent
browser) through the main flows after each deploy: sign up, core journey, payment,
permission denied. Rules:
- Never the developer's personal browser profile (sessions, cookies, saved passwords).
- Test accounts and test data only; never production customer data.
- No audio, no OS permission dialogs: headless by default, screenshots as evidence.

## Step 7: Adversarial Review Panel Before Production

Any change to authentication, authorization, billing or data exposure is NOT done on a
green test suite. Green tests prove what you thought of; leaks live in what you did not.
Run a panel of independent reviewers (separate agent sessions or people) against the
merged code, each with one lens:

1. **Malicious insider:** a legitimate user tries to read or change what is not theirs.
2. **Cross-tenant and null token:** another tenant's ID, an expired, missing or malformed token.
3. **Staleness:** caches, revoked access that still works, a downgrade that keeps paid features.
4. **Spec fidelity:** does the code do what the spec and the docs promise, including errors?

Every finding gets a reproduction, a fix and a permanent guard test. Details and the
result format: [references/engineering-practices.md](references/engineering-practices.md),
section 4. Basic security hygiene (secrets scanning, least privilege, dependency scans,
prompt-injection defense) and certifications: `/security-compliance-starter`.

## Step 8: Shipping Cadence

Several small PRs merged per day, each with its test, deployed automatically. Benchmark:
LAN Brain shipped 116 PRs in 30 days (16 in one day) with one person coding with Claude
Code. Weekly rhythm: Monday plan from the docs, daily merge and deploy, Friday review of
spend, incidents and stale docs. Never batch a week of work into one branch.

## Step 9: Output Format

ALWAYS use this exact template structure. Do not change section headings, table columns, or field order. Fill every [bracketed placeholder] with real analysis from the user's startup.

See [TEMPLATES.md](TEMPLATES.md) for the filled example. User-facing output is in
Spanish unless the team works in another language. Sections, in order: Diagnóstico,
AGENTS.md, Ruteo de modelos, Presupuesto de tests y jueces, QA en navegador, Panel
adversarial, Cadencia semanal, Próximos Pasos, Fuentes.

If a company brain is connected, file the operating system as an engineering page
(search before create, per references/shared/company-brain-integration.md) and save
learnings from incidents there, never in the public skill.

## LATAM Context

See [references/latam-context.md](references/latam-context.md): model spend is billed in
USD while salaries and revenue are in local currency, so token budgets matter more;
evaluate prompts and judges in the language and dialect your users write; personal data
sent to model providers abroad falls under local data protection laws. For benchmarks,
follow references/shared/latam-benchmarks.md.

## Tone & Editorial Voice

See references/shared/editorial-voice.md: direct, no sugarcoating. You are NOT a
cheerleader. If the team runs its test judges on the top model class, say it is burning
money. If auth changes ship on green tests alone, say the leak is a matter of time. If the
instructions file is 600 lines, say the agent is reading noise.

## Próximos Pasos

End every output with 3-5 concrete actions, for example:
- "Recortá el `AGENTS.md` a menos de 150 líneas hoy y mové el resto a `docs/`."
- "Pasá los jueces de la suite de tests a Haiku y poné un tope de US$5 por corrida."
- "Corré el panel adversarial de 4 lentes sobre el PR de permisos antes de mergearlo."
- "Agendá re-correr las evals y los 3 flujos clave el día que salga el próximo modelo."
- "Instalá gitleaks como pre-commit en todos los repos (ver /security-compliance-starter)."

## Sources

- Anthropic, "The new rules of context engineering" (claude.dev blog): https://claude.dev/blog/the-new-rules-of-context-engineering-for-claude-5-generation-models/
- Claude Code docs, subagents: https://code.claude.com/docs/en/sub-agents
- Anthropic, "The advisor strategy": https://claude.com/blog/the-advisor-strategy
- AGENTS.md open format: https://agents.md
- OWASP Top 10 for LLM Applications 2025: https://genai.owasp.org/llm-top-10/
- Playwright: https://playwright.dev
- LAN Brain workflow-bench (Aug 2026): curated brain vs raw files, 165 runs, published by LAN Brain
- [Engineering Practices](references/engineering-practices.md): docs-as-memory, routing, budgets, panel, cadence
- [LATAM Context](references/latam-context.md): USD spend, language evals, data transfer
- references/shared/company-brain-integration.md: brain read and write rules
