# Source Collection

How to detect and read each source for one day. The date window is the
user's local day, 00:00 to the run time (close) or the full day (open
agenda). Convert every timestamp to local time before filtering.

## Email

- Connector: Gmail or Outlook MCP.
- Sent today: search the sent folder with an after-date filter (Gmail:
  `in:sent after:YYYY/MM/DD`). Received today: inbox with the same filter,
  excluding categories promotions, social, updates and forums.
- Read the full thread for anything kept; search snippets truncate numbers
  and miss the latest reply.
- Keep: replies the user wrote, threads with a customer, investor, candidate
  or partner, anything with a price, date or commitment.

## Calendar

- Connector: Google Calendar or Outlook.
- Close: today's events (did they happen, who attended) and tomorrow's
  events (for the agenda). Open: today's events.
- Declined events and solo focus blocks are excluded from Reuniones but focus
  blocks count as free time for the "Primer bloque sugerido".

## Meeting notes

- First the brain: pages filed today by meeting-notes-to-brain (search by
  date). Reuse their decisions and action items; do not re-derive them.
- Then recorders if connected: Granola, Fathom, tl;dv, Otter, Google Meet
  notes in Drive. A meeting with no notes keeps only the calendar title and
  attendees, marked `[sin notas]`.
- If many meetings today are unfiled, suggest running meeting-notes-to-brain
  first; the brief stays shallow otherwise.

## WhatsApp

- Only if a WhatsApp connector is configured (official Business API, or a
  self-hosted bridge the user set up).
- Today's messages in chats with work contacts (people with a brain page or
  a CRM record). Personal chats are skipped.
- Keep commitments ("te mando mañana", "confirmado el jueves"), not chatter.

## AI sessions (Claude Code, Codex)

- Claude Code stores session transcripts as JSONL under
  `~/.claude/projects/<project>/`; Codex stores them under
  `~/.codex/sessions/<YYYY>/<MM>/<DD>/`. Filter by file modification time
  inside today's window.
- From each session keep: the goal stated by the user, what was produced
  (files, PRs, documents, drafts), and what was left open. One line each.
- Never copy secrets, tokens or pasted credentials from transcripts into the
  brief. If a line would contain one, drop the line.

## Git

- Per configured repo:
  `git -C <repo> log --since="<today> 00:00" --author="<user email>" --pretty="%h %s"`
- Group commits by purpose (feature, fix, docs). Report repo, count, and one
  line of what changed. Mention a SHA only when it matters.
- Commits on unpushed branches are reported as "local, sin push".

## CRM (team mode)

- Activities, stage changes and notes logged today, grouped by owner.
- Stage changes are facts; notes are summarized without quoting private
  content.

## Shared calendars (team mode)

- Only calendars shared with the user. Use titles and attendees, not private
  event descriptions.
