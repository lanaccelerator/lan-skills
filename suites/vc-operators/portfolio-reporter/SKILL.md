---
name: portfolio-reporter
description: >
  For VC FUND OPERATORS generating LP quarterly reports. ALWAYS
  invoke when a fund analyst or associate needs to prepare a quarterly
  LP report, portfolio performance summary, or ILPA-compliant fund
  update. NOT for writing investment committee memos on new deals
  (use deal-memo-writer for that).
categories: ["business", "venture-capital", "fund-management"]
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: vc-operators
license: MIT
---

# Portfolio Reporter

Generates ILPA-compliant quarterly LP reports from an analyst/associate perspective.
Output is an 8-section quarterly report covering fund summary, portfolio table, top
performers, watch list, distributions, pacing, market context, and next quarter priorities.
LATAM fund context applied — LP audience adjustment for institutional vs family office LPs.

## Step 1: Input Gathering

Ask ALL seven questions in ONE message. Do not begin writing the report until you have
answers (or stated assumptions) for each.

1. **Fund name, vintage year, fund size, and current period** (e.g., "Q3 2025 / Year 4 of 10")
2. **Fund-level metrics** — Capital called %, DPI, TVPI, IRR (or "calculating from portfolio data")
3. **Portfolio companies** — List of companies with current valuations, plus any follow-ons in the quarter
4. **Distributions in period** — Any exits, secondaries, or partial realizations? (or "none this period")
5. **Pacing** — How much dry powder remains? Is fund on pace vs deployment plan?
6. **Market context points** — Any notable macro events the LP should understand this quarter?
7. **LP audience type** — Institutional (ILPA-compliant format) / Family office (simplified) / Mixed

If any question is not answered, proceed with a stated assumption: `[ASSUMPTION: ...]`.
Do not silently skip inputs.

## Step 2: Apply Frameworks

Read [references/portfolio-report-template.md](references/portfolio-report-template.md)
BEFORE generating the report. Apply:

- **ILPA Reporting Template** — Read @shared/frameworks/ilpa-standards.md for TVPI, DPI,
  RVPI, IRR, MOIC metric definitions and fund-level reporting standards.
  Source: https://ilpa.org/reporting-template/
- **Visible.vc LP reporting structure** — Quarterly narrative format, portfolio table design
  Source: https://visible.vc/blog/lp-reporting/
- **Carta analytics benchmarks** — Vintage year contextualization for fund-level metrics.
  See references/portfolio-report-template.md for benchmark application guidance.

Adjust detail level based on LP audience:
- **Institutional LPs:** Full ILPA-compliant format with capital account statement, fee
  disclosures, and complete portfolio table per ILPA Principle 3 (Transparency)
- **Family office LPs:** Simplified format — fund summary, portfolio table, top 3
  performers, watch list, and distributions only. Skip fee breakdown unless requested.
- **Mixed audience:** Use full ILPA format; add executive summary paragraph at top.

## Step 3: Workflow

Execute in this exact order — produce all 8 sections:

1. **Confirm LP audience type** → adjust detail level (ILPA full vs simplified)
2. **Calculate or confirm fund-level metrics** — TVPI, DPI, RVPI, IRR using definitions
   from @shared/frameworks/ilpa-standards.md. Show calculation if data was provided as
   raw inputs.
3. **Build portfolio summary table** — All active companies with: Stage | Initial Investment |
   Follow-on Reserve | Current Valuation | Ownership % | Status
4. **Identify top 3–5 performers** — Metric evidence required (e.g., "3.2× markup from
   Series A close at $45M pre-money"). Not "doing well" — show the number.
5. **Identify watch list companies** — Specific risk flags required: burn rate vs runway,
   bridge status, milestone miss specifics. Not generic "monitoring."
6. **Summarize distributions and realizations in period** — Or state "none this period"
   with explanation of exit timeline expectations.
7. **Assess pacing vs deployment plan** — Dry powder remaining, projected deployment
   timeline, reserve adequacy for follow-ons.
8. **Add market context box** — 3–5 bullet points max. Macro events relevant to LP.
   Not an essay — specific data points only.
9. **List next quarter priorities** — Specific and action-oriented. Not "continue
   monitoring" — name the company, the milestone, and the expected timing.
10. **Output using TEMPLATES.md structure** — 8 sections in order.

## Step 4: Output Format

ALWAYS use the exact structure in [TEMPLATES.md](TEMPLATES.md). Quarterly report sections
must appear in the order listed in Step 3. Every section requires substantive analysis.
Do not merge sections or reorder them.

## Step 5: LATAM Fund Context

Read [references/latam-fund-context.md](references/latam-fund-context.md) BEFORE finalizing
for any LATAM fund.

**LP base characteristics:**
LATAM LP base is primarily family offices — ILPA-full compliance is the institutional
standard, but many LATAM family office LPs want simpler reporting. Adjust based on LP
audience type (Question 7). Some family office LPs prefer quarterly calls over written
reports — note this in the next quarter priorities if the fund has this dynamic.

**LATAM market context in market section:**
Always include LATAM VC market context (Cuantico/LAVCA figures) — LPs want to know how
the LATAM market is performing relative to fund activity. Q4 2025 LATAM VC: $4.126B
across 681 rounds (Cuantico 2026).

**Distribution expectations:**
LATAM exit environment is thin — manage LP expectations on DPI timeline. Most LATAM
fund I distributions come from secondaries or M&A, rarely IPO. Explain this context
explicitly rather than letting LPs assume US-equivalent exit timelines.

**Carta benchmarks for context:**
Use Carta vintage benchmarks to position fund performance. Label ALL Carta figures:
"(US-sourced benchmark, Carta Q1 2026)". Include LATAM note: LATAM performance
typically 30–50% below US equivalents at same vintage due to longer exit timelines
and thinner secondary markets.

## Tone & Editorial Voice

See @shared/frameworks/editorial-voice.md. Analyst voice — precise, data-driven, no spin.

Watch list companies get honest assessment with specifics:
- RIGHT: "GrowthCo is burning $120k/month against $85k/month projected. Bridge required
  within 90 days absent revenue acceleration. Risk: high."
- WRONG: "GrowthCo is facing some challenges but the team is working hard."

Portfolio table entries must have numbers — valuation, ownership %, follow-on reserve
used. Empty cells are not acceptable in a completed quarterly report.

## Step 6: Próximos Pasos

List next quarter priorities for the fund: specific, action-oriented, named companies
where applicable. Format as numbered list with expected timing.

Examples:
- "1. Execute follow-on in PortCo B ($250k pro-rata) — Series A expected to close Q4 2025"
- "2. Bridge conversation with PortCo E — 90-day runway, decision by October 15"
- "3. LP annual meeting — schedule for December 2025, send save-the-date in October"

Not: "Continue monitoring portfolio companies and maintaining LP relationships."

## Sources

- ILPA Reporting Template: https://ilpa.org/reporting-template/
- Visible.vc LP reporting: https://visible.vc/blog/lp-reporting/
- Carta Q1 2026 (via references/portfolio-report-template.md)
- @shared/frameworks/ilpa-standards.md — TVPI, DPI, RVPI, IRR, MOIC definitions
- [references/portfolio-report-template.md](references/portfolio-report-template.md) — ILPA-compliant report structure
- [references/latam-fund-context.md](references/latam-fund-context.md) — LP base, exit environment, benchmark context
- LAVCA: https://www.lavca.org
- Cuantico 2026: https://reports.cuanticovp.com/latin-america-vc-report-2026/
