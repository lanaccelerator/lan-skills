---
name: portfolio-reporter
description: >
  Use when a VC fund GP, analyst or associate must write the quarterly or annual LP
  report: fund summary, portfolio table with marks, top performers, watch list,
  distributions, pacing, market context, next-quarter priorities, ILPA-style format.
  Spanish triggers: "reporte trimestral a LPs", "informe para inversionistas del
  fondo", "carta a los LPs", "update del fondo Q3", "reporte ILPA". NOT for computing
  or benchmarking fund metrics in depth (use fund-performance-analyzer), NOT for IC
  memos on new deals (use deal-memo-writer), NOT for a startup's update to its own
  investors (use investor-update-compiler), NOT for an LP reviewing a GP
  (use vc-fund-due-diligence).
categories: ["business", "venture-capital", "fund-management"]
metadata:
  author: lan-accelerator
  version: "1.1"
  suite: vc-operators
license: MIT
---

# Portfolio Reporter

Writes the quarterly LP report from the GP side: an 8-section document following the ILPA
Reporting Template logic (updated Jan 2025, adoption from Q1 2026) and IPEV 2025 valuation
discipline, adjusted to the LP mix (institutional, family office, DFI).

## Step 1: Intake (one message)

Ask all seven in ONE message. Missing answers become `[ASSUMPTION: ...]`; do not stop.

1. Fund name, vintage, size, period (e.g., "Q2 2026, year 5 of 10")
2. Fund metrics (called %, DPI, TVPI, net IRR) or raw data to calculate them; subscription line yes/no
3. Portfolio companies: invested (initial + follow-on), current mark and how it was set,
   ownership, key metric this quarter (ARR/MRR, burn, runway)
4. Distributions in the period (or "none")
5. Dry powder, firm and conditional follow-on commitments, investment period end
6. Anything LPs must hear this quarter (down rounds, founder exits, regulatory events)
7. LP audience: institutional / family office / DFI / mixed

## Step 2: Read before writing

- [references/portfolio-report-template.md](references/portfolio-report-template.md): section
  rules, IPEV 2025 marking rule, watch-list triggers, audience adjustments.
- [references/shared/ilpa-standards.md](references/shared/ilpa-standards.md): metric definitions.
- [references/latam-fund-context.md](references/latam-fund-context.md): LP base, exits, DPI
  expectations, the standard Carta annotation.
- For benchmark numbers, use the Carta Q2 2026 vintage tables (also in the
  fund-performance-analyzer skill). If web access is available, check
  https://carta.com/data/ for a newer edition.

## Step 3: Workflow

1. Set detail level by audience: institutional or DFI = full ILPA-style report plus capital
   account and fee/expense disclosure; family office = same data, shorter (summary, portfolio
   table, top performers, watch list, distributions); mixed = full report plus a one-paragraph
   executive summary on top.
2. Calculate or confirm TVPI, DPI, RVPI, net IRR; verify TVPI = DPI + RVPI. If a subscription
   line exists, show IRR with and without it.
3. Check every mark: calibrated to the last round and adjusted for performance since (IPEV
   2025). Flag marks unchanged for more than two quarters.
4. Portfolio table: every cell filled (invested, FMV, ownership, status).
5. Top performers (3-5): each with the number that justifies it.
6. Watch list: trigger metric, root cause, action, escalation threshold with a date.
7. Distributions: amount and source, or "none" plus the realistic next liquidity path.
8. Pacing: dry powder vs firm and conditional commitments.
9. Market context: 3-5 bullets, each with a sourced number relevant to the portfolio. Include
   AI where it changes the portfolio (AI-native revenue, enterprise buyers' security and data
   terms, mark sensitivity of AI-premium rounds). Fetch FX and market data; never invent it.
10. Next-quarter priorities: named company, action verb, date.

## Step 4: Output Format

ALWAYS use this exact template structure. Do not change section headings, table columns, or
field order. Fill every [bracketed placeholder] with real analysis from the user's fund. See
[TEMPLATES.md](TEMPLATES.md) for the filled example. Sections, in order:

1. Fund Summary 2. Portfolio Summary 3. Top Performers 4. Watch List 5. Distributions and
Realizations 6. Deployment and Pacing 7. Market Context 8. Next Quarter Priorities

When the report is rendered as HTML, PDF or slides, apply
references/shared/deck-design-rules.md: claim titles, numbers big and labels small, real
company logos, one accent color, no decorative graphics.

## Step 5: LATAM rules

- Label every Carta figure "(US-sourced benchmark, Carta Q2 2026)" and paste the standard
  annotation from latam-fund-context.md. Do not quote a numeric "LATAM discount".
- Family-office-heavy LP bases often prefer a call over a written report: keep the written
  report anyway (it is the record) and offer the call.
- Manage DPI expectations explicitly until DPI passes 0.5x: LATAM exits are mostly M&A and
  secondaries (Cuantico 2026: 67% and 27% of main 2025 exits).
- DFI LPs (IDB Lab, IDB Invest, IFC, CAF) usually add impact metrics and semi-annual formal
  reporting to the LPA: check the side letter and include them.

## Tone & Editorial Voice

See [references/shared/editorial-voice.md](references/shared/editorial-voice.md). Precise, no spin.
- RIGHT: "TalentBridge burns $120k/month against $85k planned. Runway 90 days. No bridge
  unless 2 LOIs convert by Aug 31."
- WRONG: "TalentBridge faces some headwinds but the team is working hard."

## Sources

- ILPA updated Reporting Template and new Performance Template (Jan 2025): https://ilpa.org/industry-guidance/templates-standards-model-documents/updated-ilpa-templates-hub
- ILPA Principles 3.0 (2019): https://ilpa.org/ilpa-principles/
- IPEV Valuation Guidelines 2025 (effective for periods from 1 Apr 2026): https://www.privateequityvaluation.com
- Carta, "VC Fund Performance: Q2 2026" (23 Sep 2026): https://carta.com/data/vc-fund-performance-q2-2026-full-report/
- Cuantico VP, "Latin America VC Report 2026": https://reports.cuanticovp.com/latin-america-vc-report-2026/
- Visible.vc, LP reporting guide: https://visible.vc/blog/lp-reporting/
