---
name: ai-service-horizon
description: >
  For STARTUP FOUNDERS deciding whether to sell software or the finished work. ALWAYS invoke
  when a founder asks if they should become an AI-native service company, add a done-for-you
  layer, or where each product line sits on the horizon: tool, tool+service or service.
  Spanish triggers: "vendo software o el servicio?", "me conviene ser una empresa de servicios
  con AI?", "agrego un servicio llave en mano?", "qué hacen los agentes y qué hacen las
  personas?", "ChatGPT ya hace lo que vendo, qué hago?". Uses YC's Summer 2026 RFS
  (AI-native service companies), Sequoia's Services: The New Software (USD 1 software : USD 6
  services), the "does Claude/ChatGPT already do it?" test and outcome-based pricing. Outputs
  a horizon scorecard per product line, agent vs human work split, margin model per stage,
  risks and a 90-day move. NOT for overall VC-backability (use venture-model-validator), the
  GTM plan (use go-to-market-strategist) or price levels (use pricing-strategy-designer).
categories: ["startups", "business", "strategy"]
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: startups
  complements: [venture-model-validator, go-to-market-strategist, pricing-strategy-designer, competitor-watch, ai-engineering-playbook]
license: MIT
---

# AI Service Horizon

Helps a founder decide where each product line should sit on the horizon:

**tool** (software the customer operates) -> **tool + service** (software plus done-for-you
setup, operation or review) -> **service** (the finished work, delivered by agents with humans
in oversight).

The question changed in 2026. General assistants do a growing share of what tools used to
sell, while the larger budget sits in services. The skill applies four lenses:

1. **YC Requests for Startups, Summer 2026, "AI-Native Service Companies"** (Gustaf
   Alströmer): AI agents as the primary workforce, humans in oversight. The company sells the
   outcome, not seats.
2. **Sequoia, "Services: The New Software"** (Julien Bek, Mar 2026): for every USD 1 spent on
   software, USD 6 is spent on services. A service sizes against the labor budget.
3. **The "does Claude/ChatGPT already do it?" test:** if a general assistant at about USD 20
   per user per month does 80% of the job, a tool needs proprietary data, workflow lock-in,
   distribution or a service layer to survive.
4. **Outcome-based pricing:** a service is priced by the finished unit, with mixed billing
   (setup + usage + outcome), designed with pricing-strategy-designer.

Margin and revenue-quality bars come from references/shared/ai-era-evaluation.md.

## Step 1: Input Gathering

Read the company brain first (references/shared/company-brain-integration.md sections 1-3):
`list_skills` for a saved procedure, then `search_brain` for offering, pricing, unit
economics, customer list, support or operations notes, and the latest competitor-watch page
(it carries the Claude/ChatGPT re-test). Read pages in full before using numbers.

Then ask, in ONE message, only for what is missing. Defaults in brackets.

1. **What you sell:** product lines, price and billing unit for each [from the brain's
   offering and pricing pages]
2. **Who does the work today at the customer:** an in-house team, an outsourcer or agency, the
   customer operating your software, or nobody (the job is not done) [ASSUMPTION: in-house
   team plus spreadsheets]
3. **What that work costs the customer:** monthly fee to the outsourcer, or team hours x
   salary [ASSUMPTION: estimate from local salary ranges, marked as such]
4. **Your margins per line:** gross margin, inference cost as % of revenue, human hours per
   customer per month (support, onboarding, review) [unknown: the skill builds the model and
   marks every input]
5. **Who could do oversight:** domain experts on the team or hireable (contador, abogado,
   analyst), and their loaded hourly cost [ASSUMPTION: local market rate]
6. **Liability and regulation:** does the result need a licensed signature, carry fines if
   wrong, or touch personal data? [ASSUMPTION: yes for tax, legal, health, credit]
7. **Segment, geography and stage** [from the brain]

Mark guesses as `[ASSUMPTION: ...]`. Never block on a missing number; show the model with the
assumption and the sensitivity to it.

## Step 2: Define the Finished Unit per Line

For each product line, name the unit of finished work the customer actually wants: a closed
month, a filed return, a resolved ticket, a collected invoice, a signed contract, a qualified
lead. If the line has no countable finished unit, it can only be a tool. Read
[references/horizon-scorecard.md](references/horizon-scorecard.md) section 1.

## Step 3: Run the Claude/ChatGPT Test

Per line, take 3 real customer tasks (anonymized), ask Claude and ChatGPT to do them with only
what a customer would paste in, and score the share of the job done acceptably (0%, 25%, 50%,
80%, 100%). If competitor-watch already ran the monthly re-test, reuse it.

- 80%+ as a tool, and none of proprietary data, workflow lock-in, distribution or service
  layer is proven: the tool position is not defensible. Moving right on the horizon is a
  candidate answer, not a rescue by default.
- Under 25%: the assistant is not the threat; the decision rests on margins and budget.

## Step 4: Split the Work: Agents vs Humans

Decompose each finished unit into its tasks (usually 6-12). For each task decide who does it
and how confidence is managed. Read [references/horizon-scorecard.md](references/horizon-scorecard.md)
section 2.

| Label | Meaning |
|---|---|
| AGENT | Agents do it at acceptable quality today, checked by sampling |
| AGENT + REVIEW | Agents draft, a human reviews every case before it goes out |
| HUMAN | Judgment, liability, exceptions or relationship: a person does it |

Rule of thumb: agents take volume, drafting, extraction, reconciliation and follow-up; humans
take judgment calls, exceptions, anything that is signed, and the customer relationship. The
YC test of an AI-native service: agents are the primary workforce, so AGENT plus AGENT +
REVIEW should cover most of the task count and most of the hours. For how to build and evaluate
the agents themselves, hand off to ai-engineering-playbook.

## Step 5: Score the Horizon per Line

Score each line 1-5 on six criteria (rubric in
[references/horizon-scorecard.md](references/horizon-scorecard.md) section 3):

1. Assistant substitution risk as a tool (5 = assistant cannot do it)
2. Agent readiness (share of tasks at AGENT or AGENT + REVIEW)
3. Outcome measurability (finished unit defined and countable)
4. Service budget (the customer already pays a person or a firm for this job)
5. Liability manageable (errors caught by oversight, capped by contract, insurable)
6. Human scaling (human hours per unit can fall quarter over quarter)

Recommendation rule (then apply judgment and say why):
- **Tool:** criterion 1 at 4-5 and criterion 4 at 1-2 (no service budget to capture).
- **Tool + service:** criteria 2 and 3 at 3+, but 5 or 6 at 2-3. The service is a wedge
  that feeds the product.
- **Service:** criteria 2, 3, 4 and 6 at 4+, and 5 at 3+.

## Step 6: Margin Model per Stage

For each line, model one customer per month at each position. Formulas and default ranges in
[references/horizon-scorecard.md](references/horizon-scorecard.md) section 4.

| Line item | Tool | Tool + service | Service (month 1-3) | Service (month 12 target) |
|---|---|---|---|---|
| Price per customer | | | | |
| Inference cost | | | | |
| Human hours x loaded cost | | | | |
| Other direct cost (insurance, reserves, tools) | | | | |
| Gross margin % | | | | |

Bars: gross margin above 70% is healthy for software, under 50% is fragile; AI builders expect
about 52% in 2026 (ICONIQ, via references/shared/ai-era-evaluation.md). A service that starts
at 50-60% is acceptable only if the model shows human hours per unit falling toward a
software-like margin. A service whose hours per unit do not fall is a consultancy: say so.

Market size moves too: a tool sizes against software spend, a service against the labor or
outsourcing budget for the same job (Sequoia: USD 6 on services per USD 1 on software). Show
both numbers.

## Step 7: Pricing Link

A service is priced by the finished unit. Use the three plans from pricing-strategy-designer
and mixed billing:

- **Mínimo:** a small, cheap entry to get in the door and convert most proposals, then upsell.
- **Estándar:** the average standard work you want to sell most.
- **Premium:** the expensive anchor; few buy it, it makes Estándar look reasonable.
- **Mixed billing:** setup fee + usage or volume + outcome or % of savings. Per seat only is
  no longer enough when agents do the work; capture part of the upside you generate, and mix
  models per client.

This skill proposes the billing structure per line. Price levels and tests go to
pricing-strategy-designer.

## Step 8: Risks

Name the risks per recommended position, each with a mitigation and an owner:

- **Quality:** error rate per finished unit, measured on a fixed evaluation set and by sampled
  human review. No eval set, no service.
- **Liability:** who answers when it is wrong. Contract caps, professional signature,
  insurance, clear scope.
- **Scaling humans:** human hours per unit is the KPI. If it stays flat, margins stay at
  agency levels.
- **Channel conflict:** a service competes with the customer's team or its outsourcer. Decide
  whether to replace, partner with, or sell through them.
- **Data and privacy:** customer data now flows through your agents and your people. Least
  privilege per agent and tool, consent, and local data law (see the LATAM reference).

## Step 9: The 90-Day Move

One move, not three. Pick the line with the clearest finished unit and run a time-boxed
experiment: who (5-10 existing customers or design partners), what (the finished unit and its
price), what to measure (human hours per unit, error rate, gross margin, retention), and the
kill criterion with a date.

File the analysis in the company brain (references/shared/company-brain-integration.md
section 4) at `strategy/horizon/<YYYY-MM-DD>-service-horizon` when connected, linked to the
offering and pricing pages; otherwise write `./brain-outbox/ai-service-horizon/<date>.md`.

## Output Format

ALWAYS use this exact template structure. Do not change section headings, table columns, or
field order. Fill every [bracketed placeholder] with real analysis from the user's startup.

See [TEMPLATES.md](TEMPLATES.md) for the filled example. Output in Spanish unless the founder
works in another language. Every number is sourced or marked `[ASSUMPTION]`.

## LATAM Context

See [references/latam-context.md](references/latam-context.md): the outsourced contador,
abogado and agency are the norm for LATAM SMEs (the service budget already exists), licensed
signatures are required for many filings, oversight talent costs less than in the US (which
helps service margins), and nearshore AI-native services can sell to US buyers. For
benchmarks, follow references/shared/latam-benchmarks.md.

## Tone & Editorial Voice

See references/shared/editorial-voice.md: direct, not a cheerleader. "Become a service" is
not a fix for a weak product; if the hours per unit will not fall, say the founder is building
an agency with a software story. If the tool is defensible and there is no service budget,
say stay a tool.

## Próximos Pasos

End with 3-5 concrete actions, for example:
- "Definí la unidad terminada de la línea de cierre mensual: 'mes cerrado y firmado por
  contador', y medí cuántas horas humanas lleva hoy en 3 clientes."
- "Ofrecé el cierre hecho a 10 clientes actuales a US$260 por mes durante 90 días; si a fin de
  enero las horas por cierre siguen arriba de 5, frená."
- "Armá un set de evaluación de 50 casos reales antes de prometer calidad: sin set no hay
  servicio."
- "Pasale la estructura de cobro (setup + fijo + variable) a pricing-strategy-designer para
  fijar los niveles de Mínimo, Estándar y Premium."

## Sources

- [Horizon Scorecard](references/horizon-scorecard.md): finished unit, work split, scoring
  rubric, margin formulas
- [LATAM Context](references/latam-context.md): outsourcing norms, licensed signatures, data
  law, nearshore services
- references/shared/ai-era-evaluation.md: wrapper risk, revenue quality, AI gross margins
- references/shared/company-brain-integration.md: brain read and write
- YC Requests for Startups, Summer 2026, "AI-Native Service Companies": https://www.ycombinator.com/rfs
- Sequoia, "Services: The New Software" (Julien Bek, Mar 2026): https://www.sequoiacap.com/article/services-the-new-software
- Bessemer, State of AI 2025: https://www.bvp.com/atlas/the-state-of-ai-2025
