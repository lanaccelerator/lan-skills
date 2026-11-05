---
name: rapid-mvp-builder
description: >
  Use when a founder asks what to build first, how to scope or design the MVP, how to
  prioritize features, which tech stack to use, or how to build it fast with Claude Code
  or another AI coding agent ("qué construyo primero", "armame el plan del MVP", "cómo
  priorizo features", "qué stack uso", "escribime el PRD", "cómo lo construyo con Claude
  Code si no soy técnico"). Produces a testable hypothesis, MoSCoW feature cut, a one-page
  PRD the agent builds from, stack, week-by-week build plan with LATAM payment and
  compliance requirements, a day-1 security checklist and a launch checklist. NOT for
  growth channels or launch marketing (use go-to-market-strategist), pricing (use
  pricing-strategy-designer), judging if the idea is venture-scale (use
  venture-model-validator), the team's ongoing AI engineering workflow (use
  ai-engineering-playbook) or certifications and security questionnaires (use
  security-compliance-starter).
categories: ["business", "startups", "venture-capital"]
metadata:
  author: lan-accelerator
  version: "1.2"
  suite: startups
  complements: [go-to-market-strategist, pricing-strategy-designer, startup-metrics-okrs, ai-engineering-playbook, security-compliance-starter]
license: MIT
---

# Rapid MVP Builder

Designs a lean, hypothesis-driven MVP using Lean Startup principles and MoSCoW
prioritization, then turns it into a one-page PRD that an AI coding agent builds from.
Produces a structured build plan with LATAM-specific tech stack guidance, payment and
data-protection requirements, a day-1 security checklist and a launch checklist.

## Step 1: Input Gathering

Ask all questions in ONE message. Do not start planning until you have answers
(or stated assumptions) for each. Defaults in brackets.

1. **Business model:** SaaS / marketplace / e-commerce / fintech / other
2. **Target customer:** Who is the first user? (not the TAM: the specific first 100 users)
3. **The one core problem:** What is the single biggest pain the MVP must solve?
4. **Hypothesis to validate:** What is the one testable statement this MVP will prove or
   disprove? (Example: "Restaurant owners will pay $50/month to reduce food waste if we
   connect them with recycling collectors in under 2 hours.")
5. **Founding team tech capacity:** Solo non-technical / non-technical with CTO co-founder
   / technical founder
6. **Geography:** Brazil / Mexico / Colombia / Paraguay / pan-LATAM / US-global
7. **Timeline:** How many weeks to MVP? [2 with an AI coding agent, 4 without]
8. **AI in the product:** Is AI the core of the product (agent, AI service), a feature, or absent?
9. **Build tools:** AI coding agent (Claude Code, Cursor, Codex), no-code, or a hired
   developer? [AI coding agent]

If the user does not answer a question, proceed with a stated assumption and flag it
as: `[ASSUMPTION: ...]`. Do not silently skip inputs. Read the company brain first per
references/shared/company-brain-integration.md: if LAN Brain or another MCP-connected
knowledge base holds customer interviews, product notes or an existing PRD, read them
before asking.

## Step 2: Apply Frameworks

Read [references/mvp-framework.md](references/mvp-framework.md) BEFORE building the plan.
Apply these frameworks in order:

1. **Eric Ries "The Lean Startup":** Build-Measure-Learn loop. MVP = minimum required to
   test the hypothesis (not "minimum viable product" in the feature sense: it is the
   minimum experiment to get one learning).
   Source: http://theleanstartup.com/
2. **MoSCoW Prioritization:** Must-have / Should-have / Could-have / Won't-have.
   Challenge every "must-have" with: "What specifically breaks if this is not in v1?"
   Source: https://www.productplan.com/glossary/moscow-prioritization/
3. **Pieter Levels constraint-based development:** Ship with nothing, iterate with signal.
   Source: https://levels.io/bootstrapping/
4. **YC "Launch Now":** The cost of not shipping is higher than the cost of a rough launch.
   Every week without a live product is a week without learning.
   Source: https://www.ycombinator.com/library/4D-yc-s-essential-guide-to-go-to-market
5. **A PRD over a prompt:** with Claude Code or a similar agent, the bottleneck moves from
   writing code to specifying it. Write the one-page PRD first (hypothesis, the one
   journey, Must-haves with acceptance tests, explicit Won't-haves, data model, definition
   of done), save it in the repo, and build from it one journey per session.
6. **Docs are the AI's memory:** the agent forgets between sessions; the PRD, a short
   `AGENTS.md`/`CLAUDE.md` and written decisions are what it remembers. LAN Brain
   workflow-bench (Aug 2026, 165 runs of real tasks): curated docs vs raw files gave -67%
   tokens and -52% time at least at the same quality; a cheaper model class (Opus) with
   curated docs scored 82.9/100 vs the top model class (Fable) alone at 79.6; fixing 3
   stale pricing pages raised scores +56 points across all 4 models tested. Good docs beat
   a more expensive model, and a stale page poisons every answer that touches it.
7. **Progressive disclosure:** Anthropic removed over 80% of Claude Code's system prompt
   for newer models with no measurable loss. Keep the instructions file short, let the
   model use judgment, let skills and deeper docs load only when needed, and keep tool
   descriptions simple.
8. **Shipping cadence:** small PRs merged and deployed several times per day. Benchmark:
   LAN Brain shipped 116 PRs in 30 days (16 in one day) with one person coding with Claude
   Code.
9. **Security day-1:** secrets scanning pre-commit (gitleaks or trufflehog), least
   privilege (Row Level Security, scoped keys, scoped agent and tool access), dependency
   scanning (Trivy, Semgrep or `npm audit`), server-side payment checks. Questionnaires,
   laws and certifications go to `/security-compliance-starter`.

## Step 3: Workflow

Execute in this exact order:

1. **State the hypothesis.** Rewrite it as a testable statement: "This MVP will prove that
   [target customer] will [take specific action] to solve [specific problem] if we provide
   [minimum solution]." This is the north star for every prioritization decision.
2. **List all features** the user has mentioned (may be long; do not filter yet).
3. **Apply MoSCoW to each feature.** For every "Must-have" candidate, ask: "What
   specifically breaks if this is not in v1?" If the answer is "nothing visible to the
   user," it is a Should-have or lower.
4. **Write the one-page PRD** using the minimum PRD in
   [references/mvp-framework.md](references/mvp-framework.md). Every Must-have gets an
   acceptance test. This is the document the agent builds from.
5. **Tech stack recommendation** based on business model + team tech capacity: use the
   decision tree in [references/mvp-framework.md](references/mvp-framework.md).
6. **Build the plan** (default 2 weeks with an AI coding agent, 4 weeks without; adapt to
   the stated timeline):
   - Phase 1: Core data model + authentication + user roles (+ the model call, if AI is the core)
   - Phase 2: Primary user flow, the one journey from login to value
   - Phase 3: Payment + core LATAM integrations
   - Phase 4: Security minimum + launch checklist completion
   Each phase ships as several small PRs, not one big branch.
7. **Identify LATAM-required integrations** from
   [references/latam-context.md](references/latam-context.md) based on geography input.
   These are mandatory, not optional.
8. **Day-1 security checklist** from references/mvp-framework.md, section 5.
9. **Launch checklist:** minimum criteria the product must meet before calling it "live".
10. Output using the [TEMPLATES.md](TEMPLATES.md) structure, then Próximos Pasos.

## Step 4: Output Format

ALWAYS use this exact template structure. Do not change section headings, table columns, or field order. Fill every [bracketed placeholder] with real analysis from the user's startup.

See [TEMPLATES.md](TEMPLATES.md) for the filled example. User-facing output is in Spanish
unless the founder writes in another language.

The output contains, in order:
- **Hipótesis** (one sentence: what this MVP will prove or disprove)
- **Priorización MoSCoW:** Feature | Categoría | Por qué | Dependencia | Tiempo estimado
- **PRD de una página** (the document the agent builds from)
- **Stack recomendado:** Capa | Tecnología | Por qué
- **Plan de construcción:** Semana | Objetivo | Qué se publica | Cómo se valida
- **Cadencia y memoria del agente** (PR rhythm, docs the agent reads)
- **Checklist de seguridad día 1**
- **Checklist de lanzamiento**
- **Contexto LATAM** (payment integrations + data-protection requirements for the geography)
- **Próximos Pasos**

## LATAM Context

Read [references/latam-context.md](references/latam-context.md) BEFORE outputting the plan.
For benchmarks, follow references/shared/latam-benchmarks.md. LATAM payment integrations are
NOT optional: they are Must-haves for consumer and fintech MVPs.

Key requirements by geography:
- **Brazil:** PIX integration required for any consumer or B2C product (~40% of online
  purchases, EBANX Beyond Borders 2025). LGPD data notice required at launch.
- **Paraguay:** Ley 7593 (general personal data protection), promulgated 27 Nov 2025 with a
  2-year grace period, enforceable around Nov 2027 (Ferrere). Ship the consent notice and
  privacy policy in v1 so you do not retrofit consent later.
- **Mexico:** OXXO (cash vouchers) + SPEI (bank transfer) for e-commerce.
  SAT CFDI 4.0 required for B2B invoicing.
- **Colombia:** PSE (bank transfer) + Nequi (mobile wallet) for consumer products; check
  Bre-B (instant payments, launched 2025) support with your provider.
- **LATAM-wide:** Mercado Pago covers all major markets as a unified integration option.

Tech talent notes:
- LATAM developers skew toward Node.js, React, PostgreSQL: avoid niche frameworks that
  limit hiring velocity
- Supabase is widely available and reduces backend complexity at MVP stage

Compliance note: Brazil LGPD (and Paraguay Ley 7593, once enforceable) require a data
collection notice even at MVP stage. Mexico SAT CFDI electronic invoicing is required for
B2B billing. These are launch requirements, not post-launch concerns.

Label LATAM requirements as "LATAM requirement" not as benchmark citations: these are
regulatory and behavioral facts, not survey data.

## Tone & Editorial Voice

See references/shared/editorial-voice.md: direct, no sugarcoating. You are NOT a
cheerleader. Challenge scope creep aggressively.

If the founder lists more than 10 features for a first MVP, say so directly:
"Listaste [N] features para un MVP. Eso no es un MVP, es un producto de Serie A. El MVP es
UN recorrido que funciona, del login al valor. Todo lo demás es alcance futuro."

If the founder wants to start building from a one-line prompt, say it plainly: without a
PRD the agent builds a generic app, fast. The goal of an MVP is ONE LEARNING as fast as
possible. Every feature that is not required for that learning is waste.

## Próximos Pasos

The FIRST action is always: validate the hypothesis before writing a single line of code.
End every output with 3-5 concrete actions, for example:

- "Hablá con 5 usuarios objetivo esta semana. Preguntales: '¿Cómo resolvés hoy [problema]?
  ¿Cuánto pagarías por algo que lo baje de [X horas] a [Y minutos]?'"
- "Guardá el PRD en `docs/prd.md` y abrí cada sesión de Claude Code pidiéndole que lo lea
  antes de tocar código."
- "Instalá gitleaks como hook de pre-commit hoy, antes del primer commit con claves."
- "Pedí la cuenta de desarrollador del proveedor de pagos ya: la aprobación tarda días y
  puede trabar la semana 3."

BAD: "Empezá a construir el producto." Building before talking to users is the most common
and most expensive early-stage mistake. AI coding agents make building cheap; they do not
make the wrong product right.

Handoffs: `/go-to-market-strategist` for the first 100 users, `/pricing-strategy-designer`
before the payment page goes live, `/startup-metrics-okrs` to pick the metric that proves
the hypothesis, `/ai-engineering-playbook` for the team's ongoing way of building with
agents, `/security-compliance-starter` when the first corporate asks for a security
questionnaire.

## Sources

- Lean Startup: http://theleanstartup.com/
- MoSCoW Prioritization: https://www.productplan.com/glossary/moscow-prioritization/
- Pieter Levels: https://levels.io/bootstrapping/
- YC Launch Now: https://www.ycombinator.com/library/4D-yc-s-essential-guide-to-go-to-market
- Claude Code docs: https://code.claude.com/docs
- Anthropic, "The new rules of context engineering" (claude.dev blog): https://claude.dev/blog/the-new-rules-of-context-engineering-for-claude-5-generation-models/
- Claude (@claudeai), post of 4 Nov 2026: over 80% of Claude Code's system prompt removed for newer models with no measurable loss: https://www.instagram.com/p/DfVIxvCEbm3/
- LAN Brain workflow-bench (Aug 2026): curated brain vs raw files, 165 runs, published by LAN Brain
- gitleaks: https://github.com/gitleaks/gitleaks ; trufflehog: https://github.com/trufflesecurity/trufflehog
- Trivy: https://trivy.dev ; Semgrep: https://semgrep.dev
- EBANX Beyond Borders 2025 (Pix share of online purchases): https://insights.ebanx.com/en/
- Paraguay Ley 7593 (Ferrere): https://www.ferrere.com/es/novedades/paraguay-adopta-su-ley-de-proteccion-de-datos-personales/
- [MVP Framework](references/mvp-framework.md): MoSCoW rubric, tech stack decision tree, PRD, docs-as-memory, security day-1
- [LATAM Context](references/latam-context.md): payment integrations, data-protection requirements
