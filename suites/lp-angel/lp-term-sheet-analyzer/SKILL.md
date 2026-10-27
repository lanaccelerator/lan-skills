---
name: lp-term-sheet-analyzer
description: >
  LP-side review of a VC fund's LPA, term sheet or side letter. ALWAYS invoke when an
  LP, family office, DFI or institutional investor received fund terms and needs to
  score management fee and step-downs, carry and waterfall, hurdle, GP commit,
  clawback, key person, no-fault removal, fee offsets and reporting against ILPA
  Principles 3.0 and Carta market data, with an ACCEPT / NEGOTIATE / PASS verdict and
  specific asks. Triggers: "review this LPA", "are these fund terms market", "side
  letter", "revisá el LPA", "términos del fondo", "¿es normal este management fee?",
  "qué negocio en el side letter". NOT for diligence on the GP team, track record or
  strategy (vc-fund-due-diligence), GPs drafting startup term sheets
  (term-sheet-generator), founders reviewing a VC term sheet (fundraising-agent), or a
  GP's own LP report (portfolio-reporter).
categories: ["business", "investing", "due-diligence"]
metadata:
  author: lan-accelerator
  version: "1.1"
  suite: lp-angel
license: MIT
---

# LP Term Sheet Analyzer

Scores fund terms from the LIMITED PARTNER's seat. It does not re-define terms; it compares
each one against two reference layers and tells the LP what to accept, what to ask for and
when to walk.

- **ILPA Principles 3.0 (2019) + ILPA Reporting Template (2025):** what institutional LPs recommend.
- **Carta Fund Economics Report 2025:** what VC funds actually sign.

A term can be below ILPA best practice and still be VC market. Always say which layer you cite.

## Step 1: Intake (ONE message)

Ask everything in one message; accept the LPA PDF instead of answers. Missing answer:
proceed with `[ASSUMPTION: ...]`, never skip silently.

1. **Fund:** name, vintage, fund number (I, II...), target and hard cap, strategy and geography.
2. **Your commitment:** amount, LP type (family office, DFI, corporate, individual), anchor or not.
3. **Economics:** management fee %, basis (committed or invested), investment period, step-downs;
   carry %, waterfall (whole-of-fund or deal-by-deal); hurdle if any; fee offsets.
4. **Alignment:** GP commit % and how it is funded (cash or fee waiver); clawback, escrow, guarantees.
5. **Governance:** key person names and triggers; no-fault removal and suspension thresholds;
   LPAC; fund term and extensions.
6. **Other:** subscription line, FX / distribution currency, reporting format, MFN on side letters,
   anything unusual (recycling, GP-led secondaries, continuation vehicles).

## Step 2: Workflow (in order)

1. **Read** `references/shared/ilpa-standards.md` (both layers, with numbers),
   [references/lp-analysis-criteria.md](references/lp-analysis-criteria.md) (scoring per term)
   and, for definitions only, `references/shared/brad-feld-terms.md`.
2. **Score each term** ACCEPT / NEGOTIATE / RED FLAG with the criteria file.
3. **Compute the fee load:** sum the yearly fee over the full fund term using the step-down
   schedule; report it in USD and as % of commitment. Market reference: the median 2017-vintage
   VC fund had spent ~19% of commitments on fees plus expenses after about eight years; median
   annualized fee at year eight is 1.94% (Carta 2025).
4. **Check deal-breakers** (criteria file). Each one must be fixed before signing.
5. **Apply LATAM context** from [references/latam-context.md](references/latam-context.md):
   FX, DFI side letters and MFN, local vehicles, emerging-manager adjustments.
6. **Apply the verdict rules** below and write the asks: term, target value, fallback.
7. **Close with Next Steps:** 3-5 LP actions for the next 14 days.

## Step 3: Verdict Rules (first match wins)

1. A deal-breaker the GP has already refused to fix → **PASS**.
2. Any deal-breaker or RED FLAG still open → **NEGOTIATE**, stating the walk-away condition
   ("PASS if the GP refuses a step-down").
3. Terms outside the band but no red flag → **NEGOTIATE** (low intensity, side letter).
4. No red flags, all terms in band, lifetime fee load at or under ~20% of commitment →
   **ACCEPT**.

## Step 4: Output Format

ALWAYS use this exact template structure. Do not change section headings, table columns,
or field order. Fill every [bracketed placeholder] with real analysis from the user's fund.
See [TEMPLATES.md](TEMPLATES.md) for the filled example.

Sections: header with verdict (BLUF), term analysis table (term | GP proposes | ILPA 3.0 |
VC market (Carta 2025) | LP verdict | priority), red flags, fee load, verdict with asks and
walk-away conditions, LATAM context, Next Steps, Sources.

If the user wants slides or a PDF for an investment committee, apply
`references/shared/deck-design-rules.md`.

## Step 5: LATAM and Emerging-Manager Lens

- **Small funds are different, not worse:** median GP commit for $1-10M funds is 2% (75th pct
  6.15%), opex runs ~3.4% of commitments in five years vs ~1% above $100M, and many small funds
  waive the audit (Carta 2025). Judge a $10M Fund I against small-fund norms.
- **DFI anchors:** IDB Lab, IDB Invest or CAF in the fund usually means their own side letter
  (E&S policy, exclusion list, integrity, reporting). Ask for the MFN clause: which of those
  rights and any fee discounts reach you.
- **FX:** USD commitments into local-currency companies. Require USD distributions.
- **Hurdle:** rare in VC (9.5% of $1-10M funds, 12.4% of $100M+ funds have one, Carta 2025).
  Its absence is not a red flag; ask only if your LP mandate requires it.

## Tone & Editorial Voice

Follow `references/shared/editorial-voice.md`: seasoned institutional LP, numbers first, no
em dashes, no buzzwords, no emojis; in Spanish "el AI".

Expected tone: "2.5% on committed capital for ten years with no step-down is 25% of your
commitment in fees. The market median ends near 19% including expenses. Ask for 2% in the
investment period and 1.5% on invested capital after; walk if there is no step-down at all."

## Sources

- [LP Analysis Criteria](references/lp-analysis-criteria.md), [LATAM Context](references/latam-context.md)
- [ilpa-standards.md](references/shared/ilpa-standards.md), [brad-feld-terms.md](references/shared/brad-feld-terms.md), [editorial-voice.md](references/shared/editorial-voice.md)
- ILPA Principles 3.0 (2019): https://ilpa.org/wp-content/uploads/2019/06/ILPA-Principles-3.0_2019.pdf
- ILPA Reporting Template (2025): https://ilpa.org/industry-guidance/templates-standards-model-documents/reporting-template
- Carta Fund Economics Report 2025 (4 Dec 2025): https://carta.com/data/fund-economics-report-2025-full-article/
- Carta LPA guide (Jun 2026): 8-10 year term plus 1-2 extensions, 3-5 year investment period
- LAVCA 2025 Industry Data: 65 LATAM-dedicated funds closed in 2024
