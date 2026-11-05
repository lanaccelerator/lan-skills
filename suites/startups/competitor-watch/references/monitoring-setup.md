# Monitoring Setup: Watch List, Tools, Snapshots, Scheduling

**Sources:**
- changedetection.io README (open source, Apache-2.0): https://github.com/dgtlmoon/changedetection.io
- Firecrawl change tracking: https://docs.firecrawl.dev/features/change-tracking
- RFC 9309, Robots Exclusion Protocol: https://www.rfc-editor.org/rfc/rfc9309
- Claude Code headless mode: https://code.claude.com/docs/en/headless
- Claude Code subagents: https://code.claude.com/docs/en/sub-agents

**When to use:** competitor-watch Steps 2-8, when setting up the watch list, choosing the
fetch tool, storing snapshots and scheduling the weekly run.

---

## 1. Finding the right pages

| Page | Where to look | Tip |
|---|---|---|
| Pricing | `/pricing`, `/plans`, `/precios`, footer link | If prices are hidden, record "contact sales" as the value; a hidden price that appears (or disappears) is a change |
| Changelog | `/changelog`, `/release-notes`, `/whats-new`, docs site, GitHub releases, product blog tag | Many SaaS companies publish an RSS feed for the changelog: prefer it |
| Careers | `/careers`, `/jobs`, `/trabaja-con-nosotros`, ATS-hosted pages (Greenhouse, Lever, Ashby, Workable boards are public) | Record title, function, location, seniority; ignore the description text |
| Blog and news | `/blog`, `/news`, `/press` | Record title and date only |
| LinkedIn / X | Public company page | Automated reads are often blocked; use web search results (`site:linkedin.com/company/<name>`) or manual paste |
| Baseline | Claude release notes, ChatGPT release notes | Record feature names and dates |

Pick 3-4 pages per competitor. The pricing page and the careers page carry the most signal
per fetch.

## 2. Rung 1: changedetection.io (free, self-hosted)

Open source (Apache-2.0), runs on your own machine or a small server.

```
docker run -d --restart always -p "127.0.0.1:5000:5000" -v datastore-volume:/datastore \
  --name changedetection.io docker.io/dgtlmoon/changedetection.io
```

Then open http://127.0.0.1:5000 and add one watch per page.

Configuration that keeps noise out:
- **Target only the part that matters** with a CSS selector or XPath filter (the pricing
  table, the jobs list, the changelog entries).
- **Ignore text** that changes every visit (dates, counters, "updated X minutes ago").
- **Schedule** once per week per watch, on the same day.
- **JavaScript pages** need the Chrome or Playwright fetcher; the plain fetcher is enough for
  most pricing and careers pages.
- **Notifications** to email or a webhook, or read results through its REST API, RSS feeds
  or its MCP server so the weekly run can pull the detected changes.
- Its optional AI summaries send page content to a third-party model you choose: if enabled,
  use the cheapest adequate model and check the monitored sites' terms allow it.
- Do not use its "browser steps" to log in to competitor accounts. Public pages only.

## 3. Rung 2: Firecrawl (if connected)

- Scrape each page with JSON extraction and a small schema (Section 5 fields), so the result
  is already structured.
- Add `changeTracking` to the formats to get "new / same / changed" against the previous scrape
  and an optional diff (git-diff for text, json for fields).
- Self-hosted Firecrawl costs nothing per call; the cloud version uses credits: count pages x
  weeks before turning it on.

## 4. Rung 3 and 4: plain web fetch, web search, manual paste

- **Web fetch:** fetch the page, extract the fields with the model, keep only the extracted
  fields. Works in any agent.
- **Web search:** `site:competitor.com pricing`, `site:boards.greenhouse.io competitor`,
  `"competitor" changelog`, results from the last week. Useful when the page blocks fetches.
- **Manual paste:** the founder pastes the page text or uploads a screenshot. The skill
  extracts the same fields. Always works, takes about 10 minutes for 5 competitors.

## 5. Snapshot format

Store one structured block per competitor per week. Example (YAML inside the brain page):

```yaml
competitor: Hypothetical Co
week: 2026-W45
fetched: 2026-11-02
pricing:
  url: https://example.com/pricing
  plans:
    - {name: Starter, price_usd_month: 49, unit: per company, limit: 100 invoices}
    - {name: Pro, price_usd_month: 149, unit: per company, limit: 1000 invoices}
  free_tier: false
changelog:
  url: https://example.com/changelog
  items: [{date: 2026-10-30, title: "QuickBooks two-way sync"}]
careers:
  url: https://example.com/careers
  roles: [{title: "Account Executive, LATAM", location: "Mexico City", function: sales}]
posts:
  items: [{date: 2026-10-29, title: "Why we are expanding to Mexico", channel: blog}]
status: ok   # ok | partial | not_read (reason)
```

## 6. Diff rules (noise filter)

| Change | Classification |
|---|---|
| Wording, layout, image, testimonial order | Noise |
| A changelog item that is a bug fix | Minor |
| A new changelog feature outside our use case | Minor |
| Any price, plan, limit or billing-unit change | Material |
| Free tier added or removed | Material |
| New country, language or currency | Material |
| Feature launch overlapping our core use case | Material |
| 3+ new roles in one function, or the first role in a new location | Material |
| Named customer in our ICP | Material |
| Baseline (Claude/ChatGPT) feature that does a task in our product | Material |

Two consecutive weeks of the same new job post are one signal, not two.

## 7. Scheduling

Headless run, same MCP connectors as the interactive session:

```
claude -p "Run the competitor-watch skill for this week" --model haiku
```

Triggers: cron or launchd on your machine, a scheduled CI workflow, or scheduled tasks if
your plan includes them. Codex equivalent: `codex exec "Run the competitor-watch skill for
this week"`.

Example cron line (Mondays 08:00):

```
0 8 * * 1 cd /path/to/workdir && claude -p "Run the competitor-watch skill for this week" --model haiku >> competitor-watch.log 2>&1
```

Cost discipline:
- Haiku class for fetch, extraction and diff. Sonnet only if the summary writing is the
  problem. Never the top class for a weekly job.
- Estimate before the first scheduled run: pages x average extracted excerpt size x weeks.
  Send excerpts (the watched section), not whole pages.
- Log tokens per run in "Estado de la corrida"; stop and report if a run would exceed the cap.

## 8. Compliance checklist

- Public pages only. No logins, no fake or test accounts on competitor products, no paywall,
  captcha or rate-limit bypass.
- Respect robots.txt (RFC 9309) and the site's terms of service. If either forbids automated
  access, use manual paste or web search results.
- One fetch per page per run. Identify the tool honestly; no spoofed user agents.
- Do not collect personal data of competitor employees beyond what a public job post shows
  (title, location). Never store names from job posts or LinkedIn in the brain.
- The summary describes what is public. Rumors, leaked documents or information obtained from
  a competitor's ex-employee under confidentiality do not go in.
