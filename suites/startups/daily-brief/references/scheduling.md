# Scheduling the Daily Brief

Run close at 21:00 and open at 07:30 every day, headless, with the same
connectors as an interactive session.

## Headless commands

| Agent | Command |
|---|---|
| Claude Code | `claude -p "Run the daily-brief skill in <mode> mode for today. Drafts only."` |
| Codex | `codex exec "Run the daily-brief skill in <mode> mode for today. Drafts only."` |

Test each command manually once before scheduling it. Confirm the run can
reach the brain, email, calendar and any recorder; an unattended run with a
missing connector produces a thin brief.

Permissions: read sources, write brain pages, create email drafts. Never
grant send permissions to the scheduled run. In Claude Code, use an
allow-list in settings rather than skipping permission checks.

## Wrapper script with guards

Save as `~/bin/daily-brief.sh` and make it executable. Swap the agent line
for `codex exec` if you use Codex.

```bash
#!/usr/bin/env bash
set -euo pipefail
MODE="${1:-close}"                       # close | open | team
DAY="$(date +%F)"
STATE="$HOME/.daily-brief"
LOCK="$STATE/lock"
DONE="$STATE/$DAY-$MODE.done"
mkdir -p "$STATE"

# Same-day guard: one successful run per mode per day.
[ -f "$DONE" ] && exit 0

# Single-instance lock: mkdir is atomic.
mkdir "$LOCK" 2>/dev/null || exit 0
trap 'rmdir "$LOCK"' EXIT

cd "$HOME/work"                          # folder whose repos the brief scans
claude -p "Run the daily-brief skill in $MODE mode for $DAY. Drafts only." \
  >> "$STATE/$DAY-$MODE.log" 2>&1 && touch "$DONE"
```

The local marker file is the cheap guard. The skill itself also checks the
brain page (read-modify-write), so a forced re-run updates the same section
instead of duplicating it.

## Triggers

Crontab (`crontab -e`):

```
0 21 * * *  $HOME/bin/daily-brief.sh close
30 7 * * *  $HOME/bin/daily-brief.sh open
```

macOS launchd: a LaunchAgent plist in `~/Library/LaunchAgents/` with
`StartCalendarInterval` (Hour 21, Minute 0) runs even after the machine wakes
from sleep, which cron does not. Load it with
`launchctl bootstrap gui/$(id -u) <plist>`.

Team mode: add a third line, for example Friday 18:00
(`0 18 * * 5  $HOME/bin/daily-brief.sh team`), or daily for cofounders who
want it.

## Failure handling

- If a source fails (expired token, recorder down), the brief lists it under
  source gaps instead of silently omitting the section.
- The log file per run is the first place to look when a brief is missing.
- A missed run is not back-filled automatically: the skill works on today
  only. Run it manually with an explicit date if a past day is needed.

## Sources

- Claude Code headless mode: https://code.claude.com/docs/en/headless
- Codex non-interactive mode: https://developers.openai.com/codex/noninteractive
- launchd scheduled jobs: https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPSystemStartup/Chapters/ScheduledJobs.html
