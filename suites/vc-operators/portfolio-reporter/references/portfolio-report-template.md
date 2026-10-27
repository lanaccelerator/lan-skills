# Portfolio Report Template — ILPA-Compliant Quarterly Report Structure

**Sources:**
- ILPA Reporting Template and Performance Template (released Jan 2025, adoption from Q1 2026):
  https://ilpa.org/industry-guidance/templates-standards-model-documents/updated-ilpa-templates-hub
- IPEV Valuation Guidelines 2025: https://www.privateequityvaluation.com
- Visible.vc LP reporting guide: https://visible.vc/blog/lp-reporting/
- shared/ilpa-standards.md — metric definitions and ILPA principles

---

## Required Sections (8-Section Structure)

Every quarterly LP report must include all 8 sections in order. Section ordering is not
optional — institutional LPs with multiple fund exposures compare reports in a standard
format. Deviating from section order creates friction for LPAC review.

### Section 1: Fund Summary Table

Required columns:
- Vintage year and current period (e.g., "Year 4 of 10")
- Fund size (committed) and capital called (% and $)
- Dry powder remaining (reserved vs available)
- DPI, TVPI, IRR (net of fees and carry)
- Active portfolio companies (current vs original)

**Benchmark labeling:** When including Carta vintage benchmarks, label every figure:
"(US-sourced benchmark, Carta Q2 2026)". Include the LATAM annotation from latam-fund-context.md.

### Section 2: Portfolio Summary Table

Required columns per ILPA Principles 3.0 (Transparency section, 2019):
- Company name and current stage
- Initial investment ($) and follow-on capital used ($)
- Current fair market value (FMV) — mark-to-market per last round
- Ownership % (fully diluted)
- Status: On plan / Watch list / Exited / Partially exited

**FMV calculation (IPEV Valuation Guidelines 2025, effective for reporting periods from
1 Apr 2026):** fair value is re-estimated at every quarter-end, even when a recent round
exists. Start from the last priced round, then calibrate: adjust for company performance
since that round (revenue vs plan, runway), market multiples of comparable public companies,
and instrument rights (preferences, SAFEs and notes valued per their terms). Holding at cost
or at the last round without that analysis is not fair value. Write a one-line calibration
note per mark; flag any mark carried unchanged for more than two quarters. AI-company marks
priced at premium revenue multiples get the same test, not an exemption.

### Section 3: Top Performers

Minimum 3 companies. Each entry must include:
- Specific metric evidence (TVPI on position, MRR figure, growth rate)
- Context for why the metric matters (e.g., "3.11× TVPI vs $600k cost — implies $1.87M
  pro-rata value at current round post-money")
- Expected next milestone

"Doing well" without metric evidence is not acceptable. If you cannot support the claim
with a number, it does not belong in top performers.

### Section 4: Watch List

Trigger criteria — a company belongs on the watch list when ANY of the following apply:
- Cash runway <120 days at current burn rate
- Burn rate >20% over projection for consecutive quarter
- MRR flat or declining for 2+ consecutive months
- Key milestone missed by >30 days without explanation
- Regulatory action, legal dispute, or founder departure

Each watch list entry must include:
- Specific risk metric (burn rate, runway, churn rate)
- Root cause (not symptoms)
- Action required and deadline
- Escalation threshold: "If [specific condition] by [specific date], [specific action]"

### Section 5: Distributions and Realizations

Report ALL distribution events in the period, including:
- Realized exits (full or partial)
- Secondaries
- Any return of capital from portfolio company recaps

If no distributions: state explicitly — "No distributions in Q3 2025. Next expected
distribution event: [specific company + anticipated timing]." LP silence on distributions
creates anxiety; acknowledge the timeline explicitly.

**LATAM exit environment note:** Include standard LATAM distribution context in every report
until DPI exceeds 0.5×. Most LPs have seen US funds with faster DPI timelines.

### Section 6: Deployment and Pacing

Report:
- Capital called to date ($) and % of committed capital
- Dry powder remaining — split between reserve pool and available for new investments
- Deployment plan end date (investment period close)
- Reserve adequacy assessment: "reserves sufficient for [N] follow-ons in current portfolio"

**Pacing flag:** If deployment pace is more than 15% ahead or behind plan, explain why and
adjust the forward projection explicitly.

### Section 7: Market Context

3–5 bullet points only. Each bullet:
- Must cite a specific data point or event (not general observations)
- Must be relevant to the fund's thesis or portfolio companies
- Must be new information (not restating prior quarter context)

Topics to address when applicable: LATAM VC market activity (Cuantico/LAVCA figures), FX
environment (BRL/USD, MXN/USD bands), regulatory changes affecting portfolio sectors,
exit market activity (M&A, IPO pipeline), macro context for LP risk assessment.

### Section 8: Next Quarter Priorities

Numbered list. Each priority must include:
- Named company or fund activity (no generic "portfolio management")
- Specific action (not "monitor" — "execute", "decide", "close", "review")
- Expected timing or deadline

---

## Metric Calculation Reference

All definitions from shared/ilpa-standards.md:

**TVPI (Total Value to Paid-In):**
TVPI = (Total Distributions + Current Portfolio FMV) ÷ Capital Called
*Use net distributions (after management fee and carry deductions).*

**DPI (Distributions to Paid-In):**
DPI = Total Cash Distributions to LPs ÷ Capital Called
*DPI = 0 until first realized exit. Do not include unrealized gains.*

**RVPI (Residual Value to Paid-In):**
RVPI = Current Portfolio FMV ÷ Capital Called
*TVPI = DPI + RVPI*

**IRR (Net Internal Rate of Return):**
Net IRR = IRR of cash flows where capital calls are negative cash flows and distributions +
current FMV are positive cash flows. Net of management fees and carry. Use actual
quarterly cash flow dates — not simplified annual buckets.

**MOIC (Multiple on Invested Capital):**
MOIC = (Realized + Unrealized Value) ÷ Invested Capital
For fully-called funds: MOIC ≈ TVPI. Distinction matters only when fund has uncalled capital.

---

## Watch List Criteria Reference

| Condition | Severity | Required Action |
|-----------|---------|-----------------|
| Runway <90 days | HIGH | Bridge decision required immediately |
| Runway 90–120 days | MEDIUM | Bridge conversation initiated this quarter |
| Burn >20% over projection | MEDIUM | Explain root cause in watch list entry |
| MRR flat or negative 2+ months | MEDIUM | Product/GTM triage — set 60-day evaluation window |
| Missed key milestone >30 days | LOW | Request updated milestone plan from founder |
| Founder departure (any C-suite) | HIGH | Immediate LPAC notification required |

---

## LP Audience Adjustments

**Institutional LPs (pension funds, endowments, FoFs):**
- Full ILPA-compliant format required
- Capital account statement per LP per quarter
- Fee and expense disclosure per the ILPA Reporting Template (2025 update)
- LPAC-relevant items flagged separately

**Family office LPs (LATAM common):**
- Simplified format acceptable: Fund summary + portfolio table + top performers + watch list
- Monthly call sometimes preferred over written report — offer both
- Less granular fee disclosure expected (but available on request)
- Focus on narrative context over metric tables

**Mixed audience:**
- Use full ILPA format as default
- Add 1-paragraph executive summary at the top for LPs who will not read full report
- Consider separate one-pager for family office LPs alongside full institutional report
