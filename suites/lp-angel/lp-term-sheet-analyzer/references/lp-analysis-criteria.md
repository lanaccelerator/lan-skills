# LP Analysis Criteria

**Purpose:** how an LP scores each fund term. Definitions live in `shared/brad-feld-terms.md`;
reference values (ILPA 3.0 and Carta 2025) live in `shared/ilpa-standards.md`. This file
only adds the LP judgment: ACCEPT / NEGOTIATE / RED FLAG per term, and the deal-breakers.

**When to use:** lp-term-sheet-analyzer Step 2.

**Sources:** ILPA Principles 3.0 (Jun 2019); Carta Fund Economics Report 2025 (4 Dec 2025, ~2,000 US
funds); Carta LPA guide (Jun 2026). Thresholds without a source are marked *(directional)*.

---

## Management Fee and Step-Downs

**Reference:** VC median 2% during a median 5-year investment period; 75th percentile 2.5%; 81.9% of
VC funds step down at least once; median fee after the first step-down 1.9%; median annualized fee
at year eight 1.94% (Carta 2025). ILPA 3.0: fee should fund a reasonable budget, with offsets.

| GP proposes | Verdict |
|-------------|---------|
| 2% or less in the investment period, at least one step-down | ACCEPT |
| 2.25-2.5% with a step-down, small or first fund that shows its budget | NEGOTIATE |
| Above 2.5% | RED FLAG |
| No step-down at any level | RED FLAG |
| Fee on committed capital through the full term with no reduction | RED FLAG |

**Fee load (always compute):** sum each year's fee rate x basis over the full term (investment period
plus step-down years, typically 10 years plus extensions). Report USD and % of commitment.
- At or under ~20% of commitment (fees plus expenses) → in line with market (Carta 2025: median
  2017-vintage fund ~19% after about eight years).
- 20-25% → NEGOTIATE. Above 25% → RED FLAG.

**Priority:** HIGH. The LP pays the fee whatever the fund returns.

---

## Carried Interest and Waterfall

**Reference:** VC median 20% across 2018-2025 vintages; 90th percentile 25%, 30% in 2025 for top funds
(Carta 2025). ILPA 3.0: whole-of-fund (European) waterfall is best practice.

| GP proposes | Verdict |
|-------------|---------|
| 20%, whole-of-fund | ACCEPT |
| 20%, deal-by-deal, with interim clawback and escrow | NEGOTIATE (ask for whole-of-fund or a stronger escrow) |
| 25%+ with a top-quartile DPI record on prior funds | NEGOTIATE (tiered carry above a return threshold is the usual compromise) |
| 25%+ without that record | RED FLAG |
| Deal-by-deal with no clawback mechanics | RED FLAG |

**Priority:** MEDIUM, HIGH if deal-by-deal.

---

## Hurdle (Preferred Return)

**Reference:** rare in VC. 9.5% of $1-10M funds and 12.4% of $100M+ funds have one (Carta 2025). When
present, 8% is the conventional level *(directional)*. ILPA 3.0: calculate it from the capital call
date, or from when capital is at risk if a credit line bridges the call.

| GP proposes | Verdict |
|-------------|---------|
| No hurdle | ACCEPT for VC (note it); NEGOTIATE only if the LP's own mandate requires one |
| Hurdle with full GP catch-up | ACCEPT |
| Hurdle clock starting at the credit-line drawdown, not when capital is at risk | NEGOTIATE |

**Priority:** LOW for VC, unless the LP is a DFI or pension with a policy requirement.

---

## GP Commit

**Reference:** VC median 1.7% of fund; $1-10M funds 2% (75th pct 6.15%); $25-100M funds 1.5%; $250M+
funds 1.5% (Carta 2025). ILPA 3.0: "substantial", contributed in cash rather than by fee waiver.

| GP proposes | Verdict |
|-------------|---------|
| 1% or more, in cash | ACCEPT |
| 0.5-1% in cash, emerging manager, with a written path to 1% | NEGOTIATE |
| Under 0.5% in cash | RED FLAG |
| Mostly funded by management fee waiver | RED FLAG (it is LP money recycled, not GP money) |

**Priority:** HIGH. It is the cleanest alignment signal.

---

## Clawback

**Reference (ILPA 3.0):** gross of taxes; repaid within two years of the liability being recognized;
carry held in escrow "with significant reserves (e.g., 30% of carry or more)"; joint and several
liability of GP members, or a creditworthy guarantee of the full clawback.

| GP proposes | Verdict |
|-------------|---------|
| Clawback + escrow (around 30%) or full guarantee, gross of taxes | ACCEPT |
| Clawback, escrow under 30% or net of taxes | NEGOTIATE |
| Clawback with no escrow and no guarantee | RED FLAG |
| No clawback | DEAL-BREAKER |

**Priority:** CRITICAL.

---

## Key Person

**Reference (ILPA 3.0):** a key person event triggers automatic suspension of the investment period,
which becomes permanent within 180 days unless a supermajority in interest of LPs votes to reinstate.
Changes to key person provisions need a majority in interest of LPs.

| GP proposes | Verdict |
|-------------|---------|
| The partners who drive decisions named; triggers include departure and reduced time; automatic suspension | ACCEPT |
| Suspension only by LP vote (not automatic) | NEGOTIATE |
| Long list that includes junior staff (dilutes the trigger) | NEGOTIATE |
| Death or disability only | RED FLAG |
| No key person clause | DEAL-BREAKER |

**Priority:** HIGH.

---

## No-Fault Removal and Dissolution

**Reference (ILPA 3.0):** a supermajority in interest of LPs should be able to remove the GP or dissolve
the fund without cause; two-thirds in interest is the commonly cited ILPA reference. Removal should
bring a meaningful carry reduction.

| GP proposes | Verdict |
|-------------|---------|
| Two-thirds to 75% in interest | ACCEPT |
| 75-80% | ACCEPT for a concentrated LP base (one anchor holds a large block); NEGOTIATE otherwise |
| 80-90% | NEGOTIATE |
| Above 90%, or no no-fault right | RED FLAG |

Check the arithmetic: if the anchor holds more than the gap to the threshold (e.g., a 25% anchor with an
80% threshold), the anchor alone can block removal. Say so.

**Priority:** MEDIUM-HIGH.

---

## Fee Offsets, Expenses, Credit Lines, Reporting

| Item | ACCEPT | RED FLAG |
|------|--------|----------|
| Portfolio company fees (transaction, monitoring, board) | 100% offset (ILPA 3.0) | Kept by GP or partial offset |
| Organizational expenses | Capped; excess offsets fee | Uncapped |
| Subscription line | 180-day limit, capped %, IRR shown with and without it (ILPA 3.0) | Uncapped or used for distributions |
| Reporting | Quarterly, ILPA Reporting Template 2025; Performance Template for funds from 1 Jan 2026 | GP-only format, no capital account detail |
| Audit | Annual audit (small funds may waive it, Carta 2025: note it, do not auto-fail) | No audit on a fund above ~$25M *(directional)* |

---

## Deal-Breakers (each must be fixed before signing)

1. No clawback.
2. No key person clause.
3. Management fee above 2.5%, or no step-down at all (Carta 2025: 81.9% of VC funds step down at
   least once).
4. GP commit with zero cash.
5. For an institutional or DFI LP: no annual audit and no quarterly reporting.

Verdict rules live in SKILL.md Step 3: refused deal-breaker = PASS; open deal-breaker or red flag =
NEGOTIATE with a walk-away condition; otherwise NEGOTIATE (light) or ACCEPT.
