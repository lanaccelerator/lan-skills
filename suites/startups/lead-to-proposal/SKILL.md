---
name: lead-to-proposal
description: >
  For STARTUP FOUNDERS selling B2B. Runs one deal from discovery call to signed
  proposal: reads the call transcript, crosses the client's pain against the
  startup's own case studies, offering and pricing in the company brain,
  researches the client online, writes a same-day proposal in the startup's
  format, and drafts the follow-up sequence until close. Applies SPIN, MEDDICC
  and Challenger. ALWAYS invoke when a user says they just had a discovery or
  sales call, needs a commercial proposal or quote for a specific prospect, or
  wants follow-ups to close a deal. NOT for designing the overall sales process
  or playbook (use sales-playbook-generator) or for setting price levels (use
  pricing-strategy-designer).
categories: ["startups", "sales", "business"]
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: startups
  complements: [meeting-notes-to-brain, sales-playbook-generator, pricing-strategy-designer]
license: MIT
---

# Lead to Proposal

"Del lead a la propuesta firmada" for one specific deal. The skill turns a
recorded discovery call into a proposal that the prospect can only have
received from a vendor who listened: their words, their numbers, the case
study closest to their situation, and a price taken from the startup's own
price list, never improvised.

Built on Neil Rackham's SPIN Selling (discovery questions and implied vs
explicit needs), MEDDICC qualification (metrics, economic buyer, decision
criteria, decision process, identified pain, champion, competition), and
Dixon and Adamson's Challenger Sale (commercial teaching and tailoring).
Social proof follows Cialdini's principle of similarity: the case study must
look like the prospect.

Nothing is sent. Proposals and emails are DRAFTS for the founder to review.

## Step 1: Input Gathering

Ask in ONE message only for what you cannot find. Defaults in brackets.

1. **Prospect** - company name, website, contact names. [From the
   transcript and email domains]
2. **Discovery transcript** - pasted, file, or recorder connector. [Latest
   meeting with this company in the brain or recorder]
3. **What you sell them** - product or package discussed. [Inferred from the
   call, confirmed against the offering pages in the brain]
4. **Proposal format** - the startup's template (brain page, Drive doc) or
   default. [Brain template if one exists, else the default in TEMPLATES.md]
5. **Deadline and language** - [today, language of the call]

## Step 2: Read Context First

Follow references/shared/company-brain-integration.md sections 1-3.

When the brain is connected:
- `list_skills` / `get_skill`: the company's own proposal procedure wins.
- `search_brain` + `read_page`: offering (products, packages, scope limits),
  **pricing** (price list, discount rules, minimums), **case studies**
  (customer, industry, size, before/after metrics), proposal template, terms
  and conditions, and any previous interaction with this prospect.
- `walk_graph` from the prospect's company page to prior meetings, contacts,
  and related deals.
- If meeting-notes-to-brain already filed the discovery call, read that note
  instead of re-extracting the transcript.

Without a brain: ask for the price list, 2-3 case studies and the template in
one message. **Never invent a price, a discount, a case study or a customer
metric.** Missing price means the proposal ships with `[PRECIO: completar]`.

## Step 3: Qualify the Discovery (MEDDICC + SPIN)

Read [references/sales-frameworks.md](references/sales-frameworks.md).

1. Extract the SPIN layers from the transcript: Situation facts, Problems
   stated, Implications (cost of the problem, quantified when they said a
   number), Need-payoff (what they said solving it is worth).
2. Fill the MEDDICC table. Each element is VERIFIED (said in the call, with
   quote), INFERRED (reasonable, say why) or MISSING.
3. Deal health: count MISSING among Economic buyer, Decision process, and
   Identified pain. Two or more MISSING means the proposal is premature; the
   skill still drafts it but the first follow-up is a qualification call, and
   the summary says so.
4. Pull the prospect's own words for the pain. The proposal quotes them.

## Step 4: Match Pain to Proof

For each identified pain, find in the brain:
- The capability that solves it (from the offering page, not from memory).
- The closest case study by industry, size and pain (Cialdini similarity).
  Rank by fit; one strong match beats three weak ones.
- The metric from that case study that maps to the prospect's stated
  implication (they lose X hours; case study saved Y hours).

If no case study fits, say so and use the pilot results or a guarantee
structure instead of stretching an unrelated case.

## Step 5: Research the Client

Use web search and page fetch tools available in the session (any agent).
Public sources only:
- Company website: segments, locations, products, recent announcements.
- News from the last 12 months: expansion, funding, leadership changes,
  regulation affecting them.
- Public LinkedIn company page and attendees' public profiles: role, tenure,
  previous companies. Do not scrape private data or bypass logins.
- Industry context: one or two facts that frame the cost of inaction.

Every external fact in the proposal carries its source and date. Unverified
claims are removed, not softened.

Build 2-3 **hyper-specific value propositions**. Formula: their stated pain
(quote) + implication in their numbers + our capability + proof from the
closest case study + what changes in their operation in 90 days. Add one
Challenger "teaching" insight: something about their business they did not
raise, backed by data.

## Step 6: Write the Proposal (same day)

- Format: the startup's template if it exists, filled field by field.
  Otherwise the default structure in [TEMPLATES.md](TEMPLATES.md): context in
  their words, objectives, solution and scope, results from similar clients,
  plan and timeline, investment, terms, next steps with dates.
- Pricing: only from the brain's price list and discount rules. Show the
  calculation (units x price). Any discount outside the rules is
  `[requiere aprobación]`.
- ROI: only from their numbers and the case study's results, with
  assumptions stated. No fabricated ROI.
- Next steps: a mutual action plan with dates from today to signature,
  naming who does each step on both sides.
- Output as markdown, or create a doc through a connected Docs tool if the
  user wants it. Do not share it externally.

## Step 7: Follow-up Sequence (drafts)

Read [references/follow-up-sequence.md](references/follow-up-sequence.md).
Default sequence, each step adds new value (no "just checking in"):

| Day | Channel | Content |
|---|---|---|
| 0 | Email | Proposal sent with a 3-line summary in their words |
| 2 | Email or WhatsApp | One case study relevant to their top pain, with the metric |
| 5 | Email | Answer to the objection most likely given MEDDICC gaps |
| 9 | Email | Teaching insight (Challenger) + mutual action plan check |
| 14 | Email | Direct question on decision and timing; offer a call with the economic buyer |
| 21 | Email | Close the loop politely; leave the door open |

All created as DRAFTS through the email connector (or printed as text). The
founder schedules and sends.

## Step 8: Brain and CRM

Follow references/shared/company-brain-integration.md sections 4-5.
- Brain: `create_page` at `sales/proposals/<YYYY-MM-DD>-<company>` with the
  proposal, MEDDICC table and research sources; link the company and
  contacts. Update the company page's history with the proposal date.
- CRM (if connected): move the deal stage to the startup's proposal stage,
  set next step and its date, and log an activity note. Only for this deal.
  If no CRM connector exists, list the stage change as a suggestion.

## Step 9: Output Format

ALWAYS use this exact template structure. Do not change section headings,
table columns, or field order. Fill every [bracketed placeholder] with
real analysis from the user's startup.

See [TEMPLATES.md](TEMPLATES.md) for the filled example. User-facing output
is in Spanish unless the prospect works in another language.

## LATAM Context

See [references/latam-context.md](references/latam-context.md). LATAM B2B
cycles are relationship-first, WhatsApp often beats email for follow-up, and
family groups and SMBs decide differently from corporates. For benchmarks,
follow references/shared/latam-benchmarks.md.

## Tone & Editorial Voice

See references/shared/editorial-voice.md - direct, no-sugarcoating,
unicorn-bar evaluation. You are NOT a cheerleader. If discovery missed the
economic buyer, say the deal is not qualified yet. If the proposal leans on a
case study that does not match, say it is weak proof.

## Próximos Pasos

End every output with 3-5 concrete actions, for example:
- "Revisar la propuesta y enviarla hoy antes de las 18:00."
- "Pedir a Carlos en la llamada del jueves que sume al Gerente General: sin
  comprador económico identificado, la propuesta queda en espera."
- "Completar el `[PRECIO: completar]` del módulo de integración; no hay
  precio cargado en el brain para ese ítem."

## Sources

- [Sales Frameworks](references/sales-frameworks.md) - SPIN, MEDDICC,
  Challenger, mutual action plans
- [Follow-up Sequence](references/follow-up-sequence.md) - cadence and
  value-add rules, social proof
- [LATAM Context](references/latam-context.md) - relationship-first selling,
  WhatsApp, decision makers in family groups and SMBs
- references/shared/company-brain-integration.md - brain read/write, CRM
  rules
- Rackham, N. (1988). *SPIN Selling*. McGraw-Hill.
- Whyte, A. (2020). *MEDDICC*. (MEDDIC originated at PTC, 1996.)
- Dixon, M. and Adamson, B. (2011). *The Challenger Sale*. Portfolio.
- Cialdini, R. (1984, rev. 2021). *Influence*. Harper Business.
