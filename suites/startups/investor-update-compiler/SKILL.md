---
name: investor-update-compiler
description: Produce a complete monthly investor update in Suster/Lemkin format with a financial section (revenue, costs, runway). Use this skill when a founder needs to send a monthly update to prospect investors, cap table, or newsletter in under 15 minutes. Reads the founder's data room (KPIs, OKRs, financials, customers, investors) and produces a draft that only needs the founder's qualitative storytelling.
categories: ["startups", "fundraising", "communications"]
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: startups
  complements: [startup-metrics-okrs, fundraising-agent]
license: MIT
---

# Investor Update Compiler

Monthly investor update compiler based on Mark Suster (Upfront Ventures, "Invest in Lines, Not Dots"), Jason Lemkin (SaaStr), and Brendan Mulligan. Adapted for LATAM founders with a mandatory financial section.

## Workflow premise

The founder already has a functional data room with up-to-date KPIs, OKRs, financials, customers, and investors. This skill compiles the update from that data room. The quality of the update depends on the quality of the data room. Garbage in, garbage out.

The founder adds the qualitative storytelling: context of what happened, why, and how they feel about the trajectory. The skill adds the quantitative substance. The combination kills "vibe feeling" and produces an honest update.

## When to Use

- Month close and an update needs to go out (minimum monthly cadence)
- An important event needs to be communicated (round closed, critical hire, churn of a large customer)
- Quarterly newsletter to prospect investors
- Specific update for someone who asked for details

## When NOT to Use

- Founder does not have an organized data room: first run `startup-metrics-okrs` and assemble the sources
- Only a short email is needed (1-2 paragraphs): better written by hand
- Founder is in the middle of fundraising and wants something super-promotional: this skill prioritizes honesty over marketing

## Required Inputs

```
Company: [name]
Reporting month: [month year]
Stage: [pre-seed / seed / Series A]
Audience: [cap_table / hot_prospects / warm_prospects / newsletter]
Language: [Spanish / English]

Data sources:
- Historical KPIs: [path or URL]
- Current quarter OKRs: [path or URL]
- Monthly financials: [path or URL]
- Customers list: [path or URL]
- Investors list (for CC): [path or URL]

Founder storytelling (free text):
- What happened this month in 5-10 lines: [text]
- Qualitative wins (decisions, hires, momentum): [text]
- Qualitative lowlights (challenges, doubts): [text]
- Specific asks: [list]
```

## Workflow (8 steps)

### Step 1: Read and validate sources

Read the data room CSVs and MDs. Validate that:
- KPIs include the reporting month
- OKRs have updated scoring
- Financials have the closed month (revenue, costs, cash, runway)
- Customers have updated status

If anything is missing, flag it and ask the founder to update before continuing.

### Step 2: Calculate deltas

For each KPI: current vs prior month, current vs quarterly target, current vs benchmark.
For financials: revenue MoM, net burn, runway in months.
For OKRs: updated scoring, identify the ones in red.

### Step 3: Identify 3 wins, 2 lowlights, 2 asks

Rules:
- Wins: must have a number behind them. If there is no number, it is not a win, it is vibe.
- Lowlights: each one with a concrete action plan, not just lament.
- Asks: specific, actionable, not generic.

3 wins, 2 lowlights, 2 asks is not an absolute rule but a calibration. If there are 4 real wins, include them. If only 2, do not inflate to 3 with filler.

### Step 4: Generate 3-line TL;DR

Line 1: how the month is going in one sentence with the key number
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
- Runway at current pace: ~32 months (assuming stable burn)
- Base-case runway (burn 30% higher): ~12 months

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

Produce the update in markdown ready to copy to email/Slack/Docsend with the format:

```
Subject: [Company] - [Month Year] Update

[Greeting]

[3-line TL;DR]

KPIs [month]
[table]

Financials [month]
[bullets with numbers]

Wins
[bullets with data]

Lowlights
[bullets with plan]

Asks
[specific bullets]

Looking ahead [next month]
[bullets]

[Closing + signature]

---

Appendices available on request:
- Detailed KPIs (12 months)
- Cohort retention
- Scored OKRs
```

---

## Full example (Trezo case, cap table audience, April 2026)

```
Subject: Trezo - April 2026 Update

Hi [Name],

TL;DR: We closed April with $95K MRR (+19% MoM), an all-time record. We launched the WhatsApp Business integration, already active in 12 customers with +18% in orders processed. Looking for 3 intros to Heads of Operations at regional logistics companies to validate the enterprise segment.

KPIs April 2026

| KPI | Current | Mar 2026 | Q2 Target | Status |
|---|---|---|---|---|
| MRR | $95K | $80K | $130K | yellow |
| Paying customers | 47 | 45 | 65 | yellow |
| Monthly logo churn | 4.4% | 4.7% | 2.5% | red |
| NPS | 42 | 41 | 45 | green |
| CAC payback | 14 months | 13 months | 11 months | red |
| NRR | 108% | 103% | 115% | yellow |

Financials April 2026
- Revenue: $95K (+19% MoM)
- Total costs: $105.2K (payroll $60K, marketing $38K, infra $5.7K, other $1.5K)
- Net burn: -$10.2K
- Cash balance at close: $327.3K
- Runway at current pace: ~32 months (assuming stable burn)
- Base-case runway (no new capital and growth flat): ~14 months

Capital plan: opening Seed $1.5M round in June 2026 to close before September.

Wins
1. MRR record: closed at $95K, +19% MoM. Driver was 4 new premium customers (Pro tier) and one upgrade from Starter to Pro.
2. Launched WhatsApp Business integration on April 14. 12 customers activated it in their first week. They report +18% in orders processed vs the previous flow.
3. Confirmed the hire of María González as Head of Customer Success (ex-Rappi). Starts May 5.

Lowlights
1. Logo churn rose to 4.4% (vs 2.5% target). 2 SMB customers left due to price sensitivity. Plan: launching $99/month tier on May 10 to retain this segment. If it works, reduces churn 1-1.5 pts in 60 days.
2. CAC payback rose to 14 months (vs 11 target). Driver: LinkedIn ads cost rose 40% MoM. Paused the channel on April 25, redirecting that budget to the referral program.

Asks
1. Intros to Heads of Operations at regional logistics companies with 50+ drivers. Validating enterprise tier and need 2 more conversations.
2. Pricing feedback on the $99 tier before May 7. Sending a separate draft to whoever wants to review.

Looking ahead May 2026
- Close 5 new customers above $200/month
- Launch $99 tier relaunch on 05/10
- Onboard María (CSM)
- Begin active Seed pipeline (15 conversations target Q2)

Sofía Ramírez
CEO, Trezo

---

Appendices on request: 12-month KPIs, April cohort retention, Q2 OKRs with detailed scoring.
```

---

## Sources

- Suster, M. (2010). *Invest in Lines, Not Dots*. Both Sides of the Table.
- Lemkin, J. (2021). *The Right Way to Send Monthly Investor Updates*. SaaStr.
- Mulligan, B. *Every Seed Stage Founder Should Send Monthly Investor Updates*. LaunchKit.
- Khadjavi, R. (2017). *13 Investor Update Emails That Turned Our Dots Into A Line*. Shoelace.
- Levy, J. *Investor Relations For Startups - The Data*. Zelkova Ventures (the 200% statistic).

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
