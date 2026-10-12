---
name: daily-brief
description: >
  For STARTUP FOUNDERS and cofounders. Builds an end-of-day log (bitácora) and
  a morning agenda from today's email, calendar, meeting notes in the brain,
  WhatsApp, AI sessions (Claude Code, Codex) and git commits, files the daily
  page in the company brain and delivers it as a draft. ALWAYS invoke when a
  user asks for a daily summary, end-of-day recap, shutdown review, "qué hice
  hoy", today's agenda, "qué tengo mañana", a morning brief, or what the whole
  team did today. NOT for processing a single meeting transcript (use
  meeting-notes-to-brain) or preparing the weekly team meeting (use
  all-hands-prep).
categories: ["startups", "operations", "productivity"]
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: startups
  complements: [meeting-notes-to-brain, all-hands-prep, investor-update-compiler]
license: MIT
---

# Daily Brief

Builds the founder's daily log from what actually happened today, not from
memory. Three modes:

| Mode | When | Output |
|---|---|---|
| `close` | End of day (default after 17:00) | Bitácora: what happened, what was learned, what is open for tomorrow |
| `open` | Morning (default before 12:00) | Light agenda for today plus pendientes carried over from yesterday's close |
| `team` | Cofounders, end of day or week | What the whole team did, per person or department |

Built on Cal Newport's shutdown ritual (Deep Work): close every open loop
in writing so the next day starts from a list, not from memory. And on Andy
Grove's point (High Output Management) that a manager's scarcest input is
timely, condensed information: one page a day beats ten inboxes.

The value is that the day becomes a searchable, sourced page in the brain.
The next skill (all-hands-prep, investor-update-compiler) reads it instead of
asking the founder what happened.

## Step 1: Input Gathering

Ask in ONE message only for what you cannot detect yourself. Defaults in
brackets.

1. **Mode** - close / open / team. [By local time: before 12:00 open, after
   17:00 close; otherwise ask]
2. **Date** - [today in the user's timezone; never a past or future day
   unless the user names it]
3. **Delivery** - email draft to self / message to self / brain page only.
   [Brain page plus email draft to self. A message actually SENT to self only
   if the user configured it explicitly; never to anyone else]
4. **Repos** - folders to scan for today's commits. [Repos under the current
   working directory; ask once, then save the list to the brain]
5. **Team scope** (team mode only) - people or departments to include.
   [Everyone with a people page in the brain]

On the first run, save the answers as a short config page in the brain
(`daily/_config`) so scheduled runs never ask again.

## Step 2: Detect Sources and Read Context

Follow @shared/frameworks/company-brain-integration.md sections 1-3.

- `list_skills` / `get_skill`: if the company saved its own daily format,
  follow it.
- `read_page` `daily/_config` and yesterday's daily page (for carried-over
  pendientes and the open mode).
- Detect each source in [references/source-collection.md](references/source-collection.md)
  and collect only items timestamped TODAY in the user's timezone.

| Source | What to read | If missing |
|---|---|---|
| Email | Sent and received today; threads with a reply from the user | "Correo no conectado" |
| Calendar | Today's events (close), tomorrow's (close), today's (open) | "Calendario no conectado" |
| Meeting notes | Brain pages filed today (meeting-notes-to-brain), recorder notes (Granola, Meet, Fathom, tl;dv) | Use calendar titles only, mark `[sin notas]` |
| WhatsApp | Today's chats with work contacts, if connected | Omit the line silently if never configured |
| AI sessions | Claude Code and Codex session logs for today | "Sesiones de IA no disponibles" |
| Git | `git log --since=<today 00:00> --author=<user>` per repo | "Sin repos configurados" |
| CRM (team) | Activities logged today | "CRM no conectado" |

Never block on a missing source. One line in the output per gap.

## Step 3: Build the Brief

Read [references/daily-review-framework.md](references/daily-review-framework.md)
before writing. Rules:

1. **Today only.** Drop anything outside the date window, even if relevant.
   Carried-over items come only from yesterday's daily page, labeled as such.
2. **Every fact has a source.** Each line ends with its source tag
   (`[correo]`, `[cal]`, `[reunión: <page>]`, `[wa]`, `[IA]`, `[git: repo@sha]`).
   No source, no line. Inferences are marked `[inferido]`.
3. **Signal over volume.** Email: only threads where a decision, commitment,
   money, a customer or an investor appears. Newsletters, notifications and
   automated mail are excluded. Commits: group by repo and purpose, do not
   list every SHA.
4. **Pendientes are commitments, not topics.** Each one has a verb and, when
   known, a date. Split "tuyos abiertos" (the user owes) from "esperando a
   otros" (someone owes the user).
5. **Aprendizajes** are at most 3, each tied to an event of the day. If
   nothing was learned, write "Sin aprendizajes registrados hoy". Do not
   invent insight.
6. **Sensitive items** (compensation, cap table, legal, health, personal
   matters, hiring evaluations) stay in the private close; they never enter
   team mode or a shared page.

### Close mode sections

Resumen del día, Reuniones, Correo (clave enviado / recibido), Lo que se
trabajó con la IA, Aprendizajes, Pendientes para mañana (tuyos abiertos +
agenda de mañana).

### Open mode sections

Agenda de hoy (with prep needed per meeting), Pendientes que vienen de ayer,
Primer bloque sugerido (the single most important open item, placed in the
first free block of the calendar). Keep it under one screen.

### Team mode sections

Resumen del equipo, Por persona o área (what shipped, meetings, commits, CRM
activity), Bloqueos visibles, Lo que necesita a un cofounder. Built only from
shared sources: brain pages, shared calendars, CRM activity, repo commits.
Never from another person's private email or chats.

## Step 4: File in the Brain (idempotent)

Follow @shared/frameworks/company-brain-integration.md section 4.

- Path: `daily/<YYYY-MM-DD>` for close and open (one page per day, with a
  `## Apertura` and a `## Cierre` section), `daily/team/<YYYY-MM-DD>` for team
  mode. Use the brain's existing daily folder if one exists (`list_pages`).
- **Read-modify-write.** `search_brain` / `read_page` the page first. If it
  exists, replace only the section for the current mode and keep the rest.
  Re-running the same mode on the same day updates in place; it never creates
  a second page or duplicates lines.
- Link people, companies and meeting pages with the brain's link syntax.
- Without a brain: write `./brain-outbox/daily/<YYYY-MM-DD>.md` with the same
  read-modify-write rule.

## Step 5: Deliver

- **Email draft to self** through the email connector. Subject:
  `Bitácora <DD/MM/YYYY>` or `Agenda <DD/MM/YYYY>`. Never send.
- **Message to self** (WhatsApp, Slack, Telegram) only if `daily/_config`
  says the user enabled sending to self. Otherwise create it as a draft or
  print it.
- **Never to anyone else.** Team mode is filed in the brain; cofounders read
  it there. Do not email or message teammates.
- If a draft for the same date and mode already exists, update it instead of
  creating another.

## Step 6: Output Format

ALWAYS use this exact template structure. Do not change section headings,
table columns, or field order. Fill every [bracketed placeholder] with
real analysis from the user's startup.

See [TEMPLATES.md](TEMPLATES.md) for the filled examples (close, open, team).
User-facing output is in Spanish (voseo) unless the user writes in another
language.

Output order in the chat:
1. The brief (as filed)
2. Brain page created or updated, draft created, source gaps
3. Próximos pasos

## Schedule It

Run close every day at 21:00 and open at 07:30 with no one typing. Follow
@shared/frameworks/company-brain-integration.md section 6; details in
[references/scheduling.md](references/scheduling.md).

| Agent | Close (21:00) | Open (07:30) |
|---|---|---|
| Claude Code | `claude -p "Run the daily-brief skill in close mode for today. Drafts only."` | `claude -p "Run the daily-brief skill in open mode for today. Drafts only."` |
| Codex | `codex exec "Run the daily-brief skill in close mode for today. Drafts only."` | `codex exec "Run the daily-brief skill in open mode for today. Drafts only."` |

Crontab (macOS and Linux; on macOS launchd also works):

```
0 21 * * *  ~/bin/daily-brief.sh close
30 7 * * *  ~/bin/daily-brief.sh open
```

Two guards are mandatory in the wrapper script (example in the reference):
- **Same-day guard:** skip if `daily/<today>` already has the section for
  this mode and no new source items arrived since it was written.
- **Single-instance lock:** a lock directory (`mkdir` is atomic) so a slow
  run and the next trigger never write the same page at once.

The scheduled run must have the same connectors as an interactive session
and only read, brain-write and draft permissions. Never grant send.

## LATAM Context

Work in LATAM runs heavily on WhatsApp: many commitments of the day never
touch email. When WhatsApp is connected, scan it for commitments; when it is
not, say so, because the close will be incomplete. Date format DD/MM/YYYY,
24-hour times, the user's local timezone (not UTC) for the "today" window.
For any benchmark cited, follow @shared/frameworks/latam-benchmarks.md.

## Tone & Editorial Voice

See @shared/frameworks/editorial-voice.md - direct, no-sugarcoating,
unicorn-bar evaluation. You are NOT a cheerleader. If the day had six
meetings and zero decisions, say so. If the same pendiente has carried over
three days in a row, flag it plainly and ask whether to drop or delegate it.

## Próximos Pasos

End every output with 3-5 concrete actions, for example:
- "Responder a la propuesta de Agro Sur antes de las 10:00; lleva 2 días en
  pendientes."
- "Bloquear 09:00-11:00 para el importador CSV; es el único ítem que mueve el
  piloto."
- "Decidir si 'revisar contrato de oficina' se delega o se borra: 4 días
  arrastrándose."

## Sources

- [Daily Review Framework](references/daily-review-framework.md) - shutdown
  ritual, information gathering, open loops, signal filters
- [Source Collection](references/source-collection.md) - per-source detection,
  date windows, what counts as signal
- [Scheduling](references/scheduling.md) - cron, launchd, wrapper with
  same-day guard and lock, Claude Code and Codex headless
- @shared/frameworks/company-brain-integration.md - brain read/write and
  scheduled runs
- Newport, C. (2016). *Deep Work*. Grand Central (shutdown ritual).
- Grove, A. (1983). *High Output Management*. Random House (information
  gathering, the manager's day).
- Allen, D. (2001). *Getting Things Done*. Viking (open loops, daily review).
