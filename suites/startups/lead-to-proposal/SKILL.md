---
name: lead-to-proposal
description: >
  For STARTUP FOUNDERS selling B2B, one deal at a time. ALWAYS invoke when a founder just had a
  discovery or sales call, needs a business case, proposal, visual proposal deck or quote for a
  named prospect, or wants the follow-ups to close that deal. Spanish triggers: "armame la
  propuesta para X", "tuve la llamada de discovery con X", "cotización para este cliente",
  "armame el business case", "preparame la reunión con el gerente general", "seguimiento para
  cerrar el deal". Checks must-ask coverage, maps the buying group, matches pain to the
  startup's own cases and price list in the company brain, writes the business case sent
  before the decision meeting, the proposal and exec one-pager, and drafts the follow-ups
  (SPIN, MEDDICC, Challenger). Drafts only. NOT for designing the overall sales
  process (use sales-playbook-generator), running outbound campaigns (use
  outbound-learning-loop), setting price levels (use pricing-strategy-designer) or filing a
  meeting without a proposal (use meeting-notes-to-brain).
categories: ["startups", "sales", "business"]
metadata:
  author: lan-accelerator
  version: "1.2"
  suite: startups
  complements: [meeting-notes-to-brain, sales-playbook-generator, pricing-strategy-designer, outbound-learning-loop, customer-retention-expansion]
license: MIT
---

# Lead to Proposal

"Del lead a la propuesta firmada" for one specific deal. The skill turns a recorded
discovery call into a business case, a visual proposal and an executive meeting that the
prospect can only have received from a vendor who listened: their words, their numbers,
the case study closest to their situation, a mockup of what they would use, and a price
taken from the startup's own price list, never improvised.

Built on Neil Rackham's SPIN Selling (implied vs explicit needs), MEDDICC qualification
(metrics, economic buyer, decision criteria, decision process, identified pain, champion,
competition), Dixon and Adamson's Challenger Sale (commercial teaching and tailoring) and
the shared B2B buying framework (references/shared/b2b-buying-2026.md: buying groups,
must-ask list, business case before the proposal, executive meeting, full B2B process).
Social proof follows Cialdini's principle of similarity: the case study must look like the
prospect.

The order matters: **business case before the decision meeting, proposal the same day after
it.** Nothing is sent. Every document and message is a DRAFT for the founder to review.

## Step 1: Input Gathering

Read the brain first (Step 2), then ask in ONE message only for what you cannot find.
Defaults in brackets; mark guesses as `[ASSUMPTION: ...]`.

1. **Prospect**: company name, website, contact names and roles. [From the transcript and
   email domains]
2. **Discovery transcript**: pasted, file, or recorder connector. [Latest meeting with this
   company in the brain or recorder]
3. **What you sell them**: product or package discussed. [Inferred from the call, confirmed
   against the offering pages in the brain]
4. **Proposal format**: the startup's template (brain page, Drive doc, deck) or default.
   [Brain template if one exists, else the default in TEMPLATES.md]
5. **Brand assets of the prospect** for the deck mockups: logo, colors, sample of their
   data. [Public logo and site colors; mockup data taken from the call]
6. **Deadline and language**: [business case today, language of the call]

## Step 2: Read Context First

Follow references/shared/company-brain-integration.md sections 1-3.

When the brain is connected:
- `list_skills` / `get_skill`: the company's own proposal procedure wins.
- `search_brain` + `read_page`: offering (products, packages, scope limits), **pricing**
  (price list, discount rules, minimums), **case studies** (customer, industry, size,
  before/after metrics measured), proposal and deck templates, terms and conditions, vendor
  documents, and any previous interaction with this prospect.
- `walk_graph` from the prospect's company page to prior meetings, contacts and deals.
- If meeting-notes-to-brain already filed the discovery call, read that note instead of
  re-extracting the transcript.

Without a brain: ask for the price list, 2-3 case studies with measured results and the
template in one message. **Never invent a price, a discount, a case study or a customer
metric.** Missing price means the proposal ships with `[PRECIO: completar]`.

## Step 3: Qualify the Discovery (must-ask + MEDDICC + SPIN)

Read [references/sales-frameworks.md](references/sales-frameworks.md) and
references/shared/b2b-buying-2026.md sections 1-4.

1. **Must-ask coverage.** Check the 8 must-ask questions (current tools, budget, actively
   looking, other options including doing nothing, timeline, requirements, the no-brainer
   feature, who decides and approves). Score x/8 with the quote or `NO PREGUNTADO`.
   **Below 6/8 means a qualification call comes first:** the skill drafts the questions
   for that call and holds the proposal.
2. **Talk ratio.** If the transcript has speaker times, report the founder's share. Above
   33% gets one line of feedback ("hablaste 52%: la próxima arrancá con preguntas").
3. **SPIN layers:** Situation facts, Problems stated, Implications (cost of the problem,
   quantified when they said a number), Need-payoff (what they said solving it is worth).
4. **MEDDICC table:** each element VERIFIED (quote), INFERRED (say why) or MISSING.
5. **Deal health:** count MISSING among Economic buyer, Decision process and Identified
   pain. Two or more means the business case goes to the champion first with a short
   pre-wire call to fill the gaps; the decision meeting only happens with the decider
   confirmed.
6. Pull the prospect's own words for the pain. Every document quotes them.

## Step 4: Map the Buying Group (multi-threading)

About 13 people weigh in on the average B2B purchase and 86% of purchases stall (Forrester,
in the shared framework). Build the account role map: decider, champion, user, finance or
procurement, IT/security/legal when relevant. Each role gets a name or `[PENDIENTE]`, what
they care about, and the asset they receive from this deal (business case, one-pager,
workflow demo, billing logic, security answers). A deal with one known contact is flagged as
single-threaded, and the first follow-up asks the champion to bring in the missing roles.

## Step 5: Match Pain to Proof and Research the Client

For each identified pain, find in the brain:
- The capability that solves it (from the offering page, not from memory).
- The closest case study by industry, size and pain (Cialdini similarity). One strong match
  beats three weak ones.
- The **measured** metric from that case that maps to the prospect's implication (they lose
  X hours; the case saved Y hours, measured how and over what period). Benefits shown to
  the prospect are refined from results measured with other clients in the brain, never
  invented or rounded up. If no case fits, say so and use pilot results or a guarantee
  structure.

Research the client with web search and page fetch (public sources only): website, news of
the last 12 months, public LinkedIn pages, one or two industry facts that frame the cost of
inaction. Do not scrape private data or bypass logins. Every external fact carries source
and date; unverified claims are removed, not softened.

Build 2-3 **hyper-specific value propositions**: their stated pain (quote) + implication in
their numbers + our capability + proof from the closest case + what changes in 90 days. Add
one Challenger teaching insight backed by data. Adapt the business case to the industry, the
client and what the brain knows about this ICP (common objections, typical metrics, buying
process).

## Step 6: Business Case (same day, sent BEFORE the decision meeting)

Use the structure in references/shared/b2b-buying-2026.md section 5, written in **full
sentences, not bullets**, one to two pages:

1. Their goal and its owner, in their words.
2. The cost of today in their words (quoted).
3. Three options, including doing nothing: status quo, an alternative, the recommendation.
4. Their numbers, conservative: their figures; when estimating, the low end, said so.
5. Risks up front and how each is mitigated.
6. Recommendation and the next step with a date.

It goes first to the champion (pre-wire: they read it and tell you the objections), then to
the decider before the meeting. Price appears as a range or the recommended plan's total;
the full itemized investment lives in the proposal.

## Step 7: Proposal and Visual Deck (ready before the meeting, sent the same day after it)

- **Proposal document:** the startup's template if it exists, filled field by field.
  Otherwise the default in [TEMPLATES.md](TEMPLATES.md): context in their words,
  objectives, solution and scope, results from similar clients, plan and timeline,
  investment, terms, next steps with dates.
- **Visual proposal deck** (when the deal size or the decider's style calls for it): very
  visual, with **mockups or pre-visualizations of the dashboard, service or product the
  client would actually use**, rendered with the client's logo, colors and their own numbers
  from the call. Slides: their goal, cost of today, what they would see (mockup), how it
  works in their operation, results from similar clients (measured), plan, investment, next
  step. Apply references/shared/deck-design-rules.md: the prospect's numbers as the hero,
  real customer logos only with permission, no decorative AI imagery. A mockup is labeled
  "ilustrativo" and shows only capabilities that exist or are in the signed scope.
- **Pricing:** only from the brain's price list and discount rules. Show the calculation
  (units x price). Any discount outside the rules is `[requiere aprobación]`. For usage- or
  outcome-based pricing, state the billing unit, the estimated monthly volume from the
  prospect's own numbers, and any cap or minimum, so procurement can budget it.
- **ROI:** only from their numbers and measured case results, with assumptions stated.
- **Next steps:** a mutual action plan with dates from today to go-live, naming who does each
  step on both sides, including legal and vendor-portal registration.
- Output as markdown, or create a doc or deck through a connected tool if the user wants it.
  Do not share it externally.

## Step 8: Executive One-Pager and Decision Meeting

Follow references/shared/b2b-buying-2026.md section 6:

1. **Pre-wire with the champion** (business case review, objections collected).
2. **Confirm the decider is in the room.** If not, reschedule; do not present to a proxy.
3. **One page, 48 hours before** (Día -2): recommendation, three reasons tied to their
   metrics, investment, risk, the decision requested.
4. In the meeting: **open with the recommendation** in the first minute, **max three
   reasons**, each tied to one of their metrics, founder talks max 33%, **ask for the
   decision** explicitly, **leave with a dated next step**.
5. The proposal is sent the same day, after the meeting, adjusted with what was said.

## Step 9: Follow-up Sequence (drafts)

Read [references/follow-up-sequence.md](references/follow-up-sequence.md). Day 0 is the
decision meeting. Each step adds new value (no "just checking in"):

| Día | Canal | Contenido |
|---|---|---|
| -5 (aprox.) | Email + llamada corta | Business case al champion para pre-wire; confirmar decisor y proceso |
| -2 | Email | One-pager ejecutivo al decisor y al champion, 48 h antes |
| 0 | Reunión + email | Reunión de decisión; propuesta enviada el mismo día, después de la reunión, con resumen de 3 líneas en sus palabras |
| 2 | Email o WhatsApp | Un caso relevante a su dolor principal, con la métrica medida |
| 5 | Email | Respuesta a la objeción más probable según los huecos de MEDDICC |
| 9 | Email | Insight Challenger + chequeo del plan de acción conjunto |
| 14 | Email | Pregunta directa por decisión y fecha; ofrecer llamada con el decisor |
| 21 | Email | Cierre del ciclo, puerta abierta |

Messages go to every role in the map, coordinated: one account owner, no two messages to the
same account the same day, each written for that role. All created as DRAFTS through the
email connector (or printed as copy-paste text). The founder schedules and sends.

## Step 10: After Acceptance: Legal, Contract and Vendor Portal

A verbal yes is not revenue. Draft the checklist (references/shared/b2b-buying-2026.md
section 7):
- **Legal and contract:** contract or order form from the brain's terms, data-processing
  annex if personal data is involved, signer and their powers confirmed.
- **Vendor-portal onboarding:** ask on the same day which documents the client's portal
  needs and send the ready folder (tax ID such as RUC, RUT, CUIT, RFC or CNPJ; certificates
  of good standing and tax compliance; insurance policies; bylaws; legal representative's ID
  and powers; bank certificate; security documentation). Flag every missing document: it
  can delay the first payment by weeks.
- **Handoff:** purchase order number and invoicing contact captured; kickoff date set;
  after the first invoice, retention and upsell move to customer-retention-expansion.

## Step 11: Brain and CRM

Follow references/shared/company-brain-integration.md sections 4-5.
- Brain: `create_page` at `sales/proposals/<YYYY-MM-DD>-<company>` with the business case,
  proposal, must-ask score, MEDDICC table, role map and research sources; link the company
  and contacts. Update the company page history. A learning that applies beyond this deal
  (an objection that keeps appearing, a metric that convinced) goes to the brain's sales
  learnings page, never into this skill.
- CRM (if connected): same day, move the deal stage, set next step and date, log the
  activity, add the account roles. Only for this deal. If no CRM connector exists, list the
  changes as a suggestion.

## Step 12: Output Format

ALWAYS use this exact template structure. Do not change section headings, table columns,
or field order. Fill every [bracketed placeholder] with real analysis from the user's
startup.

See [TEMPLATES.md](TEMPLATES.md) for the filled example. User-facing output is in Spanish
(voseo) unless the prospect works in another language.

## LATAM Context

See [references/latam-context.md](references/latam-context.md). LATAM B2B cycles are
relationship-first, WhatsApp often beats email for follow-up, family groups and SMBs decide
differently from corporates, and corporates register suppliers in a vendor portal before the
first payment. For benchmarks, follow references/shared/latam-benchmarks.md.

## Tone & Editorial Voice

See references/shared/editorial-voice.md: direct, no-sugarcoating, unicorn-bar evaluation.
You are NOT a cheerleader. If discovery covered 4 of 8 must-ask questions, say the deal is
not ready for a proposal. If the proposal leans on a case study that does not match, say it
is weak proof. If the deck mockup shows a feature that does not exist, remove it.

## Próximos Pasos

End every output with 3-5 concrete actions, for example:
- "Mandale hoy el business case a Laura y pedile 20 minutos mañana para que te diga las
  objeciones antes de la reunión."
- "Confirmá con Carlos que el Gerente General está en la reunión del miércoles; si no está,
  movela."
- "Mandá el one-pager el lunes 12 a las 9:00, 48 horas antes de la reunión."
- "Completá el `[PRECIO: completar]` del módulo de integración; no hay precio cargado en el
  brain para ese ítem."

## Sources

- [Sales Frameworks](references/sales-frameworks.md): SPIN, MEDDICC, Challenger, mutual
  action plans
- [Follow-up Sequence](references/follow-up-sequence.md): pre-meeting and post-meeting
  cadence, value-add rules, multi-threading, social proof
- [LATAM Context](references/latam-context.md): relationship-first selling, WhatsApp,
  decision makers in family groups and SMBs, vendor registration
- references/shared/b2b-buying-2026.md: buying groups, must-ask list, business case,
  executive meeting, full B2B process, vendor-portal readiness
- references/shared/company-brain-integration.md: brain read/write, CRM rules
- references/shared/deck-design-rules.md: visual proposal deck rules
- Forrester B2B buying research (about 13 people per purchase, 86% stall), via Erik Fisher:
  https://www.forrester.com/
- Rackham, N. (1988). *SPIN Selling*. McGraw-Hill.
- Whyte, A. (2020). *MEDDICC*. (MEDDIC originated at PTC, 1996.)
- Dixon, M. and Adamson, B. (2011). *The Challenger Sale*. Portfolio.
- Cialdini, R. (1984, rev. 2021). *Influence*. Harper Business.
