# Investment Thesis: Output Template

ALWAYS use this exact structure. Every section is required. This template is for
VC FUND OPERATORS building or articulating their investment thesis, not for startup
founders. Do not change section headings, table columns, or field order.

---

## Example Output: Condor Ventures Fund I

*Hypothetical fund: $25M, 2022 vintage, Brazil/Mexico, SME fintech infrastructure. Market
facts carry a source; inputs the GP must still source are tagged `[ASSUMPTION: ...]` with the
place to get the real number. Never fill those with invented figures.*

---

# Investment Thesis: Condor Ventures Fund I

**Prepared by:** Isaac García, GP, Condor Ventures
**Date:** Q2 2026
**Fund:** $25M committed, 2022 vintage, Brazil/Mexico, year 5 of 10

---

## 1. Core Hypothesis

SME credit in Brazil and Mexico will be underwritten from transaction and invoice data, not
from collateral and bank statements, and the companies that own that data flow (accounting,
payments, invoicing software used daily by SMEs) will capture the credit margin that banks
cannot serve profitably. Two things changed: the data rails exist (PIX and Open Finance in
Brazil, CFDI e-invoicing in Mexico) and AI makes reading that data per customer almost free,
so a $20k credit line can be underwritten at a cost that used to require a $500k line. Banks
will not close this gap because their cost to serve is built for branch-era underwriting.
**Kill condition:** if by 2028 banks match software-embedded lenders on approval time and loss
rate for sub-$50k lines, the thesis is wrong.

---

## 2. Market Thesis

**Technology:** PIX (launched Nov 2020) and Open Finance give consented, real-time cash-flow
data in Brazil [pull current PIX volumes: BCB PIX statistics]. Mexico's CFDI electronic
invoices put every formal sale on a SAT record. Open-weight models now compete with frontier
models on meaningful benchmarks (YC RFS Winter 2027), so per-customer document reading and
cash-flow analysis in Portuguese and Spanish is cheap and can run inside a regulated lender's
own infrastructure.

**Regulation:** licences gate the credit model (SOFOM in Mexico; SCD/SEP in Brazil). The
companies that get licensed, or partner with a licensed balance sheet, own the margin.

**Capital market:** LATAM VC was US$4.126B in 2025 across 681 rounds, the lowest deal count
since 2017; fintech took 61% of capital with 29% of deals (Cuantico 2026). Capital is
concentrating in proven lenders; seed-stage software that owns SME workflows is less crowded.

**Why now:** the data rails are live, AI dropped the underwriting cost, and the 2022-2024
correction cleared out lenders that had no data edge.

---

## 3. Pattern Matching

| Criterion | Condor Ventures standard |
|-----------|--------------------------|
| Founder profile | At least one founder with LATAM credit, risk or payments operating experience |
| Stage at first check | Seed; $50k+ MRR in software or a live loan book with 6+ months of loss data |
| Geography | One country and one SME segment at first check |
| Business model | Software SMEs use weekly (invoicing, payments, accounting) with credit embedded |
| Structural element | Owns the data flow; underwriting uses it from day 1; licence or licensed partner signed |
| AI requirement | Uses models to cut underwriting and servicing cost, measured in cost per approved line |
| Disqualifying signals | Full-stack bank at seed; loan book funded by equity; no loss data; 1-2 customers |

---

## 4. Portfolio Construction

| Parameter | Condor Ventures Fund I |
|-----------|------------------------|
| Fund size / investable after fees | $25M / about $20.5M (2% fee in investment period, stepping down) |
| Initial check range | $750k-$1.5M |
| Reserve ratio | 45% of investable ($9.2M) |
| Target portfolio size | 12-15 companies |
| Target ownership at entry | 8-10% post-money |
| Follow-on strategy | Pro-rata only in companies that hit Series A milestones; super pro-rata in the top 2 |
| Fund life | 10 years + up to two 1-year extensions; investment period 5 years |

**Ownership math:** $1.2M into a $10M pre-money, $2.5M round = $1.2M / $12.5M post = 9.6%.
After a Series A (about 18% dilution, Carta 2026) without pro-rata: about 7.9%.

**Fund-returner test:** $25M / 8% = a $312M exit returns the fund once. A 3x net fund needs
one or two exits of $500M+ in this category within 10 years. LATAM fintech has produced
outcomes at that scale; the thesis must name the likely acquirers (regional banks, payment
companies, global fintechs) because M&A was 67% of main LATAM exits in 2025 (Cuantico 2026).

---

## 5. Anti-Portfolio Analysis

1. **Pan-LATAM launches at seed.** Five regulators and five sales motions at once; we want
   leadership in one market first. Exception: software with no licence dependency.
2. **Balance-sheet consumer lending.** Credit losses sit on the startup, the model needs debt
   more than equity, and our check size cannot absorb a bad loan vintage.
3. **Full-stack digital banks.** Licence timelines and capital needs do not fit a $25M fund.
4. **Pure payments infrastructure without a credit or data path.** Commoditizes to price.
5. **AI wrappers without proprietary data.** If the model and the data are both rented, the
   margin goes to the model provider and the incumbent with the data.

---

## 6. Thesis Evolution

- **2022 (formation):** broad B2B SaaS plus fintech in LATAM.
- **2024:** narrowed to SME credit infrastructure after our two fintech companies grew faster
  than our SaaS companies and consumer lending in our pipeline showed unstable loss rates.
- **2026:** added the AI mechanism: underwriting and servicing cost per line is now the metric
  we diligence first.

**What would change it again:** regulators restricting Open Finance data for credit; banks
shipping comparable embedded credit through accounting software partnerships; a sharp rise in
SME defaults that breaks the loss assumptions of data-based models.

---

## 7. Market Sizing (bottom-up)

| Layer | Calculation | Source |
|-------|-------------|--------|
| SMEs in target segment | [ASSUMPTION: formal SMEs with 5-100 employees in Brazil and Mexico; get counts from IBGE/SEBRAE and INEGI] = N | Official statistics |
| Share reachable through software | [ASSUMPTION: share using digital invoicing or accounting software; from SAT CFDI issuers and vendor reports] = r | SAT, vendor data |
| Credit need per SME | [ASSUMPTION: average working-capital line; from portfolio loan books] = L | Portfolio data |
| SAM | N x r x L (outstanding credit) and N x r x L x annual net margin (revenue pool) | Computed |
| SOM (10 years) | Share Condor's companies can win, justified by comparable penetration of software-embedded lenders | Portfolio and comps |

Report the revenue pool, not only the loan stock: a credit TAM in loan balance overstates the
venture-relevant market by an order of magnitude. Do not use US market size as a proxy.

---

## Thesis Stress Test

**Strongest challenge:** "Big platforms (a large digital bank or a marketplace's fintech arm)
can embed SME credit faster than your companies."
**Our response:** "They can for SMEs already on their platform. Our companies own workflows
those platforms do not (accounting, invoicing, B2B payments); we back only companies whose
data comes from their own product."
**LPs will push hardest on:** loss rates through a credit cycle. Prepare: vintage loss curves
for every portfolio lender, and the share of credit risk sitting on partner balance sheets.

---

## LATAM Fund Context Box

> **Benchmark labels:** US fund data `(US-sourced benchmark, Carta Q2 2026)`. No public LATAM
> vintage dataset exists; the closest free reference is Cambridge Associates' Emerging Markets
> PE & VC index (10-year pooled IRR 8.12% as of Mar 2026).
>
> **Market:** LATAM VC 2025: US$4.126B, 681 rounds; fintech 61% of capital; Brazil US$2.03B
> and Mexico US$980M (Cuantico 2026).
>
> **DFI LPs (if applicable):** add additionality and impact metrics: SMEs receiving formal
> credit for the first time, credit volume to women-led SMEs, jobs in portfolio companies.
