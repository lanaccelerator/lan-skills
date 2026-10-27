---
name: fund-performance-analyzer
description: >
  Use when a GP, fund analyst or associate needs to calculate or benchmark VC fund
  performance: TVPI, DPI, RVPI, net IRR, gross MOIC, PME, vintage percentile vs Carta,
  attribution by position, reserves. Spanish triggers: "calcular el TVPI/DPI/TIR del
  fondo", "cómo está performando el fondo", "benchmark del fondo vs su vintage", "en
  qué cuartil está el fondo", "análisis de reservas", "atribución del portafolio".
  NOT for writing the quarterly LP report (use portfolio-reporter), NOT for an LP
  evaluating whether to invest in someone else's fund (use vc-fund-due-diligence),
  NOT for LPA or fee terms (use lp-term-sheet-analyzer), NOT for portfolio sizing
  before the fund invests (use portfolio-construction-advisor).
categories: ["business", "venture-capital", "fund-management"]
metadata:
  author: lan-accelerator
  version: "1.1"
  suite: vc-operators
license: MIT
---

# Fund Performance Analyzer

Calculates fund-level metrics from the GP's own data and places the fund against vintage
peers. Primary benchmark: Carta "VC Fund Performance: Q2 2026" (US-domiciled funds, data
through 30 Jun 2026). LATAM funds are compared with an explicit population caveat, never
as if Carta were their peer group.

## Step 1: Intake (one message)

Ask all seven in ONE message. If something is missing, proceed and mark `[ASSUMPTION: ...]`.

1. Fund name, vintage year, fund size, current fund year
2. Capital called to date and committed capital; how much of called went to fees/expenses
3. Distributions to LPs to date, with dates
4. Current FMV per portfolio company (and date and basis of each mark)
5. Dated LP cash flows (calls and distributions); if unavailable, quarterly totals
6. Subscription credit line in use? (yes/no, drawn balance)
7. PME index (S&P 500 / MSCI EM / MSCI ACWI / skip) and analysis date (quarter-end)

## Step 2: Read before calculating

- [references/fund-benchmarks.md](references/fund-benchmarks.md): Carta Q2 2026 IRR, TVPI and
  DPI percentiles by vintage, fund-size effect, deal-level return distribution, fund terms.
- [references/shared/ilpa-standards.md](references/shared/ilpa-standards.md): metric definitions.
- [references/latam-fund-context.md](references/latam-fund-context.md): for any LATAM fund.

If web access is available, check https://carta.com/data/ for a newer "VC Fund Performance"
edition and use it; say which edition you used.

## Step 3: Workflow

1. **Calculate:** TVPI = (Distributions + FMV) / Called. DPI = Distributions / Called.
   RVPI = FMV / Called. Gross MOIC = (Realized + Unrealized) / Capital invested in companies.
   Net IRR = XIRR of dated LP flows with FMV as terminal value. Verify TVPI = DPI + RVPI.
2. **Subscription line:** if a credit facility is used, report IRR with and without it, as the
   ILPA Performance Template (Jan 2025, data capture from Q1 2026) recommends. A line flatters
   IRR without changing TVPI; say by how much.
3. **PME:** use Kaplan-Schoar PME (discount each flow by index growth; ratio >1.0 = fund beat
   the index). Fetch real index levels at run time. If you cannot, skip PME and say so. Never
   invent an index return.
4. **Benchmark:** pull the 25th/median/75th/90th for the fund's vintage. Use TVPI as the main
   test for funds under year 4, DPI for funds year 8+. Flag IRR under year 4 as not meaningful.
5. **Place the fund:** "bottom quartile / second quartile / top quartile / top decile" per
   metric, with the number. Never "performing well".
6. **Attribution:** value created per position (FMV + realized - cost), share of total value
   created, concentration in top 3. Compare gross MOIC to net TVPI to show fee drag.
7. **Mark quality:** flag marks older than two quarters or not calibrated to a recent
   transaction; IPEV Valuation Guidelines 2025 (effective for periods from 1 Apr 2026) require
   re-estimating fair value at every measurement date. Flag AI-company marks priced at a
   premium multiple as the most sensitive.
8. **Reserves:** dry powder vs firm and conditional follow-on commitments; name
   under-reserved winners.
9. **LATAM context:** paste the standard annotation from latam-fund-context.md.
10. **Output** in the TEMPLATES.md structure.

## Step 4: Output Format

ALWAYS use this exact template structure. Do not change section headings, table columns, or
field order. Fill every [bracketed placeholder] with real analysis from the user's fund.
See [TEMPLATES.md](TEMPLATES.md) for the filled example. Seven sections, in order:

1. Fund metrics calculation (with checks)
2. Vintage benchmark comparison
3. Percentile placement summary
4. Attribution analysis
5. DPI vs RVPI split
6. Reserve analysis
7. LATAM fund context

If the user wants it rendered (HTML, PDF or slides for an LPAC or IC), apply
references/shared/deck-design-rules.md: claim titles, numbers big, one accent color.

## Step 5: Benchmark rules

- Label every Carta figure "(US-sourced benchmark, Carta Q2 2026)".
- Do not apply a numeric "LATAM discount". No public dataset supports one. Explain the
  mechanisms (later exits, fewer follow-on rounds, FX) and use the Cambridge Associates EM
  PE & VC index as the only free emerging-markets reference.
- Small funds: cite Carta's fund-size dispersion (2019 vintage 90th pct TVPI 4.91x for
  $1M-$10M funds vs 1.92x for $100M+) as dispersion, not as an expected return.

## Tone & Editorial Voice

See [references/shared/editorial-voice.md](references/shared/editorial-voice.md). Analyst voice:
exact numbers, no rounding that changes meaning. "5.6% net IRR, above the 4.4% median for 2022
(Carta Q2 2026)", not "mid-single digits" and not "strong".

## Next Steps

End with 3-5 numbered actions tied to this fund: reserve decisions, triage of flat positions,
the honest LP benchmark message, liquidity plan, mark fixes. Each names a company or number
and a date.

## Sources

- Carta, "VC Fund Performance: Q2 2026" (23 Sep 2026): https://carta.com/data/vc-fund-performance-q2-2026-full-report/
- Carta, "The Emerging Manager Paradox" (6 Oct 2026); "Fund Economics Report 2025" (4 Dec 2025)
- Cambridge Associates, Emerging Markets PE & VC Benchmark, Q1 2026: https://www.cambridgeassociates.com/wp-content/uploads/2026/08/WEB-2026-Q1-Emerging-Markets-PEVC-Benchmark-Book.pdf
- ILPA Reporting and Performance Templates (Jan 2025): https://ilpa.org/industry-guidance/templates-standards-model-documents/updated-ilpa-templates-hub
- IPEV Valuation Guidelines 2025: https://www.privateequityvaluation.com
- Kaplan and Schoar, "Private Equity Performance: Returns, Persistence, and Capital Flows", Journal of Finance (2005), for KS-PME
- Cuantico VP, "Latin America VC Report 2026": https://reports.cuanticovp.com/latin-america-vc-report-2026/
