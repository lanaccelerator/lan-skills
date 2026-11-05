---
name: competitor-watch
description: >
  For STARTUP FOUNDERS tracking competitors every week. ALWAYS invoke when a founder wants to
  monitor competitors over time, see what changed this week in their pricing, product or
  hiring, or set up a recurring competitor report. Spanish triggers: "qué cambió en la
  competencia esta semana?", "vigilá a mis competidores", "armame el reporte semanal de
  competencia", "avisame si un competidor cambia precios".
  Watches about 5 competitors (default: 5 US competitors plus the Claude/ChatGPT-alone
  baseline): pricing pages, changelogs, job posts and posts, via changedetection.io, Firecrawl,
  plain web fetch or manual paste. Diffs against last week's snapshot in the company brain and
  files a one-page summary: what changed, so what, action for us. Runs on a schedule with the
  cheapest model class. Public pages only. NOT for the one-time competitive map (use
  competitive-landscape-mapper), the GTM plan (use go-to-market-strategist) or setting prices
  (use pricing-strategy-designer).
categories: ["startups", "business", "strategy"]
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: startups
  complements: [competitive-landscape-mapper, go-to-market-strategist, pricing-strategy-designer, ai-service-horizon]
license: MIT
---

# Competitor Watch

Weekly competitive intelligence that a founder can read in three minutes on Monday. The skill
watches a short list of competitors on the public pages that reveal strategy (pricing,
changelog, careers, posts), compares this week against last week's snapshot stored in the
company brain, and files one page: what changed, so what, and the action for us.

Built on three ideas. First, structured diffs beat reading websites: snapshot the fields that
matter (prices, plan names, features shipped, roles open) and compare them, so noise like
cookie banners and dates never reaches the founder. Second, job posts are the most honest
strategy document a company publishes: who they hire and where shows the next 6-12 months.
Third, the cheapest competitor to forget is the general AI assistant: Claude or ChatGPT at
about US$20 per user per month is tracked as a permanent baseline.

This skill monitors. The one-time map (2x2, Porter, moats) is competitive-landscape-mapper.

## Step 1: Input Gathering

Read the company brain first (references/shared/company-brain-integration.md sections 1-3):
`list_skills` for a saved watch procedure, then `search_brain` for "competitor watch", the
latest landscape map (`strategy/competition/`), the previous weekly summary and its snapshot,
and the startup's own pricing and roadmap pages (needed for the "so what").

Then ask, in ONE message, only for what is missing. Defaults in brackets.

1. **Competitors to watch** [the 5 from the latest landscape map; if none, 5 US competitors
   the skill proposes from web search, confirmed by you, plus the Claude/ChatGPT baseline]
2. **Pages per competitor** [the skill finds them: pricing, changelog or release notes,
   careers, blog; LinkedIn and X company pages only through public views or manual paste]
3. **Tools available** [auto-detected: changedetection.io, Firecrawl, web fetch, web search,
   manual paste]
4. **Cadence** [weekly, Monday 08:00 local time]
5. **What decisions this feeds** [pricing, roadmap priorities, sales battlecards]
6. **Run mode** [interactive now; scheduled after the first manual run works]

Mark guesses as `[ASSUMPTION: ...]`. Never block: a first run with 3 competitors and manual
paste is better than no run.

## Step 2: Build the Watch List

For each competitor, record the pages and the signal each one carries. Read
[references/monitoring-setup.md](references/monitoring-setup.md) section 1.

| Page | What to extract | What it signals |
|---|---|---|
| Pricing page | Plan names, price per plan, billing unit, limits, free tier, "contact sales" | Pricing pressure, move up or down market |
| Changelog / release notes | Items shipped, dates, frequency | Roadmap direction, shipping velocity |
| Careers page / job boards | Role titles, function, location, seniority | Strategy 6-12 months out (new market, new segment, new product) |
| Blog, LinkedIn, X | Post titles, named customers, events, positioning lines | Narrative, target segment, partnerships |
| Baseline: Claude and ChatGPT release notes | New features, connectors, agent capabilities | Whether a general assistant now does more of our job |

Watch list rules: about 5 competitors plus the baseline, 3-4 pages each, about 20-25 pages
total. More than that and nobody reads the summary.

## Step 3: Fetch (tool ladder)

Use the first rung available. Details and setup in
[references/monitoring-setup.md](references/monitoring-setup.md) sections 2-4.

1. **changedetection.io** (open source, Apache-2.0, self-hostable, free): if the founder runs
   it, read its detected changes (REST API, RSS or its MCP server) instead of fetching pages.
2. **Firecrawl** (if connected): scrape each page with JSON extraction for the fields in Step
   2; its change-tracking format can return the diff against the previous scrape.
3. **Plain web fetch and web search**: fetch each page and extract the fields. Use web search
   (`site:` queries) for job posts and posts when a page will not load.
4. **Manual paste**: the founder pastes the page text or a screenshot. Always available.

Compliance (non-negotiable): public pages only; respect robots.txt (RFC 9309) and each site's
terms; no login, no fake accounts, no bypassing paywalls, captchas or rate limits; one fetch
per page per run. LinkedIn and X often block automated reads: use their public pages through
web search results or manual paste, never scraping behind a login. If a page cannot be read
compliantly, mark it `[NO LEÍDO: motivo]` and move on.

## Step 4: Snapshot and Diff

1. **Normalize** each page into structured fields (snapshot format in
   [references/monitoring-setup.md](references/monitoring-setup.md) section 5). Compare fields,
   never raw HTML.
2. **Load last week's snapshot** from the brain. First run: there is no diff; the output is the
   baseline snapshot and says so.
3. **Diff** field by field. Classify each change:
   - **Type:** pricing / product / hiring / positioning / baseline.
   - **Materiality:** noise (wording, layout) / minor / material.
   - **Confidence:** VERIFIED (seen on the page, with URL and date) or INFERRED (say why).
4. **Material by default:** any price or plan change; a new free tier or a removed one; a new
   country, language or currency; a launch that overlaps our core use case; 3+ new roles in one
   function or one new location; a named customer in our ICP; a baseline feature that does a
   task in our product.
5. Noise is listed in one line at the end, never in the main table.

## Step 5: So What and Action

For each material change, write three things in the founder's terms:

- **Qué cambió:** before -> now, with source URL and date.
- **So what:** what it means for us (our pricing, our pipeline, our roadmap, our pitch).
- **Acción:** one concrete action, an owner and a date, or "ninguna, seguir mirando" when
  the honest answer is to wait. Hand off when it is bigger than a week: pricing ->
  pricing-strategy-designer; channel or segment move -> go-to-market-strategist; a competitor
  repositioning or a new entrant -> refresh with competitive-landscape-mapper; a general
  assistant now doing our job -> ai-service-horizon.

Lead the summary with the top 1-3 changes (BLUF). A quiet week is a valid result: say "sin
cambios materiales" and keep the page to five lines.

## Step 6: Baseline Re-Test (Claude/ChatGPT alone)

- **Weekly:** read the release notes of Claude and ChatGPT; flag any feature, connector or app
  that touches our job.
- **Monthly, or when a flag fires:** re-run the 3-task test from the landscape map (3 real
  customer tasks, share of the job done alone, why the customer would still pay us). Record the
  shares month over month. A share that crosses 80% on a paid task is a material change.

## Step 7: File to the Company Brain

Follow references/shared/company-brain-integration.md section 4.

- Search before create: if this week's page exists (same ISO week), update it.
- `create_page` at `strategy/competition/watch/<YYYY>-W<NN>` with the summary, and store the
  structured snapshot in the same page under "Snapshot" (or a sibling page
  `strategy/competition/watch/snapshots/<YYYY>-W<NN>` if the brain prefers short pages).
- Link each competitor page (`[[competitor-name]]`) and the landscape map.
- No brain connected: write `./brain-outbox/competitor-watch/<YYYY>-W<NN>.md` and say it is
  ready to import.
- Outbound: none. If a change needs the sales team, the skill drafts a short internal note as
  a DRAFT; it never sends.

## Step 8: Scheduled Runs

Follow references/shared/company-brain-integration.md section 6. Pattern:

```
claude -p "Run the competitor-watch skill for this week" --model haiku
```

- **Model class:** the cheapest adequate one. Haiku for fetch, extraction and diff; Sonnet only
  if the founder finds the "so what" writing too thin. Never the top class for a weekly job.
- **Budget:** about 25 pages per run. Fetch only the watched section of each page, send
  excerpts not whole sites to the model, log tokens per run, and stop at the cap the founder
  sets (default: if a run would exceed 2x last week's tokens, stop and report).
- **Permissions:** web read and brain write only. No email send, no browser driving of the
  founder's personal browser, no audio.
- **Idempotent:** skip if this ISO week's page already exists and is complete.
- **Failures are reported:** an unreadable page, an expired token or a down tool goes into
  "Estado de la corrida"; a partial run never looks like a complete one.

## Step 9: Output Format

ALWAYS use this exact template structure. Do not change section headings, table columns, or
field order. Fill every [bracketed placeholder] with real analysis from the user's startup.

See [TEMPLATES.md](TEMPLATES.md) for the filled example. One page, in Spanish unless the team
works in another language. Every change carries its source URL and date.

## LATAM Context

See [references/latam-context.md](references/latam-context.md): LATAM competitors rarely
publish changelogs or prices ("cotizá por WhatsApp"), job posts live on regional boards, and
US competitors reveal LATAM entry through hiring and local payment methods before any press
release. For benchmarks, follow references/shared/latam-benchmarks.md.

## Tone & Editorial Voice

See references/shared/editorial-voice.md: direct, not a cheerleader. Do not inflate a
wording change into a threat to fill the page. Do not soften a real one: if a funded
competitor just launched our core feature at half our price, the first line says so.

## Próximos Pasos

End every summary with 3-5 concrete actions, for example:
- "Revisá con pricing-strategy-designer si tu plan Mínimo sigue entrando: el competidor bajó su
  plan de entrada de US$49 a US$29."
- "Sumá al battlecard de ventas la respuesta a la nueva integración con QuickBooks del
  competidor; los prospectos la van a mencionar."
- "Re-corré el test de Claude/ChatGPT solo con tus 3 tareas: salió una función nueva que toca
  tu caso de uso."
- "Agendá la corrida semanal con Haiku una vez que esta corrida manual te sirva."

## Sources

- [Monitoring Setup](references/monitoring-setup.md): tool ladder, snapshot format, diff
  rules, scheduling, compliance
- [LATAM Context](references/latam-context.md): where LATAM competitors leave signals
- references/shared/company-brain-integration.md: brain read and write, scheduled runs
- changedetection.io (open source, Apache-2.0): https://github.com/dgtlmoon/changedetection.io
- Firecrawl change tracking: https://docs.firecrawl.dev/features/change-tracking
- RFC 9309, Robots Exclusion Protocol: https://www.rfc-editor.org/rfc/rfc9309
- Claude Code headless mode: https://code.claude.com/docs/en/headless
- Claude Code subagents (route tasks to lower-cost models like Haiku): https://code.claude.com/docs/en/sub-agents
