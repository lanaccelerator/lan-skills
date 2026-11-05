# startup-kpi-automator: Output Template

**ALWAYS use this exact template structure.** This file shows a filled example
for "B2B SaaS, early revenue, $180k ARR, Seed stage." Replace all values with
the user's actual data.

---

## Example: B2B SaaS, Seed Stage ($180k ARR)

**Company:** InvoiceFlow (B2B invoicing automation for LATAM SMBs)
**Model:** SaaS | **Stage:** Seed | **ARR:** $180k | **MRR:** $15,000
**Goal:** Fundraising readiness

*InvoiceFlow is hypothetical: company numbers and events are invented for illustration. Benchmarks carry their source or are marked directional.*

---

## 1. KPI Definitions Table

| KPI | Formula | Current Value | Target (Seed) | Status |
|-----|---------|--------------|---------------|--------|
| MRR | Sum of recurring subscription revenue for the month (annual contracts ÷ 12) | $15,000 | $10k-$100k | On Track |
| MRR Growth (MoM) | (MRR this month - MRR last month) ÷ MRR last month | 8% | >10% *(directional floor at seed)* | At Risk |
| ARR | MRR × 12 | $180,000 | $120k-$1.2M | On Track |
| Logo Churn (monthly) | Customers lost ÷ starting customers | 2.5% | <3% *(directional)* | On Track |
| NRR (annual) | (Start MRR + expansion - contraction - churn) ÷ start MRR | 104% | >100% *(directional)* | On Track |
| CAC (fully-loaded) | Total S&M spend ÷ new customers acquired | $1,200 | n/a *(compare to LTV)* | Needs tracking |
| LTV | ARPU × gross margin % ÷ monthly churn rate | $5,760 | n/a *(compare to CAC)* | Needs tracking |
| LTV/CAC | LTV ÷ CAC | 4.8× | ≥3:1 *(David Skok)* | On Track |
| CAC Payback | CAC ÷ (ARPU × gross margin %) | 7 months | <12 months *(directional)* | On Track |
| Gross Margin | (Revenue - COGS) ÷ Revenue | 72% | ~70% avg at $1-25M ARR *(Bessemer, Scaling to $100M, 2021)* | On Track |
| Runway | Cash ÷ net monthly burn | 14 months | >12 months *(directional; start a raise with 6+ months left)* | On Track |

**LATAM Context Box:**
> CAC payback: 7 months on gross margin is inside the under-12-month range that reads as strong at seed *(LATAM, directional)*. Lower LATAM sales salaries help; prove it holds by channel.
>
> NRR at 104%: above 100% is a strong seed signal for SMB-heavy LATAM SaaS *(LATAM, directional)*. Public SaaS median is 110% *(US-sourced benchmark, Clouded Judgement, 23 Oct 2026)*.
>
> Growth at 8% MoM is the weak number: Paul Graham's YC bar is 5-7% per week *(US-sourced benchmark, Startup = Growth, 2012)*.

---

## 2. Dashboard Structure

### Investor Update (Monthly, share with all investors)

| Metric | Why It's in This View |
|--------|-----------------------|
| MRR + MoM growth % | Top-line health; matches Bessemer Cloud 100 investor expectation |
| Logo churn | Customer retention signal |
| NRR | Expansion revenue signal; primary PMF indicator for LATAM investors |
| Runway | Financial health |
| New customers added | Growth velocity |

### Operations Dashboard (Weekly, internal only)

| Metric | Why It's in This View |
|--------|-----------------------|
| New trial starts | Top-of-funnel |
| Trial-to-paid conversion rate | Activation health |
| Support ticket volume | Product quality signal |
| Feature adoption (by segment) | PMF depth |
| Churn at-risk accounts | Retention early warning |

---

## 3. Product Analytics Layer

**Tier:** A (PostHog Cloud, free tier). InvoiceFlow sends ~180,000 events per month,
well under the 1M free events. Self-hosted Umami stays on the marketing site only.

**Activation event:** "un usuario está activado cuando envía su primera factura timbrada
dentro de 7 días del signup". Today: 41% of signups activate (company data).

### Events to instrument (12)

| Event | Fires when | Feeds KPI |
|-------|-----------|-----------|
| `account_created` | Signup completed | Trial starts |
| `company_connected` | First RFC/tax id and certificate uploaded | Activation funnel step 1 |
| `invoice_sent` | First and every invoice issued | Activation, core usage |
| `invoice_paid` | Payment matched to an invoice | Customer value delivered |
| `teammate_invited` | Invite sent | Expansion signal |
| `entity_added` | Second legal entity added | NRR driver (multi-entity) |
| `plan_upgraded` | Plan change up | Expansion MRR |
| `plan_downgraded` | Plan change down | Contraction MRR |
| `subscription_cancelled` | Cancel confirmed | Logo churn |
| `ai_extraction_run` | AI reads a supplier invoice PDF | LLM cost per unit |
| `ai_extraction_corrected` | User edits an AI-extracted field | AI task success rate |
| `error_shown` | User sees an error screen | Support load, churn risk |

### Capabilities on

| Capability | Set up for | Owner | First readout |
|------------|-----------|-------|---------------|
| Session replay + AI summaries | Signups that do not reach `invoice_sent` in 7 days | Product lead | Monday: 5 replays, 3 blockers written to the brain |
| Experiments | Onboarding: certificate upload before vs after the first draft invoice | Product lead | After 400 signups per variant, or 4 weeks |
| Feature flags | New multi-entity dashboard to 10% of accounts | CTO | Roll out to 100% if error rate stays under 1% |
| Survey on `subscription_cancelled` | "¿Qué te hizo cancelar?" with 5 options + free text | CEO | Monthly, in the churn review |
| LLM analytics | Cost, latency p50/p95 and correction rate per model on `ai_extraction_run` | CTO | Weekly; quality judge on a 50-call sample with the cheapest model class (Haiku) |
| Data warehouse | Stripe + HubSpot joined to product events by account id | CEO | Which week-1 behavior predicts paying (first query) |
| Error tracking | Errors linked to the session replay and the account | CTO | Daily triage of errors on paying accounts |
| PostHog MCP | Read-only key, so Claude answers "qué usan los clientes que expanden?" | CEO | Used in the weekly all-hands prep |

**Current AI unit cost:** $0.011 per extraction, p95 latency 6.8 s, 7% of fields corrected
by users (company data). Gross margin after inference: 72% (already in the KPI table).

### Registro (where it gets written)

| What | Where in the company brain | Rule |
|------|----------------------------|------|
| Each KPI definition and formula | One page per KPI | Edited only with a dated note of what changed |
| Each experiment | One page: hypothesis, variants, dates, result, decision | Written win or lose, within 48 h of closing |
| Weekly metric readout | Weekly page, linked from the all-hands | Monday before 10:00 |

> Midan TODO, anoten TODO, documenten TODO. If a number moved and nobody wrote why, the
> next investor question has no answer.

---

## 4. Investor Report Template (Monthly Email)

```
Subject: InvoiceFlow Update, [Month Year]

MRR: $15,000 (+8% MoM)
  Below our 10% MoM target. Plan in Lowlights.

Logo Churn: 2.5% monthly (30% annualized)
  Under our 3% ceiling. Watching weekly.

NRR: 104%
  Expansion from multi-entity customers covers churn.

Runway: 14 months at current burn.

HIGHLIGHTS:
• Signed 3 enterprise pilot agreements (Pemex supplier network), potential for
  high-NRR contract tier
• Partnership with Mexican tax authority SAT on e-invoicing API reduces
  implementation cost by 40%
• NPS: 67

LOWLIGHTS:
• MoM growth decelerated from 12% to 8%, tied to SDR departure. Hiring
  replacement now.
• Integration bug with Contpaq (Mexico's top accounting software) delayed 2
  enterprise closes. Fixed in v2.3.

ASK THIS MONTH:
• Introductions to 2 LATAM Series A funds that lead B2B SaaS rounds
• Referral to 1 mid-market CFO who manages multi-entity invoicing (pilot
  candidate)
```

---

## 5. LATAM Context Summary

| Benchmark | US Standard | LATAM Adjusted | Direction |
|-----------|-------------|----------------|-----------|
| CAC payback "good" | <12-18 months *(directional)* | <12 months *(directional)* | LATAM salary advantage |
| Seed growth bar | 5-7%/week *(Paul Graham, 2012)* | 10%+ MoM floor *(directional)* | Smaller single-country markets |
| NRR signal | 110% public SaaS median *(Clouded Judgement, Oct 2026)* | >100% at seed *(directional)* | Lower expansion in SMB |
| Investor reporting cadence | Monthly | Monthly to VCs, quarterly to angels and family offices *(directional)* | Different audience |

---

## 6. Next Steps

1. **Fix MoM growth deceleration (next 30 days):** MoM at 8% is below the
   10% MoM floor. Hire SDR replacement within 2 weeks. Target: return
   to 10%+ by month 3. This is the number blocking Series A conversations.

2. **Instrument CAC fully-loaded (next 2 weeks):** Currently tracking S&M spend
   but not allocating sales ops and founder time. True fully-loaded CAC may be
   2-3× the current estimate. Calculate it before any investor meeting.

3. **Set up NRR cohort tracking (next 30 days):** NRR at 104% is strong but
   you cannot prove it without cohort data. Use ChartMogul or a Stripe + Google
   Sheets setup. Series A investors ask for cohort charts.

4. **Separate investor update from operations dashboard (next 2 weeks):** The
   5 investor-facing metrics should be auto-populated in a 1-page Notion page
   every Monday. Stop sending unformatted spreadsheet attachments.

5. **Track Rule of 40 starting now (even if negative):** At 8% MoM growth and
   likely negative EBITDA, Rule of 40 is probably negative, and that's expected at
   Seed. Tracking it now shows investors you understand the metric before they
   ask. Series A conversations will include this question.

6. **Instrument the 12 events and the activation definition (this week):** Install
   PostHog, ship the events list in section 3, write the activation sentence in the
   brain, and watch 5 session replays of signups who stalled before `invoice_sent`.
   Today 59% of signups never reach first value; that is a bigger lever than any ad.
