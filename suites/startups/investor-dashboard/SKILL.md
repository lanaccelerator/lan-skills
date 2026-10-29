---
name: investor-dashboard
description: >
  For STARTUP FOUNDERS. Use when a founder needs an investor dashboard: a one-page monthly
  portal built from ONE Google Sheet, with executive summary and status pills, KPI tiles with
  month-over-month change and sparklines, revenue vs EBITDA and cash vs burn charts, a simple
  P&L, team, cap table and documents, published in Notion, Google Drive or a Claude artifact
  with no login to build. Spanish triggers: "armame el dashboard de inversores", "portal de
  inversores", "reporte mensual en una página para inversores", "portada del data room".
  NOT for organizing data room folders and documents (use data-room-builder), writing the
  investor update email (use investor-update-compiler) or the internal KPI system and
  operating board (use startup-kpi-automator).
categories: ["startups", "fundraising", "investor-relations"]
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: startups
  complements: [data-room-builder, investor-update-compiler, startup-metrics-okrs]
license: MIT
---

# Investor Dashboard (lite)

One page an investor can read in ten seconds: how the company did this
month, where the cash stands, and where every document lives. Modeled on
the investor portals of well-run portfolio companies, minus everything that
needs an engineering team: no login, no roles, no viewer analytics. Sharing
is the platform's own (Notion share, Drive share, artifact link).

Two ideas carry it. One Google Sheet is the single source of truth: every
target renders from it, so nothing is typed twice. And the dashboard is a
frozen monthly snapshot: each month gets its own column, so history builds
itself and investors compare without asking.

## Step 1: Inputs

If the company brain is connected, read it first (company.md, the KPI and
OKR pages, and the data room index left by /data-room-builder) and only ask
for what is missing. Otherwise ask everything in ONE message:

1. Company name, reporting currency, and the month being reported.
2. Target: Notion, Google Drive, or a Claude artifact.
3. Where the numbers live: accounting export, billing, bank, CRM, an
   existing KPI sheet. Which of those the AI can reach through connectors.
4. The product's core usage metric (its main action, e.g. orders, missions,
   active seats) and how a "customer" is counted.
5. Brand color (hex) and logo, optional.
6. Team and cap table: summary only (default) or more detail.

If an answer is missing, proceed with a stated assumption and flag it as
`[ASSUMPTION: ...]`.

## Step 2: Build the source sheet

Always, whatever the target. One Google Sheet, these tabs:

| Tab | Columns |
|---|---|
| `Meta` | company, currency, report_month, last_updated, status_note, summary (3-4 lines) |
| `KPIs` | metric_id, label, definition, unit (currency, %, number, months), lower_is_better (TRUE/FALSE), then one column per month `YYYY-MM`, last 12 to 15 months |
| `PnL` | section, line, type (header, line, negative, percent), one column per month |
| `Team` | area, people, monthly_cost |
| `CapTable` | holder, type (common, preferred, SAFE, option pool), shares, pct_fully_diluted |
| `Documents` | category, name, type (PDF, XLSX, link), link, month |
| `Milestones` (optional) | date, tag (Financial, Commercial, Product, Funding, Compliance), title, one_line |

Headline metrics (8 to 10): `revenue` or `mrr`, `gross_margin_pct`,
`ebitda`, `cash_closing`, `burn_rate`, `runway_months`, `active_customers`,
and the core usage metric. Optional: `new_customers`, `churn_pct`,
`headcount`. `burn_rate`, `churn_pct` and debt are `lower_is_better`.

Data rules:
- Every number comes from a source, and the sheet records which source and
  its date. Never invent or estimate a value without saying so.
- A missing value stays blank and renders as "—", never as zero.
- Percentages are stored as fractions (0.42) and formatted once at render.
  Scaling a percentage twice is the most common error in these dashboards.
- `status_note` defaults to "Not audited · management accounts" unless the
  figures are audited.

## Step 3: Compute and check

- Month-over-month change for each metric. Year-over-year only when 13 or
  more months of history exist; otherwise hide it instead of showing "no data".
- Change chips: green when the metric moved the good way, red when it moved
  the bad way. `lower_is_better` reverses the colors.
- Runway = cash_closing ÷ average burn of the last 3 months. Show the formula
  next to the number.
- Status pills, generated automatically: revenue trend (↑ or ↓ x%), EBITDA
  positive or negative, runway in months (red under 6 months).

Sanity checks before rendering. If one fails, report it to the founder and
do not render a wrong number:
- P&L: revenue minus cost of sales equals gross profit; EBITDA ties out.
- Team: the headline payroll equals the sum of the areas.
- Cap table: percentages sum to 100% (± 0.5).
- Every percentage sits between -100% and 100% unless the metric allows more.

## Step 4: Render

Same section order on every target:

1. Header: company, report month, last updated, status note.
2. Executive summary (3-4 lines) and the status pills.
3. KPI grid: one tile per headline metric with label, definition on hover
   or footnote, value, change chip and a 12-month sparkline.
4. Financials: Revenue vs EBITDA (12 months), Cash vs Burn with the runway
   badge, and the simplified P&L (revenue, gross margin, operating expenses
   by bucket, EBITDA).
5. Operations: customers and the core usage metric.
6. Team: headcount and monthly payroll by area.
7. Cap table: stacked bar plus holder, type and % table.
8. Documents grouped by category: Monthly report, Financial statements,
   Legal and corporate, Cap table.
9. Milestones timeline (optional).

Footer: "Confidential · {month}".

### Notion

- A parent page "Investor Dashboard" with one child page per month, created
  from a template that holds the sections above.
- A KPI database (Metric, Month, Value, Previous, Change, Definition, Lower is
  better) shown as a gallery of tiles for the current month.
- A Documents database (Category, Name, Type, Link, Month) grouped by
  category, and a Milestones database in timeline view.
- Charts: Notion's chart view on the KPI database when the workspace has it;
  otherwise embed the charts from the Google Sheet.
- The executive summary and status note go in a callout at the top.

### Google Drive

- A folder "Investor Dashboard" holding the source Sheet and numbered
  folders: `01 Monthly report`, `02 Financial statements`,
  `03 Legal and corporate`, `04 Cap table`, `05 Pitch and updates`.
- Add a `Dashboard` tab to the Sheet: KPI tiles built with formulas and
  `SPARKLINE()`, and native Sheets charts for Revenue vs EBITDA and Cash vs
  Burn. Freeze the header with the month and status note.
- Share as Viewer with named investors. Never "anyone with the link" unless
  the founder asks for it.

### Claude artifact (one HTML page)

- One self-contained HTML file. The month's data is embedded as a JSON block
  generated from the Sheet, so the page needs no login and no live calls.
  Regenerate it every month.
- Design: light grey canvas, white cards (12px radius, 1px border, soft
  shadow), ONE brand color plus its tints for every chart series, green and
  red only for change chips. A clean sans for headings and a monospace font
  for numbers, labels and chips (both from Google Fonts). KPI tiles 4 per row
  on desktop.
- Charts in inline SVG: area plus line for Revenue vs EBITDA (keep the area
  fill light so the line stays visible), bars for MRR or customers, a
  stacked bar for the cap table. Tooltips with the month and values.
- Must work at phone width (375px) with no horizontal scroll: tiles drop to
  1 or 2 per row and any sidebar collapses. Include a print stylesheet so
  the browser's "Save as PDF" gives a clean report.
- Publish it as a Claude artifact and share the link, or save the HTML file
  in the Drive folder.

## Step 5: Monthly refresh

1. **Schedule** a run on the first business days of each month, for example
   `claude -p "Run the investor-dashboard skill in monthly refresh mode."` in
   Claude Code or `codex exec "Run the investor-dashboard skill in monthly
   refresh mode."` in Codex.
2. **Pull** the closed month from the connected sources and the brain's KPI
   pages. Append the month's column; never overwrite a value with a blank.
   A failed source is reported, not zeroed.
3. **Recompute**, rerun the sanity checks, and re-render the target.
4. **Flag stale items**: any metric or document older than 35 days.
5. **Report** to the founder: what changed, what is missing, what failed.
   When the brain is connected, file the report there. Follow
   references/shared/company-brain-integration.md sections 4 and 6.

## Guardrails

- Nothing is shared or sent automatically. The founder decides who sees it.
- Never in the dashboard: individual salaries, personal or tax IDs, bank
  details, passwords or API keys.
- Numbers only from sources, with their date. Missing means "—" plus a note.
- Show "Not audited · management accounts" unless the figures are audited.

## Output

Close with: the Sheet link and the dashboard link (Notion page, Drive
folder or artifact), the metrics filled vs missing (and which source to
connect for each gap), the sanity check results, and the next refresh date.

## Sources

- a16z, "16 Startup Metrics" (2015) and "16 More Startup Metrics":
  definitions for revenue, MRR, gross margin, burn and churn.
- Mark Suster, Both Sides of the Table: monthly investor updates and why a
  consistent format builds investor trust.
- Edward Tufte, Beautiful Evidence (2006): sparklines, word-sized trend
  graphics next to the number they describe.
