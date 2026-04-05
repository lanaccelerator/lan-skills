# startup-kpi-automator — Output Template

**ALWAYS use this exact template structure.** This file shows a filled example
for "B2B SaaS, early revenue, $180k ARR, Seed stage." Replace all values with
the user's actual data.

---

## Example: B2B SaaS — Seed Stage ($180k ARR)

**Company:** InvoiceFlow (B2B invoicing automation for LATAM SMBs)
**Model:** SaaS | **Stage:** Seed | **ARR:** $180k | **MRR:** $15,000
**Goal:** Fundraising readiness

---

## 1. KPI Definitions Table

| KPI | Formula | Current Value | Target (Seed) | Status |
|-----|---------|--------------|---------------|--------|
| MRR | Sum of all active subscription revenue ÷ 12 | $15,000 | $10k–$100k | On Track |
| MRR Growth (MoM) | (MRR this month - MRR last month) ÷ MRR last month | 8% | >10% *(Bessemer)* | At Risk |
| ARR | MRR × 12 | $180,000 | $120k–$1.2M | On Track |
| Logo Churn (monthly) | Customers lost ÷ starting customers | 2.5% | <3% *(Bessemer Seed)* | On Track |
| NRR (annual) | (Start MRR + expansion - contraction - churn) ÷ start MRR | 104% | >100% *(YC/Carta)* | On Track |
| CAC (fully-loaded) | Total S&M spend ÷ new customers acquired | $1,200 | — *(compare to LTV)* | Needs tracking |
| LTV | ARPU × gross margin % ÷ monthly churn rate | $5,760 | — *(compare to CAC)* | Needs tracking |
| LTV/CAC | LTV ÷ CAC | 4.8× | >2:1 *(a16z Seed)* | On Track |
| CAC Payback | CAC ÷ (ARPU × gross margin %) | 7 months | <18 months *(Bessemer)* | On Track |
| Gross Margin | (Revenue - COGS) ÷ Revenue | 72% | >65% *(Bessemer Seed)* | On Track |
| Runway | Cash ÷ net monthly burn | 14 months | >12 months *(YC)* | On Track |

**LATAM Context Box:**
> CAC payback: 12–18 months is "good" *(US-sourced benchmark, Bessemer Cloud Index)*
> CAC payback in LATAM: 6–12 months typical; 60% of Brazilian SaaS recover CAC in <6 months *(LATAM, Cuantico 2026)* — LATAM structural advantage. InvoiceFlow's 7-month payback is strong even by US standards and exceptional for LATAM.
>
> NRR at 104%: top-quartile for LATAM Seed. LATAM investors weight NRR as the primary PMF signal. This number will get you into first meetings *(LATAM, LAVCA 2025)*.

---

## 2. Dashboard Structure

### Investor Update (Monthly — share with all investors)

| Metric | Why It's in This View |
|--------|-----------------------|
| MRR + MoM growth % | Top-line health; matches Bessemer Cloud 100 investor expectation |
| Logo churn | Customer retention signal |
| NRR | Expansion revenue signal; primary PMF indicator for LATAM investors |
| Runway | Financial health |
| New customers added | Growth velocity |

### Operations Dashboard (Weekly — internal only)

| Metric | Why It's in This View |
|--------|-----------------------|
| New trial starts | Top-of-funnel |
| Trial-to-paid conversion rate | Activation health |
| Support ticket volume | Product quality signal |
| Feature adoption (by segment) | PMF depth |
| Churn at-risk accounts | Retention early warning |

---

## 3. Investor Report Template (Monthly Email)

```
Subject: InvoiceFlow Update — [Month Year]

MRR: $15,000 (+8% MoM)
  — Below Bessemer Cloud 100 median of 10% MoM for Seed. Addressing in Próximos Pasos.

Logo Churn: 2.5% monthly (30% annualized)
  — At YC benchmark of <3% monthly. Watch closely — above 3% is disqualifying.

NRR: 104%
  — Above 100% YC floor. Top-quartile for LATAM Seed (LAVCA 2025).

Runway: 14 months at current burn.

HIGHLIGHTS:
• Signed 3 enterprise pilot agreements (Pemex supplier network) — potential for
  high-NRR contract tier
• Partnership with Mexican tax authority SAT on e-invoicing API reduces
  implementation cost by 40%
• NPS: 67 (top quartile for B2B SaaS per a16z)

LOWLIGHTS:
• MoM growth decelerated from 12% to 8% — tied to SDR departure. Hiring
  replacement now.
• Integration bug with Contpaq (Mexico's top accounting software) delayed 2
  enterprise closes. Fixed in v2.3.

ASK THIS MONTH:
• Introduction to OpenView Partners (expansion-stage SaaS focus, LATAM presence)
• Referral to 1 mid-market CFO who manages multi-entity invoicing (pilot
  candidate)
```

---

## 4. LATAM Context Summary

| Benchmark | US Standard | LATAM Adjusted | Direction |
|-----------|-------------|----------------|-----------|
| CAC payback "good" | 12–18 months *(Bessemer)* | 6–12 months *(Cuantico 2026)* | LATAM advantage |
| Seed MoM growth floor | 20–30% *(YC)* | 15–20% *(LATAM, LAVCA 2025)* | LATAM discount |
| NRR for top-quartile Seed | >110% *(Carta)* | >100% signals PMF *(LAVCA 2025)* | Lower ceiling |
| LP reporting cadence | Monthly | Quarterly for family offices *(LAVCA 2025)* | Different audience |

---

## 5. Próximos Pasos

1. **Fix MoM growth deceleration (next 30 days):** MoM at 8% is below the
   10% Bessemer Seed floor. Hire SDR replacement within 2 weeks. Target: return
   to 10%+ by month 3. This is the number blocking Series A conversations.

2. **Instrument CAC fully-loaded (next 2 weeks):** Currently tracking S&M spend
   but not allocating sales ops and founder time. True fully-loaded CAC may be
   2–3× the current estimate. Calculate it before any investor meeting.

3. **Set up NRR cohort tracking (next 30 days):** NRR at 104% is strong but
   you cannot prove it without cohort data. Use ChartMogul or a Stripe + Google
   Sheets setup. LATAM investors increasingly require cohort charts.

4. **Separate investor update from operations dashboard (next 2 weeks):** The
   5 investor-facing metrics should be auto-populated in a 1-page Notion page
   every Monday. Stop sending unformatted spreadsheet attachments.

5. **Track Rule of 40 starting now (even if negative):** At 8% MoM growth and
   likely negative EBITDA, Rule of 40 is probably negative — that's expected at
   Seed. Tracking it now shows investors you understand the metric before they
   ask. Series A conversations will include this question.
