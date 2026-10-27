# LP Term Sheet Analyzer: Templates

Canonical output template plus a filled LATAM example. Every lp-term-sheet-analyzer output follows
this exact structure.

---

## Output Template

```
# LP Term Analysis: [Fund Name]

**Verdict: [ACCEPT / NEGOTIATE / PASS]**: [one sentence: the term that decides it and the walk-away condition]

**LP:** [Investor] | **Fund:** [Name, vintage, Fund #] | **Size:** [target / hard cap, USD]
**Strategy:** [Geography, stage, sector] | **Commitment considered:** [USD, % of fund]
**Analysis date:** [Date]

---

## Term Analysis Table

| Term | GP proposes | ILPA 3.0 | VC market (Carta 2025) | LP verdict | Priority |
|------|-------------|----------|------------------------|------------|----------|
| Management fee | [% on basis, period] | Reasonable budget, offsets | Median 2%, 75th pct 2.5% | [ACCEPT / NEGOTIATE / RED FLAG] | [HIGH / MEDIUM / LOW] |
| Fee step-down | [schedule] | n/a | 81.9% step down at least once; median 1.9% after | [...] | [...] |
| Carry and waterfall | [% , whole-of-fund / deal-by-deal] | Whole-of-fund best practice | Median 20% | [...] | [...] |
| Hurdle | [% or none] | From capital-at-risk date | Rare: 9.5-12.4% of funds | [...] | [...] |
| GP commit | [% , cash / waiver] | Substantial, in cash | Median 1.7% | [...] | [...] |
| Clawback | [escrow %, guarantee] | Gross of tax, ~30% escrow or guarantee | n/a | [...] | [...] |
| Key person | [names, triggers] | Automatic suspension, 180 days | n/a | [...] | [...] |
| No-fault removal | [% in interest] | Supermajority (two-thirds reference) | n/a | [...] | [...] |
| Fee offsets | [%] | 100% | n/a | [...] | [...] |
| Reporting | [format, frequency] | ILPA Reporting Template 2025 | n/a | [...] | [...] |

---

## Red Flags

[Each with [RED FLAG] or [DEAL-BREAKER] prefix, one paragraph, the number that proves it. If none: "None identified."]

---

## Fee Load

| Item | GP terms | Ask |
|------|----------|-----|
| Investment period fee | [%, basis, years] | [...] |
| Post-period fee | [%, basis, years] | [...] |
| Lifetime fees, USD (fund / your commitment) | [...] | [...] |
| Lifetime fees, % of commitment | [...] | [...] |
| Market reference | ~19% fees + expenses after ~8 years, median 2017-vintage fund (Carta 2025) | |

---

## Verdict: [ACCEPT / NEGOTIATE / PASS]

**Rationale:** [2-3 sentences, naming the terms that drive it]

**Asks (term, target, fallback):**
1. [...]
2. [...]
3. [...]

**Walk away if:** [specific condition]

---

## LATAM Context

[FX, anchor and MFN, local vehicle, emerging-manager adjustments, each labeled with its source or "directional"]

---

## Next Steps

1. [LP action within 14 days]
2. [...]
3. [...]

---

## Sources

[ILPA 3.0, ILPA Reporting Template 2025, Carta Fund Economics 2025, plus any document the LP shared]
```

---

## Filled Example: Cóndor Ventures Fund II

*Fictional fund and LP. Benchmarks are real and sourced.*

**Background:** FamilyOffice Andina (Lima, $25M in venture allocations, first LP commitment to a LATAM
VC fund) is considering $2M in Cóndor Ventures Fund II: $60M target, early-stage fintech and agtech in
Peru, Colombia and Chile, 2026 vintage. A multilateral DFI anchors with $15M (25%).

**Terms received:** 2.5% on committed capital for the full 10-year term, no step-down; 20% carry,
deal-by-deal; 6% hurdle; GP commit 0.8% ($480K), funding source not stated; clawback with no escrow
or guarantee; key person names 3 people including a VP; no-fault removal at 85% in interest; USD
capital calls, distributions "in USD or local currency at GP discretion"; reporting in GP format.

---

# LP Term Analysis: Cóndor Ventures Fund II

**Verdict: NEGOTIATE.** The fee has no step-down (a deal-breaker until fixed); walk away if the GP
refuses any step-down.

**LP:** FamilyOffice Andina | **Fund:** Cóndor Ventures Fund II, 2026 | **Size:** $60M target
**Strategy:** Early-stage fintech + agtech, Andean region | **Commitment considered:** $2M (3.3%)
**Analysis date:** October 2026

---

## Term Analysis Table

| Term | GP proposes | ILPA 3.0 | VC market (Carta 2025) | LP verdict | Priority |
|------|-------------|----------|------------------------|------------|----------|
| Management fee | 2.5% on committed, 10 years | Reasonable budget, offsets | Median 2%, 75th pct 2.5% | NEGOTIATE | HIGH |
| Fee step-down | None | n/a | 81.9% step down at least once | DEAL-BREAKER | HIGH |
| Carry and waterfall | 20%, deal-by-deal | Whole-of-fund best practice | Median 20% | NEGOTIATE | HIGH |
| Hurdle | 6% | From capital-at-risk date | Rare: 9.5-12.4% of funds | ACCEPT (above market for VC) | LOW |
| GP commit | 0.8%, source unknown | Substantial, in cash | Median 1.7%; $25-100M funds 1.5% | NEGOTIATE | HIGH |
| Clawback | Yes, no escrow, no guarantee | ~30% escrow or full guarantee | n/a | RED FLAG | CRITICAL |
| Key person | 3 names incl. a VP; trigger not stated | Automatic suspension, 180 days | n/a | NEGOTIATE | HIGH |
| No-fault removal | 85% in interest | Supermajority (two-thirds reference) | n/a | NEGOTIATE | MEDIUM |
| Fee offsets | Not stated | 100% | n/a | NEGOTIATE | MEDIUM |
| Reporting | GP format | ILPA Reporting Template 2025 | n/a | NEGOTIATE | MEDIUM |

---

## Red Flags

**[DEAL-BREAKER] No fee step-down.** 2.5% on $60M committed for ten years is $15M, 25% of the fund,
charged in the harvest years when the GP is managing, not deploying. 81.9% of VC funds step down at
least once (Carta 2025).

**[RED FLAG] Clawback with no escrow and no guarantee.** With deal-by-deal carry, the GP is paid on
early winners before the LP has its capital back. If later deals fail, the clawback is only as good as
the GP's willingness to pay. ILPA 3.0 asks for escrow "e.g., 30% of carry or more" or a creditworthy
guarantee.

**[RED FLAG] GP commit source unknown.** 0.8% is under the median for this fund size (1.5%, Carta
2025). If it is funded by fee waiver, it is the LPs' money.

---

## Fee Load

| Item | GP terms | Ask |
|------|----------|-----|
| Investment period fee | 2.5% on committed, years 1-10 | 2% on committed, years 1-5 |
| Post-period fee | (same, no step-down) | 1.5% on invested capital, years 6-10 (assume ~80% invested) |
| Lifetime fees, fund | $15.0M | $6.0M + $3.6M = $9.6M |
| Lifetime fees, your $2M | $500K (25%) | $320K (16%) |
| Market reference | ~19% fees + expenses after ~8 years, median 2017-vintage fund (Carta 2025) | |

The GP's terms put your fee load 6 points above the market reference before a single expense; the ask
lands below it and leaves room for fund expenses.

---

## Verdict: NEGOTIATE

**Rationale:** one deal-breaker (no step-down) and one structural red flag (unsecured clawback under
deal-by-deal carry). Both are fixable in the LPA before final close. The hurdle is better than VC
market and should not be traded away; use it as a concession if needed.

**Asks (term, target, fallback):**
1. **Step-down:** 2% in years 1-5, then 1.5% on invested capital. Fallback: 2.25% then 1.75% on
   committed.
2. **Waterfall and clawback:** whole-of-fund carry. Fallback: keep deal-by-deal but add 30% carry
   escrow plus joint and several GP guarantee, gross of taxes.
3. **GP commit:** written confirmation it is cash, with a path to 1.5% by final close.
4. **Key person:** the two founding partners only; triggers include departure and less than
   substantially all business time; automatic suspension per ILPA 3.0.
5. **Reporting and FX (side letter):** quarterly ILPA Reporting Template 2025; USD distributions,
   local currency only with LPAC approval.

**Walk away if:** the GP refuses any step-down, or refuses both whole-of-fund carry and escrow.

---

## LATAM Context

- **Anchor math:** the DFI holds 25%. At an 85% no-fault threshold, the DFI alone can block removal;
  at 75% it cannot. Ask for 75%, and read the DFI's side letter through the MFN clause: E&S reporting
  and integrity clauses usually come with it *(directional)*, and any fee discount should be visible.
- **FX:** Andean currencies against a USD fund. "Local currency at GP discretion" moves FX risk onto
  you. USD-only distributions are a standard side letter ask.
- **Emerging manager:** a $60M Fund II gets some room on fee level (2.25-2.5% with a step-down) but
  not on structure. Small funds can outperform (2019 vintage: 90th-pct TVPI 4.91x for $1-10M funds vs
  1.92x for $100M+, Carta Emerging Manager Paradox, Oct 2026), which is why you are here, and why the
  protections still matter.
- **Hurdle:** the hurdle runs on USD contributions, so local interest rates do not justify a higher or
  lower one. Most VC funds have none (Carta 2025); the 6% is already a concession by the GP.

---

## Next Steps

1. **Send the asks above in one redline** to the GP's counsel this week, using the ILPA Model LPA
   language for clawback and key person as the drafting reference.
2. **Ask for GP commit evidence:** the GP entity's capital account at first close showing cash funded.
3. **Get the DFI side letter terms** through the MFN process before signing yours.
4. **Call two Fund I LPs:** how the GP reported in a down quarter and how it handled LPAC requests.
5. **Peruvian counsel review** of the FX and distribution clauses (2-3 hours of work).

---

## Sources

- ILPA Principles 3.0 (2019): https://ilpa.org/wp-content/uploads/2019/06/ILPA-Principles-3.0_2019.pdf
- ILPA Reporting Template (2025): https://ilpa.org/industry-guidance/templates-standards-model-documents/reporting-template
- Carta Fund Economics Report 2025: https://carta.com/data/fund-economics-report-2025-full-article/
- Carta, The Emerging Manager Paradox (6 Oct 2026)
