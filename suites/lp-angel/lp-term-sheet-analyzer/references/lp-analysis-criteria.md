# LP Analysis Criteria

**Purpose:** LP evaluation layer for fund terms received FROM a GP. This file adds the
investor's scoring perspective ONLY. It does NOT define terms (see brad-feld-terms.md)
or establish governance principles (see ilpa-standards.md). It answers: "Given what I
know about market standards and ILPA principles, how should an LP score this term?"

**When to use:** lp-term-sheet-analyzer Step 2 — loaded after brad-feld-terms.md and
ilpa-standards.md to apply the LP judgment layer.

---

## Management Fee

**ILPA standard:** 2% on committed capital during investment period (typically years 1–5),
stepping down to 1.5–1.75% on invested capital (or committed capital at reduced rate)
during harvest period (years 6+).

**LP scoring:**
- Within ILPA band + step-down exists → ACCEPT
- 2.25–2.5% but step-down exists → NEGOTIATE (acceptable for first-time LATAM manager)
- >2.5% → `[RED FLAG]` regardless of step-down
- No step-down at any fee level → `[RED FLAG]` (harvest period fee drag continues indefinitely)
- Fee basis: committed capital post-investment period → `[RED FLAG]` (most punitive structure)

**Negotiation priority:** HIGH — management fee is the LP's guaranteed cost of capital.
Unlike carry, the LP pays this regardless of fund performance.

**Effective drag calculation:** Management fee × fund size × investment period years =
total fee burden in USD. Divide by fund size = % of committed capital consumed by fees.
Report as: "X% of committed capital consumed by management fees in the investment period."

---

## Carried Interest

**ILPA standard:** 20% carry, European waterfall (whole-fund carry), 8% preferred return.

**LP scoring:**
- 20% carry, European waterfall, 8% hurdle → ACCEPT
- 20% carry, American waterfall (deal-by-deal) → NEGOTIATE (LP exposed to carry clawback risk)
- 25% carry → NEGOTIATE only if GP has exceptional DPI track record (>2× DPI on prior fund)
- 25%+ carry without track record → `[RED FLAG]`

**Waterfall distinction (for LP output):**
- European waterfall: GP receives no carry until LP has received full capital back + preferred
  return on the whole fund. LP-preferred structure.
- American waterfall: GP receives carry on each profitable deal, even if fund overall
  underperforms. Creates clawback obligation risk but also incentivizes deal-by-deal performance.

**Negotiation priority:** MEDIUM — carry structure matters most in high-return scenarios.
For LATAM funds where DPI is uncertain, waterfall structure affects LP's recovery timeline.

---

## Hurdle Rate (Preferred Return)

**ILPA standard:** 8% preferred return before GP receives carry.

**LP scoring:**
- 8% preferred return → ACCEPT
- 6–7% → NEGOTIATE (acceptable in LATAM context given lower regional risk-free rates;
  see latam-context.md for regional adjustment)
- <6% → `[RED FLAG]`
- No preferred return → `[RED FLAG]` (GP earns carry on any positive return — structural misalignment)

**Negotiation priority:** MEDIUM-HIGH — hurdle rate determines what LP must receive before
GP participates. Lower hurdle = earlier carry participation on modest returns.

---

## GP Commit

**ILPA standard:** 1–2% of fund size, funded with cash (not management fee waiver).

**LP scoring:**
- ≥1% cash GP commit → ACCEPT
- 0.5–1% cash GP commit → NEGOTIATE (acceptable for emerging LATAM manager; request letter
  of commitment to reach 1% over investment period)
- <0.5% → `[RED FLAG]`
- Any GP commit funded via management fee waiver → `[RED FLAG]` (not real skin in the game —
  GP is investing recycled LP capital, not personal capital)

**Negotiation priority:** HIGH for alignment. GP commit is the primary signal that the GP
has personal financial exposure to the fund's outcome.

---

## Clawback

**ILPA standard:** Full clawback provision required. Minimum 10% of cumulative carry
distributions held in escrow during fund life. Escrow released only after fund wind-down
confirms no clawback obligation.

**LP scoring:**
- Full clawback + escrow ≥10% → ACCEPT
- Full clawback + no escrow → NEGOTIATE (request escrow or personal guarantee from GP partners)
- No clawback provision → `[RED FLAG]` — LP has no recourse if GP over-distributed carry
  on early exits and fund underperforms overall
- Escrow <10% → NEGOTIATE (inadequate protection on large carry distributions)

**Negotiation priority:** CRITICAL — no clawback is a structural defect, not a negotiating
point. If GP refuses clawback provision, PASS.

---

## Key Person Clause

**ILPA standard:** Clause must name specific senior individuals (GPs, Managing Partners),
not the entire team. Trigger events must include voluntary departure and material reduction
in time commitment (not just death/disability). Upon trigger: investment period suspended
until LP vote to continue.

**LP scoring:**
- Named senior key persons (2–3 max) + voluntary departure trigger + LP vote to continue → ACCEPT
- Clause names more than 3 people including junior partners → NEGOTIATE (protection diluted —
  a clause that names 5 people effectively names no one)
- Trigger limited to death/disability only → `[RED FLAG]` (most fund GP departures are voluntary)
- No key person clause → `[RED FLAG]`

**Negotiation priority:** HIGH for governance. Key person protection is the LP's primary
control mechanism when the fund's value is tied to specific individuals.

---

## No-Fault Divorce

**ILPA standard:** 75–80% LP supermajority by LP interest to terminate GP without cause.
Trigger: termination of investment period, appointment of replacement GP.

**LP scoring:**
- ≤75% LP supermajority required → ACCEPT
- 75–85% → ACCEPT (within acceptable range)
- 85–90% → NEGOTIATE (achievable in a serious governance event; push to 75%)
- >90% → `[RED FLAG]` — practically impossible to achieve in a fragmented LP base;
  effectively removes LP's ability to replace a non-performing GP

**Negotiation priority:** HIGH for governance protection. No-fault divorce is the LP's
last resort. A >90% threshold is theater, not protection.

---

## ACCEPT / NEGOTIATE / PASS Decision Matrix

**ACCEPT:** All terms within ILPA band. No RED FLAGs. No structural misalignment.

**NEGOTIATE:** One or two terms outside ILPA band but correctable via side letter. Specific
negotiation asks are actionable and GP has incentive to agree. No catastrophic structural defects.

**PASS (structural misalignment — all three required):**
- Management fee >2.5% AND no step-down
- No-fault divorce >90%
- GP commit <0.5%

Any single `[RED FLAG]` that is non-negotiable (e.g., no clawback provision, no key person
clause) elevates to PASS regardless of other terms.
