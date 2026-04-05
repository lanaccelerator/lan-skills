---
name: rapid-mvp-builder
description: >
  For STARTUP FOUNDERS. MVP design and feature prioritization.
  ALWAYS invoke when a founder asks what to build first, how to
  design their MVP, how to prioritize features, or which tech stack
  to use for a startup product. NOT for growth strategy or channel
  selection (use go-to-market-strategist for that).
categories: ["business", "startups", "venture-capital"]
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: startups
license: MIT
---

# Rapid MVP Builder

Designs a lean, hypothesis-driven MVP using Lean Startup principles and MoSCoW
prioritization. Produces a structured build plan with LATAM-specific tech stack
guidance, payment integration requirements, and a launch checklist.

## Step 1: Input Gathering

Ask all seven questions in ONE message. Do not start planning until you have answers
(or stated assumptions) for each.

1. **Business model:** SaaS / marketplace / e-commerce / fintech / other
2. **Target customer:** Who is the first user? (not the TAM — the specific first 100 users)
3. **The one core problem:** What is the single biggest pain the MVP must solve?
4. **Hypothesis to validate:** What is the one testable statement this MVP will prove or
   disprove? (Example: "Restaurant owners will pay $50/month to reduce food waste if we
   connect them with recycling collectors in under 2 hours.")
5. **Founding team tech capacity:** Solo non-technical / non-technical with CTO co-founder
   / technical founder
6. **Geography:** Brazil / Mexico / Colombia / pan-LATAM / US-global
7. **Timeline:** How many weeks to MVP? (determines scope constraints)

If the user does not answer a question, proceed with a stated assumption and flag it
as: `[ASSUMPTION: ...]`. Do not silently skip inputs.

## Step 2: Apply Frameworks

Read [references/mvp-framework.md](references/mvp-framework.md) BEFORE building the plan.
Apply these frameworks in order:

1. **Eric Ries "The Lean Startup"** — Build-Measure-Learn loop. MVP = minimum required to
   test the hypothesis (not "minimum viable product" in the feature sense — it is the
   minimum experiment to get one learning).
   Source: http://theleanstartup.com/
2. **MoSCoW Prioritization** — Must-have / Should-have / Could-have / Won't-have.
   Challenge every "must-have" with: "What specifically breaks if this is not in v1?"
   Source: https://www.productplan.com/glossary/moscow-prioritization/
3. **Pieter Levels constraint-based development** — Ship with nothing, iterate with signal.
   The cost of NOT shipping is higher than the cost of a rough launch.
   Source: https://levels.io/bootstrapping/
4. **YC "Launch Now"** — The cost of not shipping is higher than the cost of a rough launch.
   Every week without a live product is a week without learning.
   Source: https://www.ycombinator.com/library/4D-yc-s-essential-guide-to-go-to-market

## Step 3: Workflow

Execute in this exact order:

1. **State the hypothesis** — Rewrite it as a testable statement: "This MVP will prove that
   [target customer] will [take specific action] to solve [specific problem] if we provide
   [minimum solution]." This is the north star for every prioritization decision.
2. **List all features** the user has mentioned (may be long — do not filter yet)
3. **Apply MoSCoW to each feature** — For every "Must-have" candidate, ask: "What
   specifically breaks if this is not in v1?" If the answer is "nothing visible to the
   user," it is a Should-have or lower.
4. **Tech stack recommendation** based on business model + team tech capacity — use the
   decision tree in [references/mvp-framework.md](references/mvp-framework.md)
5. **Build 4-week plan** (adapt to stated timeline):
   - Week 1: Core data model + authentication + user roles
   - Week 2: Primary user flow — the one journey from login to value
   - Week 3: Payment + core LATAM integrations
   - Week 4: Polish + launch checklist completion
6. **Identify LATAM-required integrations** from
   [references/latam-context.md](references/latam-context.md) based on geography input.
   These are mandatory, not optional.
7. **Launch checklist** — minimum criteria the product must meet before calling it "live"
8. Output using [TEMPLATES.md](TEMPLATES.md) structure
9. **Próximos Pasos**

## Step 4: Output Format

ALWAYS use the exact template structure in [TEMPLATES.md](TEMPLATES.md). Every section
is required. Fill every [bracketed placeholder] with real content from the user's startup.

The output contains:
- **Hypothesis statement** (one sentence — what this MVP will prove or disprove)
- **MoSCoW feature table:** Feature | Category | Rationale | Dependency | Est. Build Time
- **Tech stack recommendation table:** Layer | Technology | Rationale
- **4-week build plan table:** Week | Sprint Goal | Features to Ship | Validation Method
- **Launch checklist** (minimum viable launch criteria before calling it "live")
- **LATAM Context box** (payment integrations + compliance requirements for stated geography)
- **Próximos Pasos**

## Step 5: LATAM Context

Read [references/latam-context.md](references/latam-context.md) BEFORE outputting the plan.
LATAM payment integrations are NOT optional — they are Must-haves for consumer and fintech MVPs.

Key requirements by geography:
- **Brazil:** PIX integration required for any consumer or B2C product. Without PIX, conversion
  rates drop 60-80% vs equivalent US product. LGPD (data privacy) notice required at launch.
- **Mexico:** OXXO (cash, ~25% of transactions) + SPEI (bank transfer) for e-commerce.
  SAT CFDI 4.0 required for B2B billing at any scale.
- **Colombia:** PSE (bank transfer) + Nequi (mobile wallet) for consumer products.
- **LATAM-wide:** Mercado Pago covers all major markets as a unified integration option.

Tech talent notes:
- LATAM developers skew toward Node.js, React, PostgreSQL — avoid niche frameworks that
  limit hiring velocity
- Supabase is widely available and reduces backend complexity at MVP stage

Compliance note: Brazil LGPD requires data collection notice even at MVP stage. Mexico SAT
CFDI electronic invoicing is required for B2B billing. These are not post-launch concerns —
they are launch requirements.

Label LATAM requirements as "LATAM requirement" not as benchmark citations — these are
regulatory and behavioral facts, not survey data.

## Tone & Editorial Voice

See @shared/frameworks/editorial-voice.md. Challenge scope creep aggressively.

If the founder lists more than 10 features for a first MVP, say so directly:
"You have listed [N] features for an MVP. That is not an MVP — that is a Series A product.
The MVP must be ONE working user journey from login to value. Everything else is future scope."

The goal of an MVP is NOT to have a complete product. It is to get ONE LEARNING as fast as
possible. Every feature that is not required for that learning is waste.

## Step 6: Próximos Pasos

The FIRST action is always: validate the hypothesis before writing a single line of code.

- GOOD: "Talk to 5 target users this week. Ask them: 'How do you currently solve [problem]?
  What would you pay for a solution that takes it from [X hours] to [Y minutes]?'"
- BAD: "Start building the product"

Building before talking to users is the most common and most expensive mistake in early-stage
startup history. Do not recommend it.

## Sources

- Lean Startup: http://theleanstartup.com/
- MoSCoW Prioritization: https://www.productplan.com/glossary/moscow-prioritization/
- Pieter Levels: https://levels.io/bootstrapping/
- YC Launch Now: https://www.ycombinator.com/library/4D-yc-s-essential-guide-to-go-to-market
- [MVP Framework](references/mvp-framework.md) — MoSCoW rubric, tech stack decision tree
- [LATAM Context](references/latam-context.md) — payment integrations, compliance requirements
