---
name: startup-kpi-automator
description: >
  Use when a founder wants to build and automate the KPI dashboard: define each metric's
  formula by business model, wire the data sources (Stripe, CRM, database, bank, product
  analytics), set stage-gated targets and alerts, and split the weekly operating board from
  the monthly investor KPI block ("armame el dashboard de KPIs", "qué métricas trackeo y de
  dónde salen", "automatizar el reporte de métricas", "tablero semanal para el equipo",
  "calculá mi tasa de crecimiento semanal", "configurá PostHog"). Covers SaaS, marketplace,
  e-commerce, fintech and AI-native products, plus a product-analytics layer (session replay,
  experiments, feature flags, LLM cost per call) that also works with a spreadsheet. NOT for
  choosing the North Star and quarterly OKRs (use startup-metrics-okrs), deep CAC/LTV math
  (use unit-economics-calculator), writing the investor update itself (use
  investor-update-compiler), the investor-facing dashboard page (use investor-dashboard) or
  pitch decks (use pitch-deck-builder).
categories: ["business", "startups", "venture-capital"]
metadata:
  author: lan-accelerator
  version: "1.2"
  suite: startups
  complements: [startup-metrics-okrs, unit-economics-calculator, investor-update-compiler, investor-dashboard, customer-retention-expansion, ai-engineering-playbook]
license: MIT
---

# Startup KPI Automator

Designs a model-specific KPI dashboard, defines each metric precisely, maps every KPI
to its data source and refresh cadence, sets stage-gated targets, and produces the
monthly investor KPI block. Branches by business model: SaaS, marketplace, e-commerce,
fintech, with AI-native additions when inference is a material cost. Adds a product
analytics layer (PostHog or a free OSS alternative) so the team sees what users actually
do, not only what they pay.

House motto: **"Midan TODO, anoten TODO, documenten TODO."** Every KPI has a source, every
experiment has a written result, every definition lives in the company brain.

Boundary: startup-metrics-okrs decides WHAT matters (North Star, 3-5 KPIs, OKRs); this
skill builds HOW it gets measured, automated and reported. If the founder has no North
Star yet, run `/startup-metrics-okrs` first or define a provisional one in Step 3.

## Step 1: Input Gathering

Ask all questions in ONE message. Do not generate any output until you have
answers (or stated assumptions) for each.

1. **Company name and one-sentence description**
2. **Business model:** select one: SaaS / marketplace / e-commerce / fintech /
   other (the KPI system will be tailored to this selection)
3. **Current stage:** pre-revenue / early revenue (under $100k ARR) / growth
   ($100k+ ARR) / Series A+
4. **Current key metrics:** what are you tracking now? List them even if
   informal (e.g., "signup count, monthly revenue, repeat orders")
5. **Investor update frequency:** monthly / quarterly / ad hoc [monthly]
6. **Primary goal for this KPI system:** fundraising readiness / operational
   insight / both [both]
7. **Data sources and tools:** billing (Stripe, Mercado Pago, local processor), CRM,
   product database or analytics, bank, spreadsheet or BI tool in use
8. **AI-native?** Does the product run models whose inference cost scales with usage?
9. **Product analytics today:** PostHog / Mixpanel / Amplitude / Google Analytics / Umami /
   Plausible / none, only a spreadsheet [none]. Can you add a script tag or SDK to the
   product? [yes]

If the user does not answer a question, proceed with a stated assumption and
flag it: `[ASSUMPTION: ...]`. Do not silently skip inputs.

If a company brain (LAN Brain or another MCP-connected knowledge base) is connected, read
current metrics, OKRs, metric definitions and past investor updates from it first and ask
only for gaps (references/shared/company-brain-integration.md).

## Step 2: Apply Frameworks

Read [references/kpi-benchmarks.md](references/kpi-benchmarks.md) before
generating the KPI set. Select the model-appropriate table and apply all
relevant frameworks:

- **YC Standard Metrics:** baseline for all models; denominator discipline and
  cohort-based retention.
  Source: https://www.ycombinator.com/library/Fp-a-guide-to-startup-metrics
- **a16z 16 Metrics:** applies to growth-stage companies; fully-loaded CAC,
  gross-margin-adjusted LTV, bookings vs. revenue separation.
  Source: https://a16z.com/16-startup-metrics/
- **Bessemer, Scaling to $100 Million (2021):** SaaS only; growth, net retention and
  gross margin by ARR scale.
  Source: https://www.bvp.com/atlas/scaling-to-100-million
- **High Alpha and Growth Unhinged, 2025 SaaS Benchmarks Report** (12 Nov 2025, 800+
  companies): growth by ARR band, AI-native vs other SaaS. Replaces OpenView, now offline.
  Source: https://www.highalpha.com/saas-benchmarks
- **Carta KPI data:** NRR, churn, and valuation benchmarks by stage.
  Source: https://carta.com/blog/state-of-private-markets/

## Step 3: Workflow

Execute in this exact order:

1. Gather inputs (Step 1 questions: confirm answers or state assumptions)
2. Select model-appropriate KPI set from
   [references/kpi-benchmarks.md](references/kpi-benchmarks.md)
3. For each KPI: define the metric precisely (formula + what counts), set
   stage-gated benchmark target, flag whether current value is above or below
   benchmark with a clear STATUS label (On Track / At Risk / Below Bar)
4. Map each KPI to its data source, owner and refresh cadence; prefer automatic pulls
   (billing API, CRM export, database query, product analytics) over manual entry, and
   name the tool (Google Sheets + connector, Looker Studio, Metabase, or an HTML board
   built with an AI coding agent). Set an alert threshold for each red-line KPI
5. Design the product analytics layer (Step 3b): pick the tier the startup can run today
   and the events to instrument
6. Design dashboard structure: internal operations board (weekly; growth measured
   week over week) vs. investor KPI block (monthly, 5-7 metrics). Visual boards (HTML,
   PDF, slides) follow references/shared/deck-design-rules.md: one message per chart,
   the key series in the accent color, no decoration
7. Generate the investor KPI block in monthly email format; for the full narrative
   update hand off to `/investor-update-compiler`
8. Apply LATAM context from
   [references/latam-context.md](references/latam-context.md): adjust
   benchmarks for LATAM market reality before producing final output
9. Write the "Registro" rules: where each definition, experiment result and metric change
   gets written in the company brain (one page per KPI definition, one page per experiment)
10. Output using the exact structure in [TEMPLATES.md](TEMPLATES.md)
11. End with Next Steps

## Step 3b: Product Analytics Layer (PostHog advanced)

Billing tells you who paid. Product analytics tells you why they stay, where they get stuck
and what each AI call costs. PostHog bundles these in one open-source product, free up to
1M events per month (https://posthog.com/pricing), which covers most seed startups. Use what
the startup can run today, in this order of preference:

| Tier | Tool | When |
|------|------|------|
| A | PostHog Cloud (free tier) | Default for any product with a web or mobile app |
| B | PostHog self-hosted, or Umami / Plausible (self-hostable OSS, page analytics only) | Data must stay on your servers, or only web traffic matters |
| C | Spreadsheet + manual weekly input | No SDK possible yet; still measure, just by hand |

**PostHog capabilities to turn on, and the question each one answers:**

| Capability | Question it answers | Free or manual path |
|------------|---------------------|---------------------|
| Session replay with AI summaries | Where exactly do users get stuck in onboarding? | Watch 5 users share screen on a call each week; write what broke |
| Experiments (A/B) | Did the new pricing page or onboarding step actually move conversion? | Alternate versions by week and compare in the sheet; label it directional |
| Feature flags | Can we ship to 10% of users first and roll back without a deploy? | Config value per customer in the database |
| Behavior-triggered surveys | Why did this user cancel, or skip this step? | Form link sent by email when the event happens |
| LLM analytics | What does each model call cost, how long does it take, and is the answer good? | Log tokens, latency and model per call to a table; score a sample weekly |
| Data warehouse joins (Stripe, HubSpot) | Which product behavior predicts paying, expanding or churning? | Export Stripe and CRM to the same sheet, join by customer email or id |
| Error tracking tied to the session | Which bug cost us this customer? | Error log with user id plus the support ticket |
| PostHog MCP | Can the founder ask Claude "which feature do retained users use most?" and get the answer from live data? | Paste the weekly export into the chat |

Rules:
- **Instrument 10-15 events, not 200.** Signup, activation event (the moment of first value),
  core action, invite, upgrade, cancel, plus one event per paid feature. Name them
  `object_action` (e.g. `invoice_sent`) and write the list in the brain.
- **Activation is defined before the dashboard is built.** One sentence: "un usuario está
  activado cuando [acción] dentro de [N] días".
- **LLM analytics for AI-native products:** track cost per call, latency p50/p95 and a quality
  score per model and per feature. Quality scoring with an LLM judge runs on the cheapest
  adequate model class (Haiku) over a sample, never the top class over every call. Feeds
  the AI-native KPIs in references/latam-context.md (gross margin after inference, cost per
  unit of work, task success rate).
- **Experiments need a written hypothesis and a result page**, win or lose. An experiment
  without a written result did not happen.
- **PostHog MCP:** connect it so Claude can query analytics on request
  (https://posthog.com/docs/model-context-protocol). Give it a read-only key, never a key
  that can delete data or change flags in production.
- **Privacy:** mask inputs in session replay by default (passwords, card data, personal
  data fields). Paraguay Ley 7593 and LGPD in Brazil apply to behavioral data too.
- **Without PostHog, the skill still works:** every row above has a manual or free path, and
  the KPI table in TEMPLATES.md can be fed from a Google Sheet updated every Monday.

## Step 4: Output Format

ALWAYS use this exact template structure. Do not change section headings, table columns, or
field order. Fill every [bracketed placeholder] with real analysis from the user's startup.
The template and a filled example live in [TEMPLATES.md](TEMPLATES.md).

Output must include:
- KPI definitions table (metric, formula, current value, stage target, status)
- Dashboard structure (investor update vs. operations)
- Product analytics layer (tier, events to instrument, capabilities on, registry rules)
- Investor report template (monthly email format, filled)
- LATAM Context box (US benchmark + LATAM-adjusted figure, labeled per protocol)
- Next Steps

## LATAM Context

Read [references/latam-context.md](references/latam-context.md) BEFORE
producing the final output. Adjust all US-sourced benchmarks to LATAM reality.
Canonical capital-market data: references/shared/latam-benchmarks.md.

Label every US benchmark `(US-sourced benchmark)` with source and date. No public LATAM
report publishes KPI benchmarks, so LATAM ranges are `(LATAM, directional)`; never
attribute them to Cuantico or LAVCA.

Key adjustments:
- Growth: Paul Graham's YC bar is 5-7% per week (2012); for AI-native startups top funds
  expect close to 10% per week (LAN's read). Single-country LATAM B2B SaaS: 10%+ MoM is
  the floor that needs no explanation at seed (directional)
- CAC payback: under 12 months on gross margin reads as strong; lower LATAM sales
  salaries help until the company hires US sellers
- NRR: above 100% is a strong seed signal for SMB-heavy LATAM SaaS (directional)
- AI-native: add gross margin after inference, inference cost per unit of work, task
  success rate and revenue per employee (references/latam-context.md)
- Analytics on a LATAM budget: the PostHog free tier and self-hosted Umami or Plausible
  keep the tooling cost at zero; the real cost is the hour per week someone spends reading it

## Tone & Editorial Voice

See references/shared/editorial-voice.md: direct, no-sugarcoating, unicorn-bar
evaluation. You are NOT a cheerleader. If the work is weak, say it's weak. If it's
exceptional, acknowledge specifically. A dashboard nobody opens on Monday is a weak
dashboard, whatever it looks like.

## Próximos Pasos

End EVERY output with specific actions to implement this KPI system in the next
30 days. Use the header `## Next Steps`.

Actions must be concrete:
- GOOD: "Set up a Google Sheet with the 8 KPIs in this dashboard. Automate MRR
  pull from Stripe via Zapier by [specific date]."
- GOOD: "Instalá PostHog y definí los 12 eventos de la lista antes del viernes; el lunes
  mirá 5 session replays del paso de onboarding con más abandono."
- BAD: "Start tracking metrics"

Base next steps on the gaps between current tracked metrics and the model-
appropriate KPI set. If the startup tracks no metrics, the first step is
immediate instrumentation of the top-3 investor-facing KPIs and the activation event.

## Sources

- [KPI Benchmarks by Model](references/kpi-benchmarks.md): stage-gated
  benchmark tables for SaaS, marketplace, e-commerce, fintech
- [LATAM Context](references/latam-context.md): LATAM and AI-native KPI adjustments,
  verified capital-market facts
- [yc-metrics.md](references/shared/yc-metrics.md): YC + a16z metric definitions and formulas
- [latam-benchmarks.md](references/shared/latam-benchmarks.md): LATAM VC benchmark data
  (canonical source)
- references/shared/company-brain-integration.md: how to read and write the company brain
- Bessemer, Scaling to $100 Million (2021): https://www.bvp.com/atlas/scaling-to-100-million
- Paul Graham, Startup = Growth (2012): https://paulgraham.com/growth.html
- High Alpha and Growth Unhinged, 2025 SaaS Benchmarks Report (12 Nov 2025, 800+ companies; replaces the offline OpenView benchmarks): https://www.highalpha.com/saas-benchmarks
- YC Standard Metrics: https://www.ycombinator.com/library/Fp-a-guide-to-startup-metrics
- a16z 16 Metrics: https://a16z.com/16-startup-metrics/
- Carta State of Private Markets: https://carta.com/blog/state-of-private-markets/
- PostHog pricing (free tier up to 1M events per month): https://posthog.com/pricing
- PostHog docs (session replay, experiments, feature flags, surveys, LLM analytics, data warehouse, error tracking): https://posthog.com/docs
- PostHog MCP server: https://posthog.com/docs/model-context-protocol
- Umami (open-source, self-hostable web analytics): https://umami.is
- Plausible (open-source, self-hostable web analytics): https://plausible.io
