---
name: all-hands-prep
description: >
  For STARTUP FOUNDERS and team leads. Prepares the weekly all-hands or team
  meeting: reads last week's decisions, action items, OKR and KPI status and
  open tasks from the company brain, CRM and project tracker, and produces an
  agenda per team with this week's commitments, blockers, wins and KPI deltas,
  saved back to the brain. Applies Grove (High Output Management) and Doerr
  weekly OKR check-ins. ALWAYS invoke when a user asks to prepare the weekly
  meeting, all-hands, team sync, staff meeting, Monday agenda or weekly
  check-in. NOT for designing OKRs or KPI systems from scratch (use
  startup-metrics-okrs) or for summarizing a meeting that already happened
  (use meeting-notes-to-brain).
categories: ["startups", "operations", "management"]
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: startups
  complements: [meeting-notes-to-brain, startup-metrics-okrs, investor-update-compiler]
license: MIT
---

# All-Hands Prep

Builds the agenda for the weekly team meeting from what actually happened
last week, not from memory. Every team gets: KPI deltas, OKR confidence, what
it committed to last week and whether it delivered, what it commits to this
week, blockers that need a decision in the room, and wins with a number.

Built on Andy Grove's process-oriented meetings (High Output Management),
John Doerr's weekly OKR check-ins and CFRs (Measure What Matters), Christina
Wodtke's Monday commitments and Friday wins (Radical Focus), and Patrick
Lencioni's weekly tactical meeting (Death by Meeting).

## Step 1: Input Gathering

Ask in ONE message only for what the brain and connectors do not answer.
Defaults in brackets.

1. **Meeting date and length** - [next Monday, 45 minutes]
2. **Format** - one company all-hands, or one agenda per team. [Per team if
   the company has 2+ teams or 8+ people, single agenda otherwise]
3. **Teams and leads** - [read from the brain's team or org pages]
4. **Current OKRs and KPI targets** - [read from the brain; if missing, ask
   for a link or run startup-metrics-okrs first]
5. **Window** - [last 7 days, since the previous all-hands agenda]

## Step 2: Read Context First

Follow references/shared/company-brain-integration.md sections 1-3.

When the brain is connected:
- `list_skills` / `get_skill`: use the company's own all-hands format if saved.
- `search_brain` for the previous all-hands agenda; `read_page` it. Its
  "Compromisos de la semana" table is this week's accountability baseline.
- `list_pages` on the meetings folder for the window; `read_page` each note.
  Collect decisions and action items (owner, due date, status).
- `search_brain` the current quarter OKRs and KPI pages; `read_page` them.
- `walk_graph` from each OKR to linked projects and owners.

From connectors (when present):
- **Project tracker**: tasks closed in the window, open tasks due this week,
  overdue tasks, grouped by team or assignee.
- **CRM**: deals created, moved and closed in the window; pipeline value
  delta; deals stalled more than 14 days.
- **Metrics source** (sheet, BI, billing): latest value of each KPI and the
  value one week earlier.

Without a brain: ask for last week's agenda or notes, the OKR doc, and an
export of the tracker, in one message.

## Step 3: Compute

Read [references/weekly-meeting-framework.md](references/weekly-meeting-framework.md).

1. **KPI deltas** - for each company and team KPI: this week, last week,
   delta (absolute and %), quarterly target, % of target, and trend status
   (on track / at risk / off track) using the linear-pace rule in the
   reference.
2. **OKR confidence** - per Key Result, a 0-10 confidence score (Doerr and
   Wodtke check-in practice). If the owner's last score is in the brain, show
   its change. If no score exists, propose one from the data and mark
   `[propuesto]`.
3. **Commitment scorecard** - last week's commitments per team: done / not
   done / partially done, with a delivery rate per team. No excuses column;
   one-line reason only when not done.
4. **Blockers** - anything overdue, any open question from a meeting note
   with no owner, any dependency between teams. Each blocker is phrased as a
   decision the room must make, with who decides.
5. **Wins** - only with a number or a shipped artifact. "Buena semana" is
   not a win.
6. **This week's commitments** - proposed per team from: open tasks due
   this week, action items due, and the Key Results at risk. Maximum 3 per
   team (Wodtke: priorities, not task lists). Mark `[propuesto]`; the team
   confirms in the meeting.

## Step 4: Build the Agenda

Time-box the meeting. Default 45 minutes:

| Block | Minutes | Content |
|---|---|---|
| 1. Números | 5 | Company KPI table and OKR confidence, no discussion |
| 2. Compromisos de la semana pasada | 5 | Delivery rate per team, only misses discussed |
| 3. Por equipo | 20 | Each team: deltas, wins, blockers, 3 commitments |
| 4. Decisiones | 10 | Blockers that need the room, one by one, decider named |
| 5. Cierre | 5 | Commitments read back, owners confirmed |

Grove's rule: the meeting exists to make decisions and align; status that
can be read is pre-read, not presented. Send the agenda at least 24 hours
before the meeting so blocks 1-2 are pre-read.

## Step 5: Save to the Brain

Follow references/shared/company-brain-integration.md section 4.

- Default path: `meetings/all-hands/<YYYY-MM-DD>-agenda` (or the brain's
  existing convention).
- `create_page` with the agenda. Link teams, owners, OKR pages and source
  meeting notes.
- After the meeting, the confirmed commitments are the baseline for next
  week: tell the user to run meeting-notes-to-brain on the recording, or to
  edit the "Compromisos de la semana" table on the agenda page.

Without a brain: write to `./brain-outbox/all-hands/<date>-agenda.md`.

## Step 6: Output Format

ALWAYS use this exact template structure. Do not change section headings,
table columns, or field order. Fill every [bracketed placeholder] with
real analysis from the user's startup.

See [TEMPLATES.md](TEMPLATES.md) for the filled example. User-facing output
is in Spanish.

## Optional: Weekly Automatic Prep

Schedule the skill for Friday afternoon or Sunday evening so the agenda is
ready before Monday. Follow references/shared/company-brain-integration.md
section 6, for example:
- Claude Code: `claude -p "Run the all-hands-prep skill for next Monday's meeting."`
- Codex: `codex exec "Run the all-hands-prep skill for next Monday's meeting."`

Run meeting-notes-to-brain's batch mode first so every meeting of the week is
already filed when the agenda is built.

## LATAM Context

See [references/latam-context.md](references/latam-context.md). Small LATAM
teams often have no project tracker and run tasks in WhatsApp groups and
spreadsheets; the skill must work from the brain and a sheet alone. For KPI
benchmarks, follow references/shared/latam-benchmarks.md.

## Tone & Editorial Voice

See references/shared/editorial-voice.md - direct, no-sugarcoating,
unicorn-bar evaluation. You are NOT a cheerleader. If a team delivered 1 of 4
commitments, the agenda says 25% and puts it first in that team's block. If a
Key Result has been off track for 4 weeks, say the quarter target is at risk
and ask for a decision: change the plan or change the target.

## Próximos Pasos

End every output with 3-5 concrete actions, for example:
- "Enviar la agenda hoy antes de las 18:00 para que los bloques 1 y 2 se lean
  antes de la reunión."
- "Pedir a Ventas la confianza actualizada del KR2 antes del lunes; el último
  puntaje tiene 3 semanas."
- "Decidir en la reunión si se mantiene la meta de 60 clientes del trimestre:
  al ritmo actual se llega a 51."

## Sources

- [Weekly Meeting Framework](references/weekly-meeting-framework.md) - Grove,
  Doerr, Wodtke and Lencioni practices, pace rule, confidence scores
- [LATAM Context](references/latam-context.md) - small teams without
  trackers, WhatsApp-run tasks, holiday calendar
- references/shared/company-brain-integration.md - brain read/write and
  scheduled runs
- Grove, A. (1983). *High Output Management*. Random House.
- Doerr, J. (2018). *Measure What Matters*. Portfolio.
- Wodtke, C. (2016). *Radical Focus*. Cucina Media.
- Lencioni, P. (2004). *Death by Meeting*. Jossey-Bass.
