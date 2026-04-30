---
name: startup-metrics-okrs
description: Build a complete startup measurement system in a single run — North Star Metric + 3-5 stage-appropriate KPIs + 1-3 quarterly OKRs with scoreable Key Results (0.0-1.0). Use this skill when a founder needs to define or audit their entire measurement and goal-setting stack in an aligned way, not just one piece. Replaces the need to run KPIs and OKRs as separate exercises.
categories: ["startups", "planning", "kpis", "okrs"]
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: startups
  complements: [unit-economics-calculator, fundraising-readiness-audit, investor-update-compiler]
license: MIT
---

# Startup Metrics & OKRs

Unified measurement system for founders, based on frameworks from Doerr, Grove, Sequoia, a16z, and 2026 SaaS benchmarks.

## When to Use This Skill

- Founder is defining their measurement system for the first time
- Founder changed stage (pre-revenue → post-revenue, post-revenue → post-PMF) and needs to reformulate
- Founder is assembling a data room and needs aligned metrics
- Founder is preparing a Seed or Series A round and investors will ask
- End of quarter: closing OKR scoring and formulating the next one

## When NOT to Use

- Only need a unit economics calculation: use `unit-economics-calculator`
- Only need to audit fundraising readiness: use `fundraising-readiness-audit`
- Founder wants to generate the investor update: use `investor-update-compiler`

---

## Required Inputs

```
Business model: [one line, e.g., "B2B SaaS for Paraguayan SMBs"]
Stage: [pre-revenue / early post-revenue / post-PMF]
Current MRR (if applicable): [USD]
Current customers (if applicable): [number]
Biggest risk this quarter: [one line]
Biggest opportunity this quarter: [one line]
KPIs already being tracked (if any): [list]
```

## Workflow (8 steps)

### Step 1: Identify measurement segment by stage

| Stage | Focus | Metrics that matter |
|---|---|---|
| Pre-revenue | Validation | Discovery interviews, Sean Ellis test, landing conversion |
| Early post-revenue (0 to 1M ARR) | Growth + retention | MRR MoM, logo churn, cohort retention, CAC by channel |
| Post-PMF (1M+ ARR) | Efficiency + scale | NRR, CAC payback, Rule of 40, LTV:CAC, gross margin |

Anti-pattern to reject: if a pre-revenue founder asks for LTV:CAC, respond that it is premature. LTV in pre-revenue is fiction.

### Step 2: Define the North Star Metric

NSM test:
1. If the metric drops 15% in a week, does the entire organization investigate? If only one team would notice, it is not an NSM, it is a departmental KPI.
2. Does it capture value for the customer AND the business simultaneously? Revenue alone does NOT pass this test.
3. Is it durable for at least 12 months? If it will change next quarter, it is an OMTM, not an NSM.

Reference cases (LATAM):
- Nubank: monthly transactions per customer
- Mercado Libre: completed shipments per active seller
- Early Rappi (pre-PMF): orders in the first 20 days per new user
- Mature Rappi: recurring orders per user per month

### Step 3: Define 3-5 KPIs by stage

Rules:
- KPI must be observable at least weekly
- Mix of leading (predictive) and lagging (outcome)
- Each KPI with a referenced 2026 benchmark

**Typical pre-revenue KPIs:**
- Discovery interviews per week (target: 5-10)
- Sean Ellis test % "very disappointed" (target: 40%+)
- Landing page conversion (benchmark: 2-5% for B2B SaaS)
- Time to first paying customer (target: shrinking month over month)

**Typical early post-revenue KPIs:**
- MRR and MoM growth (benchmark: 10-15% MoM at seed)
- Monthly logo churn (benchmark: under 5%, target under 3%)
- Cohort retention curves (6+ month cohorts at 70%+ active)
- CAC payback by channel (benchmark: under 12 months)
- NPS (benchmark: above 30 healthy, above 40 strong)

**Typical post-PMF KPIs:**
- NRR (benchmark: 110%+ healthy, 120%+ top tier)
- LTV:CAC (benchmark: 3:1 minimum, 4-5:1 top quartile)
- CAC payback (benchmark: under 12 months)
- Rule of 40 (growth + EBITDA margin >= 40)
- Gross margin (benchmark: 70%+)

### Step 4: Cross-check between NSM and KPIs

Each KPI must be either an input that moves the NSM or an output that reflects it. If a KPI does not connect to the NSM, remove or replace it.

Example Trezo (early post-revenue):
- NSM: active paying customers with successful recurring billing in the last month
- KPI MRR: output of the NSM
- KPI Logo churn: direct input (more churn lowers the NSM)
- KPI cohort retention: input that predicts future churn
- KPI CAC payback: efficiency to scale the NSM

### Step 5: Identify 1-3 Quarterly Objectives

Doerr's rules:
- 3-5 OKRs maximum. More is noise.
- Quarterly, not annual.
- Qualitative, inspirational, one line.
- Decoupled from bonus.
- Public to the entire org.

Test for each Objective:
- Is it a trajectory change, not monitoring? If it is "maintain X," it is a KPI, not an Objective.
- Did you write it in less than 5 minutes? If yes, it is probably not well thought out.
- Does it fit on one line? If not, it is not crisp.

### Step 6: For each Objective, generate 3-5 Key Results

KR rules:
- Quantitative, scoreable 0.0 to 1.0
- Mix of inputs and outputs
- If all KRs are achieved, the Objective is achieved. If not, the KRs were wrong.

Test for each KR:
- **Ambition test:** If you think you will hit 1.0 easily, it is not ambitious. Reformulate.
- **Task test:** If it says "launch X" or "hire Y," it is not a KR, it is a task. Reformulate as outcome: "X used by N users," "Y onboarded and delivering Z."
- **Internal test:** If it is in internal team terms (e.g., "launch Foo 4.1"), reformulate as impact.

### Step 7: Apply scoring framework

Standard Google scale:
- 0.7 to 1.0 = delivered (green)
- 0.4 to 0.6 = made progress but not enough (yellow)
- 0.0 to 0.3 = did not get there (red)

If the team systematically scores 1.0, the KRs were too easy. Reformulate next round.

### Step 8: Produce structured output

Output format (markdown table format, ready for Notion or Sheets):

```
## Metrics System - [Company] - [Month Year]

### North Star Metric
[Metric] = [operational definition]

### KPIs ([Stage])

| KPI | Current | Target | Benchmark 2026 | Cadence | Owner |
|---|---|---|---|---|---|
| ... | ... | ... | ... | weekly | ... |

### OKRs [Quarter Year]

#### Objective 1: [one line]
| KR | Target | Current | Score |
|---|---|---|---|
| ... | ... | ... | 0.0-1.0 |

#### Objective 2: [one line]
[...]

### Anti-patterns detected and removed
- [e.g., "Launch feature X" → reformulated as "X used by 50% of DAU in its first week"]
```

---

## Full example (Trezo case)

Input:

```
Model: B2B SaaS for recurring billing for Paraguayan SMBs
Stage: early post-revenue
MRR: $95K
Customers: 47
Q2 risk: churn in price-sensitive SMBs
Q2 opportunity: close first enterprise customer
Current KPIs: MRR, customers, churn rate, NPS
```

Output:

```
## Metrics System - Trezo - April 2026

### North Star Metric
Active paying customers with successful recurring billing in the last month
(captures value delivered to the SMB and Trezo's revenue simultaneously)

### KPIs (early post-revenue)

| KPI | Current | Q2 Target | Benchmark 2026 | Cadence | Owner |
|---|---|---|---|---|---|
| MRR | $95K | $130K | 10-15% MoM at seed | weekly | CEO |
| Paying customers | 47 | 65 | N/A absolute | weekly | Sales |
| Monthly logo churn | 4.4% | 2.5% | under 3% healthy | weekly | CSM |
| NPS | 42 | 45 | above 40 strong | monthly | CSM |
| CAC payback | 14 mo | 11 mo | under 12 healthy | monthly | Sales |
| NRR | 108% | 115% | 110%+ healthy | monthly | CSM |

### OKRs Q2 2026

#### Objective 1: Close first enterprise customer and validate segment
| KR | Target | Current | Score |
|---|---|---|---|
| 1 enterprise signed with ACV >$20K | 1 | 0 (negotiating) | 0.5 |
| 3 enterprise leads in active pipeline | 3 | 2 | 0.7 |
| Enterprise pricing validated with 5 prospects | 5 | 3 | 0.6 |

#### Objective 2: Stop churn in price-sensitive SMBs
| KR | Target | Current | Score |
|---|---|---|---|
| Logo churn under 2.5% in June | 2.5% | 4.4% | 0.0 |
| Launch $99/month tier with 10 customers | 10 | 0 | 0.0 |
| Reduce CAC payback to 11 months | 11 | 14 | 0.3 |

#### Objective 3: Accelerate pipeline for Q3 Seed round
| KR | Target | Current | Score |
|---|---|---|---|
| 15 conversations with LATAM VCs | 15 | 4 | 0.3 |
| 1 VC lead with term sheet under exploration | 1 | 0 | 0.0 |
| MRR of $130K by 06/30 | $130K | $95K | 0.5 |

### Anti-patterns detected and removed
- "Launch $99 tier" reformulated as "Launch $99/month tier with 10 customers" (KR must be outcome, not task)
- "Close Seed round" discarded (not controllable in one quarter by founder alone)
- KR "MRR of $130K" kept but flagged as risk given current $95K
```

---

## Sources

- Doerr, J. (2018). *Measure What Matters*. Chapters on OKRs, scoring, cadence.
- Grove, A. (1983). *High Output Management*. Origin of OKRs as iMBO at Intel.
- Sequoia (2024). *The Sequoia Pitch Memo*. Metrics VCs measure.
- Bessemer (2026). *State of the Cloud Report*. SaaS benchmarks.
- ChartMogul (2026). *SaaS Benchmarks Report*. Stage-by-stage data.

## Anti-patterns this skill rejects

- LTV in pre-revenue (it is fiction)
- More than 5 OKRs per quarter
- KRs phrased as to-dos instead of outcomes
- North Star that only reflects revenue (does not capture customer value)
- KPIs without comparison benchmark
- Lagging KPIs without a leading KPI that predicts them

## Tone

Direct, no cheerleading, identifies anti-patterns explicitly, references benchmarks rather than opinions.
