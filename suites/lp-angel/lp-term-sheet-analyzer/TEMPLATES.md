# LP Term Sheet Analyzer — Templates

This file contains the canonical output template and a fully filled LATAM example.
All lp-term-sheet-analyzer outputs MUST follow this exact structure.

---

## Output Template

```
# LP Term Analysis: [Fund Name]

**LP:** [Investor name / family office]
**Fund:** [Fund name, vintage]
**Strategy:** [Geography, stage, sector]
**Fund Size:** [USD]
**Analysis Date:** [Date]

---

## Term Analysis Table

| Term                  | GP Proposes          | ILPA Standard          | LP Verdict     | Negotiation Priority |
|-----------------------|----------------------|------------------------|----------------|---------------------|
| Management Fee        | [%] on [basis]       | 2% committed → 1.75%   | [ACCEPT/NEGOTIATE/RED FLAG] | [HIGH/MEDIUM/LOW] |
| Fee Step-Down         | [Yes/No — detail]    | Required after Yr 5    | [ACCEPT/NEGOTIATE/RED FLAG] | [HIGH/MEDIUM/LOW] |
| Carried Interest      | [%] [waterfall]      | 20%, European           | [ACCEPT/NEGOTIATE/RED FLAG] | [HIGH/MEDIUM/LOW] |
| Hurdle Rate           | [%]                  | 8% preferred return    | [ACCEPT/NEGOTIATE/RED FLAG] | [HIGH/MEDIUM/LOW] |
| GP Commit             | [%] ([USD])          | 1–2%, cash-funded       | [ACCEPT/NEGOTIATE/RED FLAG] | [HIGH/MEDIUM/LOW] |
| Clawback              | [Yes/No + escrow %]  | Required, ≥10% escrow  | [ACCEPT/NEGOTIATE/RED FLAG] | [HIGH/MEDIUM/LOW] |
| Key Person Clause     | [Named persons]      | Senior only, vol. depart| [ACCEPT/NEGOTIATE/RED FLAG] | [HIGH/MEDIUM/LOW] |
| No-Fault Divorce      | [% LP vote]          | 75–80% LP supermajority | [ACCEPT/NEGOTIATE/RED FLAG] | [HIGH/MEDIUM/LOW] |

---

## Red Flags

[List each with [RED FLAG] prefix. If none, write "None identified."]

---

## Effective Management Fee Drag

**Investment period:** [N] years
**Fee basis:** [%] on [committed / invested] capital
**Annual fee:** [USD]
**Total investment period fees:** [USD]
**Fee drag as % of committed capital:** [%]
**Estimated IRR drag:** [%] per annum (before any GP alpha)

[Narrative: "At [%] on committed capital with no step-down, you pay [USD] in management
fees over [N] years. That is [%] of the fund consumed before the GP deploys a dollar."]

---

## Verdict: [ACCEPT / NEGOTIATE / PASS]

**Rationale:** [2–3 sentences — state the specific terms driving the verdict]

**If NEGOTIATE — specific asks:**
1. [Specific negotiation request — term, target value, rationale]
2. [Specific negotiation request]
3. [Specific negotiation request]

**If PASS — structural misalignment:**
[State the specific combination of terms that triggers PASS and why.]

---

## LATAM Context

[LATAM-specific concerns for this fund. Apply references/latam-context.md. Label
any LATAM-specific adjustments explicitly.]

---

## Next Steps

1. [Specific LP action within 14 days]
2. [Specific LP action]
3. [Specific LP action]
4. [Optional: additional action]
5. [Optional: additional action]
```

---

## Filled Example: Cóndor Ventures Fund II LP Analysis

**Background:** FamilyOffice Andina (Lima family office, $25M in VC allocations, first-time
LP in a LATAM VC fund) received the Cóndor Ventures Fund II LPA and subscription agreement.
They are considering a $2M commitment to a $60M target fund focused on early-stage fintech
and agtech in Andean markets (Peru, Colombia, Chile). Vintage 2026.

**Terms received from GP:**
- Management fee: 2.5% on committed capital, no step-down
- Carried interest: 20%, American waterfall (deal-by-deal)
- Hurdle rate: 6% preferred return
- GP commit: 0.8% ($480k on $60M)
- Clawback: Yes — but no escrow requirement
- Key person clause: Names 3 GPs including 2 junior partners (Founders + VP Investments)
- No-fault divorce: 85% LP supermajority required
- FX clause: USD capital calls, distributions at GP discretion in USD or local currency

---

# LP Term Analysis: Cóndor Ventures Fund II

**LP:** FamilyOffice Andina (Lima, Peru)
**Fund:** Cóndor Ventures Fund II, 2026 vintage
**Strategy:** Early-stage fintech + agtech, Andean markets (Peru, Colombia, Chile)
**Fund Size:** $60M target
**LP Commitment Considered:** $2M (3.3% of fund)
**Analysis Date:** April 2026

---

## Term Analysis Table

| Term                  | GP Proposes                          | ILPA Standard           | LP Verdict      | Negotiation Priority |
|-----------------------|--------------------------------------|-------------------------|-----------------|---------------------|
| Management Fee        | 2.5% on committed capital            | 2% committed → 1.75%    | RED FLAG        | HIGH                |
| Fee Step-Down         | None — full fee for fund life        | Required after Yr 5     | RED FLAG        | HIGH                |
| Carried Interest      | 20%, American waterfall              | 20%, European waterfall | NEGOTIATE       | MEDIUM              |
| Hurdle Rate           | 6% preferred return                  | 8% preferred return     | NEGOTIATE       | MEDIUM-HIGH         |
| GP Commit             | 0.8% ($480k) — funding source unclear| 1–2%, cash-funded        | NEGOTIATE       | HIGH                |
| Clawback              | Yes — no escrow                      | Required, ≥10% escrow   | NEGOTIATE       | HIGH                |
| Key Person Clause     | 3 named (Founders + VP Investments)  | Senior only, vol. depart | NEGOTIATE       | HIGH                |
| No-Fault Divorce      | 85% LP supermajority                 | 75–80% LP supermajority  | NEGOTIATE       | MEDIUM              |

---

## Red Flags

**[RED FLAG] Management fee 2.5% on committed capital with no step-down.**
At $60M fund size, the LP base pays $1.5M per year in management fees throughout the
fund's life — including the harvest period (years 6–12) when the GP is managing, not
deploying, capital. There is no market justification for full fees post-investment period.
This is the clearest misalignment in the LPA. A first-time LATAM manager cannot command
2.5% with no step-down — that fee structure belongs to established funds with DPI track records.

**[RED FLAG] No management fee step-down.**
The absence of a step-down is distinct from the fee level. Even if the GP agrees to
reduce from 2.5% to 2.25%, the structural absence of step-down logic means the LP
has no contractual protection in the harvest period. This must be addressed separately
from the fee percentage.

---

## Effective Management Fee Drag

**Investment period:** 5 years (assumed — Andean Seed fund typical deployment timeline)
**Fee basis:** 2.5% on committed capital ($60M)
**Annual fee:** $1.5M
**Total investment period fees:** $7.5M over 5 years
**Fee drag as % of committed capital:** 12.5% consumed by management fees in investment period alone
**Estimated IRR drag:** ~1.8% per annum before accounting for harvest period fees

At 2.5% on committed capital with no step-down, FamilyOffice Andina's $2M commitment
generates $250k in management fees in the investment period. That is 12.5% of your check
consumed before the GP deploys a single dollar to portfolio companies. Assuming a 10-year
fund life at full fee, total fees on your commitment reach $500k — 25% of your initial capital.
For the LP to break even on fees alone requires the fund to return >1.25× your invested capital
before carry participation. That is the hurdle you are paying for before any GP economics apply.

---

## Verdict: NEGOTIATE

**Rationale:** Two RED FLAGs exist (management fee level and absence of step-down) but
neither is categorically fatal when taken in isolation — both are correctable via side letter.
The remaining terms (20% carry with American waterfall, 6% hurdle, weak key person clause,
clawback without escrow) are each individually negotiable. The combination does not yet
trigger the structural misalignment PASS threshold (which requires all three: fee >2.5%
with no step-down, no-fault divorce >90%, AND GP commit <0.5%). GP commit of 0.8% is
below ILPA minimum but above the PASS threshold.

**Specific negotiation asks:**

1. **Management fee step-down:** Negotiate step-down from 2.5% to 1.75% on invested capital
   (not committed capital) after the investment period (year 5). If GP refuses step-down
   entirely, reduce fee to 2% flat as minimum condition for signing.

2. **Waterfall structure:** Request European waterfall (whole-fund carry) instead of American
   waterfall (deal-by-deal). American waterfall in early-exit scenarios distributes carry to
   the GP before the LP recovers full capital. European waterfall ensures LP-first capital
   recovery before any carry distribution.

3. **Key person clause:** Narrow named key persons to Founding Partners only (remove VP
   Investments from key person definition). Add voluntary departure as trigger event. Request
   automatic investment period suspension (not just LP vote) upon key person departure.

4. **Clawback escrow:** Request 10% escrow on all carried interest distributions, held in
   a separate LP-controlled account, released only upon fund wind-down and final clawback
   reconciliation.

5. **FX clause:** Request explicit USD distribution language — GP may distribute in local
   currency only with prior written LPAC approval. This protects FamilyOffice Andina from
   receiving depreciated Peruvian sol or Colombian peso distributions.

---

## LATAM Context

**FX risk:** The GP's "USD or local currency at GP discretion" clause is a material risk
for FamilyOffice Andina's USD-denominated family office balance sheet. The Andean markets
(Peru, Colombia, Chile) have moderate FX volatility, but the current political environment
in Peru (as of 2026) adds tail risk to local currency distributions. Request USD-only
distribution clause in your side letter — this is a non-negotiable LP protection.

**First-time LP context:** As a first-time LP in a LATAM VC fund, FamilyOffice Andina
is in a weaker negotiating position than institutional LPs (pension funds, fund of funds).
The ILPA model LP side letter (available at ilpa.org/model-lpa) provides a pre-negotiated
baseline that is recognized by market-standard GPs — use it as your opening position, not
as aspirational terms. Cóndor Ventures has incentive to close LPs and will negotiate;
they will not walk from a $2M commitment over a fee step-down request.

**Emerging manager adjustment:** Cóndor Ventures Fund II is a second-fund manager with a
first-fund DPI of approximately 0.3× (early fund, mostly unrealized). The 6% hurdle rate
(below ILPA 8%) is within acceptable range for LATAM given the region's lower risk-free
rate environment, but the combination of 6% hurdle + American waterfall means the GP can
earn carry on individual winning deals while the LP's overall fund performance lags. Push
to 8% hurdle OR European waterfall — not both simultaneously, as that is too aggressive
a negotiation position for a $2M commitment.

---

## Next Steps

1. **Propose ILPA model LP side letter as negotiation baseline.** Download the ILPA model
   LPA side letter from ilpa.org/model-lpa and submit it to Cóndor Ventures as your
   starting negotiation position — specifically Articles covering management fee step-down,
   no-fault divorce at 75%, and clawback escrow.

2. **Request GP commit funding documentation.** Ask the GP to confirm in writing that
   their 0.8% commit ($480k) is funded with personal cash, not management fee waivers.
   Request a capital account statement showing GP commitment funded at or before first
   capital call.

3. **Request legal review of FX and political risk provisions.** Engage a Peruvian
   funds lawyer to review the LPA for FX distribution language and any provisions
   that could affect Lima-based LP's USD recovery in an Andean political risk scenario.

4. **Reference check Founding Partners.** Before finalizing commitment, contact 3 LPs
   from Cóndor Ventures Fund I — specifically ask about GP transparency during down-portfolio
   scenarios and responsiveness to LPAC requests. Fund I is sufficiently mature to have
   meaningful data on GP-LP relationship quality.
