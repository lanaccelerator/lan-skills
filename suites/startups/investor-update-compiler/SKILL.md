---
name: investor-update-compiler
description: >
  For STARTUP FOUNDERS reporting to investors. Use when a founder needs a monthly, quarterly
  (QoQ) or semi-annual (HoH) investor update for the cap table, prospect investors or a
  newsletter, in Suster/Lemkin format with a mandatory financial section (revenue, costs,
  burn, cash, runway). Spanish triggers: "armame el update a inversores", "reporte mensual
  para inversores", "update trimestral", "carta a los inversores de este mes". Reads KPIs,
  OKRs, financials and the previous update from the company brain or data room; the founder
  only adds the story. Drafts only, never sends. NOT for building the KPI system (use
  startup-metrics-okrs), a fund's LP report (use portfolio-reporter), the data room (use
  data-room-builder) or a daily or weekly internal recap (use daily-brief or all-hands-prep).
categories: ["startups", "fundraising", "communications"]
metadata:
  author: lan-accelerator
  version: "1.2"
  suite: startups
  complements: [startup-metrics-okrs, fundraising-agent]
license: MIT
---

# Investor Update Compiler

Compiles a monthly, quarterly or semi-annual investor update in the Suster ("Invest in Lines,
Not Dots") and Lemkin (SaaStr) tradition, adapted for LATAM founders with a mandatory financial
section. The skill brings the numbers from the company brain or data room; the founder adds the
story (what happened, why, how they read the trajectory). Garbage in, garbage out: the update
is only as good as the data room behind it.

**Use for:** month, quarter or half close; a material event (round closed, key hire, large
customer lost); a specific investor who asked for detail.
**Do not use when:** there is no organized KPI source (run startup-metrics-okrs first), or the
founder wants a promotional piece mid-raise (this skill puts honesty first).

## Input Gathering

Read the brain first (Step 1). Then ask, in ONE message, only for what is missing, with
defaults in brackets:

1. **Period and cadence** [last closed month; inferred per Cadence below]
2. **Audience** [cap_table] / hot_prospects / warm_prospects / newsletter
3. **Language** [language of the previous update, else Spanish]
4. **Data sources not in the brain:** KPIs, OKRs, monthly financials, customer list, investor list
5. **Founder story, 5-10 lines:** what happened, qualitative wins, lowlights, the 2 asks

If the story is missing, draft the update with `[FOUNDER: 2 lines on why X happened]`
placeholders rather than inventing narrative.

## Cadence

Selected by argument (`monthly`, `quarterly`, `semiannual`; also accepted:
`mensual`, `trimestral`, `semestral`, `Q3 2026`, `H1 2026`) or inferred:

1. Period named as a quarter (Q1-Q4, "tercer trimestre") -> quarterly.
2. Period named as a half (H1, H2, "primer semestre") -> semi-annual.
3. A month name -> monthly.
4. No period given: if the last closed month is a quarter end (Mar, Jun, Sep,
   Dec) AND the brain shows the previous update for this audience was
   quarterly, use quarterly; same logic for semi-annual (Jun, Dec). Otherwise
   monthly. State the inferred cadence in the first line of the output so the
   founder can override it.

Monthly is the default. For quarterly and semi-annual, read
[references/cadence.md](references/cadence.md): comparisons (QoQ, HoH, YoY), table columns,
flows summed vs stocks at period end, burn averaging, scoring last period's promises, and the
45-day window for quarterly cap-table updates.

## Workflow (9 steps)

### Step 1: Read and validate sources

Follow references/shared/company-brain-integration.md sections 1-3.

When the company brain is connected, read it first:
- `list_skills` / `get_skill`: the company's own update format wins.
- `search_brain` + `read_page`: KPI pages, OKRs for the period, monthly
  financials, customer list, investor list, the data room index (see
  data-room-builder), and the previous update for the same audience and
  cadence.
- `walk_graph` from the OKR pages to the meetings and decisions that explain
  the period (use them for storytelling prompts, not as invented narrative).

Without a brain, read the data room CSVs and MDs the founder points to.

Validate that:
- KPIs include the reporting period (every month in it for quarterly and semi-annual)
- OKRs have updated scoring
- Financials have the closed month (revenue, costs, cash, runway)
- Customers have updated status

If a number is missing or stale, do not invent it: mark it `[FALTA: <dato>]` in the draft, list
it at the top of the chat output, and continue. Financials are the exception for cap-table
updates: without revenue, costs and cash, deliver the draft as "not sendable" until filled.

### Step 2: Calculate deltas

AI-native companies: report usage or outcome revenue separately from contracted recurring
revenue, and gross margin after inference costs. Paid pilots are not ARR.

Monthly: for each KPI, current vs prior month, current vs quarterly target, current vs benchmark.
For financials: revenue MoM, net burn, runway in months.
For OKRs: updated scoring, identify the ones in red.

Quarterly and semi-annual: apply the comparisons in the Cadence table (QoQ or
HoH, YoY when data exists), sum flows and take stocks at period end, and
score the previous update's promises.

### Step 3: Identify 3 wins, 2 lowlights, 2 asks

Rules:
- Wins: must have a number behind them. If there is no number, it is not a win, it is vibe.
- Lowlights: each one with a concrete action plan, not just lament.
- Asks: specific, actionable, not generic.

3 wins, 2 lowlights, 2 asks is not an absolute rule but a calibration. If there are 4 real wins, include them. If only 2, do not inflate to 3 with filler.

### Step 4: Generate 3-line TL;DR

Line 1: how the period went in one sentence with the key number
Line 2: big win with data
Line 3: main ask

### Step 5: Structure the KPIs section

Table with 5-8 metrics maximum. More is overkill for the body (it goes in the appendix).

| KPI | Current | Prior month | Quarterly target | Status |
|---|---|---|---|---|

Status: green, yellow, red against target.

### Step 6: Structure the financial section

This section is mandatory, not optional. Investors want to see:
- Revenue for the month (MRR/ARR)
- Total costs for the month (categorized: payroll, marketing, infra, other)
- Net burn for the month
- Cash balance at close
- Runway in months at current pace

Example:

```
Financials April 2026
- Revenue: $95K (+19% MoM)
- Total costs: $105K (payroll $60K, marketing $38K, infra $6K, other $1.5K)
- Net burn: -$10K
- Cash balance: $327K
- Runway at current net burn: ~32 months
- Stress case (revenue flat, costs +30%, net burn ~$42K): ~8 months

Capital need: opening Seed in Q3 2026 to avoid entering critical runway.
```

### Step 7: Adapt content by audience

| Audience | Wins | Lowlights | Financials | Asks |
|---|---|---|---|---|
| Cap table | Detailed | Yes, with plan | Complete | Specific, includes tactical help |
| Hot prospects | Detailed | Minimal | Summary (revenue, runway) | General (intros, feedback) |
| Warm prospects | High-level | No | Summary | No, or very general |
| Newsletter | Highlights | No | Revenue only | No |

### Step 8: Full output

Markdown ready to paste into email, Slack or DocSend, in this order: Subject
(`[Company] - [Period] Update`, never just "Monthly update"), greeting, 3-line TL;DR, KPIs
table, Financials, Wins, Lowlights, Asks, Looking ahead, closing and signature, then
"Appendices available on request" (12-month KPIs, cohort retention, scored OKRs). Filled
examples in [TEMPLATES.md](TEMPLATES.md).

### Step 9: File in the brain

Follow references/shared/company-brain-integration.md section 4. When the
brain is connected, `create_page` the final draft at
`investors/updates/<YYYY-MM>-<cadence>-<audience>` (or the brain's existing
convention), linking the KPI, OKR and financial pages used. The next update
reads it to score promises. If an email connector is connected, create the
email as a DRAFT addressed to the investor list; never send. Without a brain,
save the draft to `./brain-outbox/investor-updates/`.

Quarterly and semi-annual output: see the Spanish quarterly example in
[TEMPLATES.md](TEMPLATES.md).

---

## Output Format

ALWAYS use this exact template structure. Do not change section headings, table columns, or
field order. Fill every [bracketed placeholder] with real analysis from the user's startup.
Monthly and quarterly filled examples (Trezo, a hypothetical company) are in
[TEMPLATES.md](TEMPLATES.md).

The default output is email-ready markdown. When the update is sent as a designed HTML email,
PDF or one-page dashboard, apply references/shared/deck-design-rules.md: numbers big and
sourced, one accent color, charts with the real series, no decoration.

---

## Sources

- Suster, M. (2010). *Invest in Lines, Not Dots*. Both Sides of the Table.
- Lemkin, J. (2021). *The Right Way to Send Monthly Investor Updates*. SaaStr.
- Mulligan, B. *Every Seed Stage Founder Should Send Monthly Investor Updates*. LaunchKit.
- Khadjavi, R. (2017). *13 Investor Update Emails That Turned Our Dots Into A Line*. Shoelace.
- NVCA Model Legal Documents, *Investors' Rights Agreement* (information rights: quarterly and annual financial statements): https://nvca.org/model-legal-documents/
- Doerr, J. (2018). *Measure What Matters*. Portfolio (quarterly OKR scoring).
- references/shared/company-brain-integration.md - brain read/write

## Anti-patterns this skill rejects

- Updates with zero financial numbers (revenue, costs, runway are mandatory for cap table)
- Lowlights without action plan ("things went poorly and we are figuring it out" is not a plan)
- Vague asks ("help with introductions" without specifying who)
- Wins without data ("there was good momentum" is not a win)
- Generic subject lines ("Monthly update")
- Updates over 3 pages (1 page + appendix is the rule)
- Copy-pasting wins from the prior month
- Cheerleading tone ("we're crushing it" when the numbers say otherwise)

## Tone

Direct, honest, no cheerleading. If the month was bad, the update says so and shows the action plan. Investors can tell an authentic update from a polished one and prefer the first. Whoever polishes loses credibility for the next round.

## Regional variants

- LATAM: use DD/MM/YYYY date format, USD for revenue (not local currency unless relevant), more personal tone in greeting and closing
- US: MM/DD/YYYY format, USD, more direct and bullet-heavy tone
- ES with mixed LATAM/US audience: Spanish first, link to EN version at the end
