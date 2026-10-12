# Meeting Notes Framework

Rules for turning a transcript into notes that drive execution. Read before
extracting.

## Why written outputs matter

- **Grove, High Output Management (1983):** a meeting is a medium of
  managerial work; its output is decisions and commitments. Grove asks that
  every meeting end with minutes that state what was decided, what actions
  follow, and who owns them, sent promptly so nobody has to reconstruct them
  from memory.
- **Rogelberg, The Surprising Science of Meetings (2019):** attendee memory
  of meeting outcomes degrades quickly and diverges between attendees. A
  written record of decisions and owners is the main defense against the
  "we agreed on different things" failure.
- **Allen, Getting Things Done (2001):** an action item is a "next action":
  a concrete, visible physical step. "Look into pricing" is not an action;
  "Send Ana the 3 pricing options by Thursday" is.

## Decision rules

A statement is a DECISION only if all three hold:
1. There was explicit agreement (or the decision owner stated it).
2. It changes what someone does or does not do.
3. It can be written as one sentence without "maybe" or "we'll see".

Otherwise it is an OPEN QUESTION. Record who decided. If the decider is
ambiguous, the item is an open question with "quién decide" as the question.

## Action item rules (DRI)

The Directly Responsible Individual (DRI) practice, popularized by Apple and
widely adopted in startups (GitLab handbook documents it publicly): every
action has exactly one owner, even when several people work on it.

| Field | Rule |
|---|---|
| Action | Starts with a verb, names the deliverable |
| Owner | One person. Never "equipo" or "todos" |
| Due date | Absolute date (DD/MM/YYYY). "Next week" becomes a date |
| Source | Timestamp or quote from the transcript when available |

Missing owner: `[sin dueño]` and moved to open questions.
Missing date: propose one, mark `[fecha propuesta]`.

## Prior commitment tracking

For each action item from the previous related meeting:
- DONE: evidence in this meeting or in the brain
- IN PROGRESS: mentioned with progress
- NOT MENTIONED: not discussed (default; do not assume done)
- SLIPPED: discussed and past due

An item that slips two consecutive meetings is escalated in Próximos Pasos.

## Meeting type adjustments

| Type | Extra capture |
|---|---|
| Customer | Pain stated in their words, metrics they mentioned, renewal or expansion signals, risks |
| Prospect | Budget, authority, need, timeline; hand to lead-to-proposal |
| Investor | Questions asked (they reveal concerns), materials promised, next step in their process |
| Hiring | Only logistics and next step; evaluation content goes to restricted notes |
| Internal | Decisions, owners, and blockers raised for the all-hands |

## Sources

- Grove, A. (1983). *High Output Management*. Random House.
- Rogelberg, S. (2019). *The Surprising Science of Meetings*. Oxford University Press.
- Allen, D. (2001). *Getting Things Done*. Viking.
- GitLab Handbook, "Directly Responsible Individuals": https://handbook.gitlab.com/handbook/people-group/directly-responsible-individuals/
