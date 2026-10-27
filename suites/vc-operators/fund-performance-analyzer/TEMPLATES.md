# Fund Performance Analysis: Output Template

ALWAYS use this exact structure. Every section is required. This template is for
VC FUND OPERATORS analyzing fund-level performance, not for startup founders.
Do not change section headings, table columns, or section order.

---

## Example Output: Condor Ventures Fund I, Performance Analysis as of Q2 2026

*Hypothetical fund: Condor Ventures Fund I (2022 vintage, $25M, Brazil/Mexico B2B SaaS,
year 5 of 10). Same fund as the portfolio-reporter example, different lens.*

---

# Fund Performance Analysis: Condor Ventures Fund I

**Prepared by:** Ana Martínez, Fund Analyst, Condor Ventures
**Analysis date:** June 30, 2026 (Q2 2026 quarter-end)
**Fund:** Condor Ventures Fund I | Vintage: 2022 | Size: $25M committed | Year 5 of 10
**Data quality:** marks reviewed against IPEV 2025 (calibrated to last round, adjusted for
Q2 2026 performance); no subscription facility in use, so IRR with and without the line is equal.

---

## 1. Fund Metrics Calculation

| Metric | Formula | Input Values | Result |
|--------|---------|-------------|--------|
| Capital Called | Given | $23.5M of $25M (incl. $3.5M fees and expenses) | $23.5M (94%) |
| Total Distributions | Given | PortCo A secondary, Q3 2025 | $1.9M |
| Current Portfolio FMV | Given | Sum of active marks | $25.8M |
| **TVPI** | (Dist + FMV) / Called | ($1.9M + $25.8M) / $23.5M | **1.18x** |
| **DPI** | Dist / Called | $1.9M / $23.5M | **0.08x** |
| **RVPI** | FMV / Called | $25.8M / $23.5M | **1.10x** |
| Gross MOIC | (Realized + Unrealized) / Invested in companies | $27.7M / $20.0M | 1.39x |
| **Net IRR** | XIRR of dated LP cash flows | Calls: Dec-22 -$5.0M, Mar-23 -$6.0M, Jun-23 -$5.5M, Sep-23 -$4.0M, Dec-23 -$2.0M, Jun-24 -$1.0M; Dist: Sep-25 +$1.9M; NAV Jun-26 +$25.8M | **5.6%** |
| KS-PME vs MSCI EM | Discount every flow by index growth | [Index levels fetched at run time from MSCI or the LP's data provider] | [ratio; >1.0 = beat the index] |

**Checks:** TVPI = DPI + RVPI: 0.08x + 1.10x = 1.18x. Fee drag: gross MOIC 1.39x vs net TVPI
1.18x; fees and expenses are 15% of called capital at year 5.

---

## 2. Vintage Benchmark Comparison

**2022 vintage, (US-sourced benchmark, Carta Q2 2026)**

| Metric | Condor Fund I | 25th | Median | 75th | 90th | Placement |
|--------|--------------|------|--------|------|------|-----------|
| TVPI | 1.18x | 0.93x | 1.12x | 1.38x | 1.84x | Second quartile (above median) |
| Net IRR | 5.6% | -2.8% | 4.4% | 15.4% | 29.0% | Second quartile (above median) |
| DPI | 0.08x | 0x | 0x | 0x | 0.15x | Top quartile, below top decile |

*US-domiciled funds only, data through Q2 2026. Carta's 2022 vintage is ahead of 2021 at
every TVPI percentile.*

---

## 3. Percentile Placement Summary

**Condor Fund I is a second-quartile 2022 fund on value (TVPI 1.18x vs 1.12x median and 1.38x
75th) and a top-quartile fund on liquidity (DPI 0.08x where the US 75th percentile is still 0x).**

It is not top quartile on TVPI or IRR: closing the gap to 1.38x needs $4.7M more value on
$23.5M called, roughly one more PortCo B-sized markup. The DPI lead is real but small and
comes from a single secondary.

**PME:** not computed in this example because index levels were not supplied. With MSCI EM
levels, report KS-PME and state plainly whether LPs would have done better in the index.

---

## 4. Attribution Analysis

| Position | Invested | FMV + Realized | Position MOIC | Value created | % of value created |
|----------|----------|----------------|---------------|---------------|--------------------|
| PortCo B (LogiScan BR) | $0.65M | $3.1M | 4.77x | +$2.45M | 31.8% |
| PortCo C (DataPago CO) | $0.60M | $2.8M | 4.67x | +$2.20M | 28.6% |
| PortCo A (FleetPro MX) | $1.00M | $1.9M realized + $1.2M FMV = $3.1M | 3.10x | +$2.10M | 27.3% |
| Other 5 positions | $17.75M | $18.7M | 1.05x | +$0.95M | 12.3% |
| **Total** | **$20.0M** | **$27.7M** | **1.39x** | **+$7.70M** | **100%** |

**Concentration:** 3 of 8 companies (11% of invested capital) produce 88% of value created.
That is the normal power-law shape (about 65% of financings return under 1x, Correlation
Ventures), but it means the other $17.75M is flat: fund outcome rides on B and C.

**AI exposure:** PortCo C's last round priced AI-agent revenue at a premium multiple. Flag
the mark as the most sensitive in the portfolio; re-test at each quarter-end per IPEV 2025.

---

## 5. DPI vs RVPI Split

| Component | Value | % of TVPI |
|-----------|-------|-----------|
| DPI (realized) | 0.08x ($1.9M) | 6.9% |
| RVPI (unrealized) | 1.10x ($25.8M) | 93.1% |
| TVPI | 1.18x ($27.7M) | 100% |

**Interpretation:** 93% unrealized at year 5 is normal; for the 2022 vintage even the US 75th
percentile has 0x DPI. The risk is the next three years: US 2019 funds at year 7 sit at
0.04x median DPI (Carta Q2 2026), so LPs should hear a liquidity plan, not a markup story.

---

## 6. Reserve Analysis

| Reserve Category | Amount | Status |
|-----------------|--------|--------|
| Remaining dry powder | $1.5M | 6% undrawn |
| Pro-rata, PortCo B Series A | $250k | Q3 2026 expected close |
| Pro-rata, PortCo G (AgroTrack) Series A | $200k | Q4 2026 expected close |
| Bridge option, PortCo E (TalentBridge) | $150k | Conditional, decision Q3 2026 |
| Firm + conditional | $450k firm + $150k conditional | $1.05M cushion; $900k if bridge exercised |

**Assessment:** Firm commitments are covered. No new first checks are feasible. PortCo B is
the only under-reserved position: at 4.77x it deserves more than pro-rata if the round
allows a super pro-rata; that would consume most of the cushion.

---

## 7. LATAM Fund Context

> (US-sourced benchmark, Carta Q2 2026): US-domiciled funds only. No public LATAM VC vintage
> benchmark of comparable scale exists; Cambridge Associates' EM PE & VC index (10-year pooled
> IRR 8.12% as of Mar 2026) is the closest free reference. LATAM exits concentrate in M&A and
> secondaries (Cuantico 2026), so DPI typically arrives later than in US funds.

> **Condor read:** a first secondary at year 3 in a market where M&A was 67% and secondaries
> 27% of 2025 exits (Cuantico 2026) is evidence the secondary path works for this portfolio.
> It is one data point, not a pattern.

---

## Next Steps

1. **Liquidity plan for LPs by Q3 2026:** name which 2 positions could produce a secondary or
   M&A event by 2028 and the price range that would be acceptable.
2. **Triage the flat five ($17.75M at 1.05x):** keep, bridge or stop-reserve decision per
   company at the Q3 2026 portfolio review.
3. **PortCo B follow-on:** confirm $250k pro-rata and ask for super pro-rata before the
   Series A term sheet is signed.
4. **Compute KS-PME vs MSCI EM** with real index levels before the annual LP meeting.
5. **Mark discipline:** document the calibration bridge for PortCo C's AI-premium mark
   (IPEV 2025) so the auditor does not challenge it at year-end.
