# LATAM and AI-Era Context: KPI System

KPI-specific adjustments for startup-kpi-automator. Apply them to every US-sourced
benchmark in the output.

**Read this first (checked 27 Oct 2026):** no public LATAM report publishes KPI benchmarks
(CAC payback, NRR, churn, growth by stage). Cuantico and LAVCA report capital flows only.
The LATAM ranges below are **directional** (LAN's read). Label them `(LATAM, directional)`
and never attribute them to Cuantico or LAVCA.

---

## Growth Rate Expectations

- *(US-sourced benchmark)* Paul Graham, "Startup = Growth" (Sep 2012): 5-7% per week is a
  good rate during YC (about 23-34% per month); 10% per week is exceptional.
  https://paulgraham.com/growth.html
- *(LAN's read, Oct 2026)* For AI-native startups, top funds now expect growth close to
  10% per week. LAN states this as its own read, not a published benchmark.
- *(US-sourced benchmark)* High Alpha and Growth Unhinged, 2025 SaaS Benchmarks Report
  (12 Nov 2025, 800+ companies): median YoY growth under $1M ARR was 100% for AI-native vs
  75% for other SaaS; at $1-5M ARR, 110% vs 40%. https://www.highalpha.com/saas-benchmarks
- *(LATAM, directional)* B2B SaaS selling only into one LATAM country often grows slower
  than the US bar because of smaller initial markets. Treat 10% MoM as the floor that needs
  no explanation at seed; below it, the founder must explain why.

**Implication:** measure growth weekly. Monthly reporting hides whether the company is on a
5%-per-week or a 1%-per-week path.

---

## CAC Payback

- *(US-sourced benchmark)* Under 12 months on gross margin reads as good at seed and
  Series A; 12-18 months is common later (directional ranges, see kpi-benchmarks.md).
- *(LATAM, directional)* Lower sales salaries can shorten payback, until the company hires
  US sellers or sells to US customers. If payback is long despite low salaries, ask which
  channel is broken.

---

## NRR as a PMF Signal

- *(US-sourced benchmark)* Public SaaS median NRR 110% (Clouded Judgement, 23 Oct 2026).
- *(LATAM, directional)* SMB-heavy LATAM SaaS rarely expands seats fast; NRR above 100% at
  seed is a strong signal. Track it from the first cohort.

---

## Reporting Cadence

- Build ONE monthly investor KPI block; derive quarterly versions from it. Angels and
  family offices often prefer quarterly, institutional VCs monthly (directional).
- LAVCA (Startup Ecosystem Insights 2025) finds CVCs in 15% of LATAM rounds in
  2024-1H 2025: corporate investors often want KPIs mapped to their own pilot or strategic
  goals. Add one line for them instead of a separate report.

---

## Fintech-Specific Context

- Fintech took 61% of LATAM VC dollars in 2025 (Cuantico, LatAm VC Report 2026) and in
  2024 (LAVCA Trends in Tech 2025): more capital and more competition for it.
- KPI priority at seed (directional):
  1. Default rate and loss curves by vintage (lending)
  2. CAC payback with a path under 12 months
  3. Regulatory compliance cost as % of revenue (BCB, CNBV, local central banks)
  4. Take rate net of processing and banking API fees

---

## AI-Native KPI Additions

Add these to the dashboard for any product where model inference is a material cost:

| KPI | Formula | Why |
|-----|---------|-----|
| Gross margin after inference | (Revenue − hosting − inference − AI APIs − human review) ÷ Revenue | ICONIQ (Jan 2026): AI product margins average ~41% in 2024, projected ~52% in 2026, well below SaaS |
| Inference cost per unit of work | AI cost ÷ tasks (or conversations, agent runs) | The lever that moves margin; track weekly |
| Task success / acceptance rate | Tasks accepted without human fix ÷ tasks | Outcome pricing only works if this is high |
| Usage retention | Week-N active usage of a cohort ÷ week-0 | Seat counts hide whether the agent is used |
| Revenue per employee | ARR ÷ FTEs | AI-native teams run small; investors compare it |

---

## Verified capital-market facts (context only)

| Fact | Source |
|------|--------|
| USD 4.13B across 681 LATAM rounds in 2025, +13.8% YoY | Cuantico, LatAm VC Report 2026 |
| ~20 months on average between rounds | LAVCA Trends in Tech 2025 |
| 12% of seed startups raise a Series A within 3 years | LAVCA Startup Ecosystem Insights 2025 |

---

## Sources

- Paul Graham, Startup = Growth (2012): https://paulgraham.com/growth.html
- High Alpha and Growth Unhinged, 2025 SaaS Benchmarks Report: https://www.highalpha.com/saas-benchmarks
- Clouded Judgement (Jamin Ball): https://cloudedjudgement.substack.com/archive
- ICONIQ State of AI bi-annual snapshot (Jan 2026), via SaaStr (28 Jan 2026): https://saastr.com/inference-costs-average-23-of-revenue-at-ai-b2b-companies-how-will-you-pay-for-it
- Cuantico LatAm VC Report 2026: https://reports.cuanticovp.com/latin-america-vc-report-2026/
- LAVCA Trends in Tech 2025: https://www.lavca.org/wp-content/uploads/2025/02/LAVCA_Trends-in-Tech-2025.pdf
- LAVCA Startup Ecosystem Insights 2025: https://www.lavca.org/wp-content/uploads/2025/08/LAVCA_Startup-Ecosystem-Insights_2025.pdf
