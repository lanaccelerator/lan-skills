# Company Brain Integration

**When to use:** Any skill that reads company context (KPIs, OKRs, meetings, customers, offering, templates) or produces a durable result worth keeping. Referenced by meeting-notes-to-brain, all-hands-prep, lead-to-proposal, investor-update-compiler, and data-room-builder.

A company brain is a shared knowledge base (markdown pages linked as a graph) exposed to the AI through an MCP server. These skills treat it as the first source of truth and the place where results are filed. The skill must still work when no brain is connected.

## 1. Detect what is connected

Before reading anything, check which tools the session exposes. Do not assume tool names beyond the MCP tool names below; the server prefix varies by client.

| Capability | Typical MCP tools | Used for |
|---|---|---|
| Company brain | `search_brain`, `read_page`, `walk_graph`, `list_pages`, `create_page`, `ingest_to_brain`, `list_skills`, `get_skill` | Read context first, file results |
| Docs / files | Google Drive, Notion, local files | Fallback source for KPIs, templates, transcripts |
| CRM | HubSpot, Pipedrive, Attio, Notion database, Airtable, Sheets | Pipeline, deal stages, account owners |
| Email | Gmail, Outlook | Create DRAFTS only |
| Meeting recorder | Granola, Fathom, tl;dv, Google Meet notes, Otter | Transcripts |
| Project tracker | Linear, Jira, Asana, Notion, Trello | Open tasks, owners, due dates |

If a capability is missing, say so in one line in the output ("CRM no conectado: estados de deals tomados del brain") and continue with what is available. Never block on a missing connector.

## 2. Read order (brain first)

1. **Saved procedure check.** Call `list_skills`. If the company already saved a procedure for this task (their own update format, proposal template, meeting format), call `get_skill` and follow it. The company's own procedure overrides this skill's defaults where they conflict.
2. **Targeted search.** Call `search_brain` with 2-4 specific queries per input you need (e.g. "OKR Q3", "KPIs septiembre", "pricing", "caso de exito logistica"). Prefer specific nouns over generic ones.
3. **Read in full.** Call `read_page` on the top hits. Do not reason from search snippets alone; snippets truncate numbers and dates.
4. **Follow links.** Call `walk_graph` from the central page (a person, account, project or OKR) to find related decisions, meetings and owners.
5. **Browse when search is thin.** Call `list_pages` on the likely folder (meetings, customers, metrics, sales) to find pages search missed.
6. **Fallback.** Only for inputs the brain does not have, read connected tools (Drive, Notion, CRM, tracker) or ask the user, in ONE message, for the rest.

Record every source used. Each output ends with a "Fuentes" line listing brain page paths and connector items, so a reader can audit any number.

## 3. Conflict rules

- Brain vs memory or assumption: the brain wins. If the brain has nothing, say so; do not invent.
- Brain vs a live system of record (CRM for pipeline, accounting for cash): the system of record wins for that number, and the skill flags the stale brain page so it gets fixed.
- Two brain pages disagree: use the most recently updated one, and list the conflict under "Pendientes de verificar".

## 4. Write back

Durable results are filed in the brain when it is connected. Rules:

- **Search before create.** Call `search_brain` for an existing page on the same meeting, account, period or agenda. Update or append instead of creating duplicates.
- **`create_page`** for a structured page the skill authored (meeting note, agenda, proposal, update). Use the path conventions the brain already uses (discover them with `list_pages`); if none exist, use the defaults each skill gives.
- **`ingest_to_brain`** for raw source material (a full transcript, an exported CRM report) so the brain can process and link it.
- **Link entities.** Mention people, companies and projects with the brain's link syntax (usually `[[page-name]]`) so `walk_graph` can find them later. Link to existing pages; do not create stub pages for every name unless the brain's conventions ask for it.
- **Body only.** Page bodies are markdown. Pass title, tags and other metadata through the tool's own fields, not as frontmatter in the body, unless the brain's conventions say otherwise.
- **Sensitive content.** Compensation, cap table, legal disputes and personal matters are not filed in shared sections. If the brain supports visibility or audience settings, use the most restricted one that fits; if unsure, ask before writing.
- **Report what was written.** End with the page paths created or updated.

If no brain is connected, save the same content as a markdown file in the working directory (default `./brain-outbox/<skill-name>/<date>-<slug>.md`) and tell the user it is ready to import.

## 5. Outbound actions are drafts

No skill in this suite sends email, messages or proposals. Email goes to the email connector as a DRAFT. CRM updates are limited to stage, next step, next-step date and an activity note, and only for deals the user named or the meeting clearly covered. Anything else is listed as a suggestion.

## 6. Scheduled runs (Claude Code and Codex)

Skills in this suite can run unattended on a schedule. The pattern is the same in both agents: a headless run of the skill, with the same MCP servers configured, on a cron-like trigger.

| Agent | Headless command | Trigger options |
|---|---|---|
| Claude Code | `claude -p "Run the <skill-name> skill for <scope>"` | cron or launchd on your machine, a CI scheduled workflow, or Claude Code scheduled tasks if your plan includes them |
| Codex | `codex exec "Run the <skill-name> skill for <scope>"` | cron or launchd, a CI scheduled workflow |

Rules for unattended runs:

- The scheduled run must have the same MCP connectors (brain, recorder, email, CRM) available as an interactive session. Check them in a manual run first.
- Grant only the permissions the run needs (read sources, write brain pages, create email drafts). Never grant send permissions.
- Make runs idempotent: before processing an item, search the brain for a page that already covers it (same meeting ID, same period, same date) and skip it.
- Each run ends with a short summary page or file (what was processed, what was skipped, what needs a human) so the founder reviews one place on Monday.
- If a source fails (expired token, recorder down), the run records the failure in that summary instead of silently producing a partial result.

## Sources

- Model Context Protocol specification: https://modelcontextprotocol.io/specification
- Agent Skills open format: https://agentskills.io/specification
- Claude Code headless mode: https://code.claude.com/docs/en/headless
- Codex non-interactive mode: https://developers.openai.com/codex/noninteractive
