---
name: meeting-notes-to-brain
description: >
  Use when a user shares a meeting transcript or recorder notes (Granola, Google Meet,
  Fathom, tl;dv, Otter, pasted text) or asks to summarize a meeting, extract action items,
  log a call to the company brain or process this week's meetings ("resumí esta reunión",
  "pasame en limpio la llamada", "sacá los pendientes y quién hace qué", "subí la reunión
  al brain", "armá los mails de seguimiento"). Produces decisions, action items with owner
  and due date, open questions and people mentioned, files them in the company brain (LAN
  Brain or any MCP brain) linked to people and companies, and creates follow-up email
  DRAFTS, never sends. Sales calls also get founder talk %, must-ask coverage (x/8), the
  decision map and a same-day CRM update. NOT for preparing the weekly team agenda (use all-hands-prep) or
  turning a sales discovery call into a proposal (use lead-to-proposal).
categories: ["startups", "operations", "productivity"]
metadata:
  author: lan-accelerator
  version: "1.2"
  suite: startups
  complements: [all-hands-prep, lead-to-proposal, investor-update-compiler, outbound-learning-loop]
license: MIT
---

# Meeting Notes to Brain

Converts raw meeting transcripts into decision-grade notes, files them in the
company brain as linked pages, and prepares follow-up drafts. Built on Andy
Grove's rule that a meeting's output is decisions and committed actions (High
Output Management), the DRI principle (one directly responsible individual per
action), and Rogelberg's research on why meeting outcomes evaporate without a
written record (The Surprising Science of Meetings). Sales calls are also scored
against references/shared/b2b-buying-2026.md: founder talks at most 33%, the 8
must-ask questions, and multi-threading across the buying committee.

The value is not the summary. The value is that every decision and every
commitment becomes a searchable, linked page that the next skill
(all-hands-prep, investor-update-compiler, lead-to-proposal) can read.

## Step 1: Input Gathering

Ask in ONE message only for what you cannot find yourself. Defaults in brackets.

1. **Transcript source** - pasted text, a file path, or a connected recorder
   (Granola, Fathom, tl;dv, Otter, Google Meet notes in Drive). [If a recorder
   or Drive is connected: the most recent meeting not yet in the brain]
2. **Meeting type** - internal / customer / prospect / investor / partner /
   hiring. [Inferred from attendees' email domains and content]
3. **Your name and company** - so "I" and "we" resolve to the right people.
   [Read from the brain's company and people pages]
4. **Follow-up drafts** - yes / no, and language. [Yes for external
   meetings, no for internal; language of the meeting]
5. **Batch mode** - one meeting or all meetings since a date. [One]

Granola free tier: copy the transcript or the enhanced notes from the app, or
use the Granola connector if your plan exposes it. Google Meet: the "Notes by
Gemini" or transcript doc lands in the organizer's Drive. Fathom and tl;dv:
export or copy the transcript. A pasted transcript always works.

## Step 2: Read Context First

Follow references/shared/company-brain-integration.md sections 1-3.

When the brain is connected:
- `list_skills` / `get_skill`: use the company's own meeting-note format if saved.
- `search_brain` each attendee name and each company domain; `read_page` the
  hits. Resolve transcript misspellings of names and acronyms to existing
  people and company pages before writing anything (recorders mishear proper
  nouns constantly).
- `walk_graph` from the main company or project discussed to find the previous
  meeting with the same people, its open action items, and related decisions.
- `search_brain` the meeting date plus title to check the meeting is not
  already filed (idempotency).

Without a brain: read the transcript and any notes file the user points to,
and ask for the attendee list if the transcript does not show it.

## Step 3: Extract

Read [references/meeting-notes-framework.md](references/meeting-notes-framework.md)
before extracting. Apply these rules:

1. **Decisions** - only what was actually agreed, stated as a sentence a reader
   can act on, with who decided. A topic discussed without agreement is an open
   question, not a decision.
2. **Action items** - each one has a verb, a single owner (DRI), and a due
   date. If the transcript gives no date, propose one and mark it
   `[fecha propuesta]`. If no owner was named, mark `[sin dueño]` and list it
   under open questions. Never invent an owner.
3. **Open questions** - unresolved items, with who needs to answer.
4. **People and companies mentioned** - attendees and anyone referenced, each
   linked to their brain page if it exists. New external people get a one-line
   note (role, company, context), not a full profile.
5. **Prior commitments** - action items from the previous related meeting:
   mark each as done / in progress / not mentioned / slipped.
6. **Numbers and quotes** - capture every metric, price, date or commitment
   said aloud verbatim. Paraphrase loses them.
7. **Sensitive content** - compensation, personal matters, legal disputes and
   cap table go in a restricted note or are omitted; ask if unsure (section 4
   of the shared framework).

Mark anything you are not sure the transcript supports with `[verificar]`.
A transcript is evidence, not truth: speaker attribution errors are common.

## Step 3b: Sales Call Scoring (prospect and customer sales meetings)

Run this block when the meeting type is prospect, or customer with an upsell,
renewal or expansion on the table. Read references/shared/b2b-buying-2026.md
sections 2-4 first. Skip it for internal, investor and hiring meetings.

1. **Founder talk %.** Rule: the founder (and anyone else on the startup's side)
   talks at most 33% of the call; the client talks the rest. Use the recorder's
   talk-time metric if it gives one (Fathom, tl;dv, Gong and similar show it). If
   not, estimate it from the transcript: words spoken by the startup side divided
   by total words (fall back to speaker turns if words are not countable), and
   label it `(estimado de la transcripción)`. Above 33%: flag it as
   `HABLÓ DE MÁS` and point to the longest monologue (minute and length). Gong Labs
   found top-converting calls around 43% seller talk; that is a reference stat
   only, the rule here is 33%.
2. **Must-ask coverage (x/8).** Check each of the 8 questions from section 4 of the
   shared framework: current tools, budget, actively looking, other options
   (including doing nothing), timeline, requirements, the no-brainer feature,
   who decides and approves. Mark each `SÍ` (asked and answered), `PARCIAL`
   (asked, vague answer, counts as half) or `NO`, with the minute and the answer
   in the client's words. Score = asked / 8. Below 6/8: recommend a short
   qualification call before any proposal and draft the missing questions.
3. **Decision map (multi-threading).** List every buying-committee role found:
   decider, champion, user, finance or procurement, IT or security, legal. For
   each: name, page link, how we know (said in the call, inferred). Roles not
   found are listed as `SIN IDENTIFICAR` with a suggested way in (ask the
   champion, the association, LinkedIn). One contact only is a risk: say so.
4. **Meeting structure check.** Short opening, questions before the demo, demo
   only on the pain they named, dated next step at the close. A call that ends in
   "te escribo" without a date gets flagged.
5. **CRM update, same day.** Every sales call updates the CRM the day it
   happened: deal stage, next step, next step date, and a one-line activity note
   (date, who, what moved). With a CRM connector, write it (or prepare the update
   for approval if the connector only drafts). Without one, print the four fields
   ready to paste and list it under connector gaps. A sales call not in the CRM
   by end of day did not happen for the pipeline.

Coaching notes (what to ask better next time) go to the brain meeting page,
never to the follow-up email. Patterns that repeat across calls are saved as a
learning in the company brain for outbound-learning-loop and
sales-playbook-generator.

## Step 4: File in the Brain

Follow references/shared/company-brain-integration.md section 4.

- Default path: `meetings/<YYYY-MM-DD>-<slug>` (use the brain's existing
  meetings folder if one exists; check with `list_pages`).
- `create_page` with the structured note from [TEMPLATES.md](TEMPLATES.md).
- `ingest_to_brain` with the raw transcript when the brain keeps sources, so
  the note can be re-derived later.
- Link attendees and companies with the brain's link syntax. If a person or
  company page exists, append a dated one-line entry to its history section
  (when the brain uses one) pointing back to the meeting page.
- Sales calls: the meeting page carries the Step 3b block, and the CRM update
  (Step 3b.5) is done in the same run, not batched to the weekly review.
- Never overwrite a previous meeting page. Update only the prior commitments
  status by appending, not by rewriting.

Without a brain: write the note to `./brain-outbox/meetings/<date>-<slug>.md`.

## Step 5: Follow-up Drafts

Only for external meetings, or internal ones the user asked for.

- One draft per company (not per person) unless attendees from the same
  company need different follow-ups.
- Content: thanks in one line, decisions in plain words, their action items
  with dates, our action items with dates, next meeting if agreed.
- No new commitments that were not made in the meeting. No attachments
  promised that do not exist.
- Create each as a DRAFT through the email connector. Never send. Without an
  email connector, print the drafts as plain text ready to paste.
- Internal meetings: no email; the brain page is the follow-up. Optionally a
  short chat message text with the action items.

## Step 6: Output Format

ALWAYS use this exact template structure. Do not change section headings,
table columns, or field order. Fill every [bracketed placeholder] with
real analysis from the user's startup.

See [TEMPLATES.md](TEMPLATES.md) for the filled example. User-facing output
is in Spanish unless the meeting was held in another language.

Output order in the chat:
1. The meeting note (as filed), with the sales call block for sales meetings
2. Follow-up drafts created (recipient, subject, draft link or text)
3. Brain pages and CRM records created or updated, and connector gaps
4. Próximos pasos

## Optional: Weekly or Automatic Processing

Run the skill unattended so every meeting of the week lands in the brain
without anyone pasting transcripts. Follow
references/shared/company-brain-integration.md section 6.

1. **Pick the source the run can reach**: a recorder connector (Granola,
   Fathom, tl;dv) or a Drive folder where transcripts land (Google Meet
   writes them to the organizer's Drive; for others, set the recorder's
   auto-export to a shared folder).
2. **Schedule**: daily at 19:00 or weekly on Friday afternoon, for example
   - Claude Code: `claude -p "Run the meeting-notes-to-brain skill in batch mode for meetings since the last run. Drafts only."`
   - Codex: `codex exec "Run the meeting-notes-to-brain skill in batch mode for meetings since the last run. Drafts only."`
   triggered by cron, launchd or a CI scheduled workflow.
3. **Idempotency**: the run searches the brain for each meeting (date plus
   title plus attendees) and skips anything already filed.
4. **Run summary**: the run creates `meetings/_runs/<date>` (or a file in
   `./brain-outbox/`) listing meetings processed, drafts created, items marked
   `[sin dueño]` or `[verificar]`, and sources that failed.
5. **Human review**: drafts wait in the email drafts folder. The founder
   reviews the run summary and the drafts once, then sends.

## LATAM Context

See [references/latam-context.md](references/latam-context.md). Meetings mix
Spanish, Portuguese and English, follow-ups often happen on WhatsApp, and
recorders mishear local names and company acronyms more than English ones.
For any benchmark cited in a note, follow references/shared/latam-benchmarks.md.

## Tone & Editorial Voice

See references/shared/editorial-voice.md - direct, no-sugarcoating,
unicorn-bar evaluation. You are NOT a cheerleader. If the meeting produced no
decisions, the note says "Sin decisiones" and flags it. If the same action
item slipped for the third meeting in a row, say so plainly.

## Próximos Pasos

End every output with 3-5 concrete actions, for example:
- "Asignar dueño a los 2 ítems `[sin dueño]` antes del viernes; sin dueño no
  se hacen."
- "Revisar y enviar los 2 borradores de seguimiento hoy, mientras la
  reunión está fresca para ambos lados."
- "Confirmar con Ana la cifra de 'USD 4.000 por mes' marcada `[verificar]`
  antes de que entre en la propuesta."
- "Agendá la llamada de calificación de 20 minutos: cubriste 5/8 preguntas y
  faltan presupuesto, quién aprueba y plazo."
- "En la próxima llamada hablá menos de un tercio: hoy fuiste 52%
  (estimado de la transcripción), con un monólogo de 6 minutos en el min 14."

## Sources

- [Meeting Notes Framework](references/meeting-notes-framework.md) - decision
  and action item rules, DRI, prior commitment tracking
- [LATAM Context](references/latam-context.md) - multilingual meetings,
  WhatsApp follow-up, name resolution
- references/shared/company-brain-integration.md - brain read/write and
  scheduled runs
- references/shared/b2b-buying-2026.md - talk-ratio rule (founder max 33%),
  must-ask list, multi-threading, decision map
- Gong Labs, talk-to-listen ratio research (reference stat, 43% seller talk):
  https://www.gong.io/resources/labs/talk-to-listen-conversion-ratio/
- Grove, A. (1983). *High Output Management*. Random House.
- Rogelberg, S. (2019). *The Surprising Science of Meetings*. Oxford
  University Press.
- Allen, D. (2001). *Getting Things Done*. Viking (next action definition).
