---
name: term-sheet-generator
description: >
  Use when a GP or associate needs to draft a priced-round term sheet for a startup
  (Pre-seed to Series B) or review and explain one term by term: valuation, option
  pool, liquidation preference, anti-dilution, board, protective provisions, pro-rata,
  drag-along, no-shop, SAFE vs priced round, LATAM vehicles (SAS, SAPI, S.A.).
  Spanish triggers: "armá un term sheet", "redactar term sheet", "revisá este term
  sheet", "qué significa esta cláusula", "liquidation preference", "es estándar de
  mercado?". NOT for LP-side fund terms or LPAs (use lp-term-sheet-analyzer), NOT for
  pricing the round (use startup-valuation-benchmark or startup-valuation-checker),
  NOT for the IC memo (use deal-memo-writer).
categories: ["business", "venture-capital", "fund-management"]
metadata:
  author: lan-accelerator
  version: "1.1"
  suite: vc-operators
license: MIT
---

# Term Sheet Generator

Two modes. **Mode A:** a GP drafts a priced-round term sheet with a Hold/Give position per
term. **Mode B:** an associate (or a founder's advisor) gets each term explained, compared to
market, and ranked by negotiation impact. Term definitions live in
references/shared/brad-feld-terms.md; this skill adds the application layer: stage norms,
negotiation levers, LATAM legal structures.

Output is a negotiation draft, not legal advice. Every LATAM deal needs local counsel before
signature; say so once in the output, not in every row.

## Step 1: Intake (one message)

Ask all in ONE message. Missing answers become `[ASSUMPTION: ...]`; do not stop.

1. Mode: (A) draft as lead GP, or (B) review/explain an existing term sheet (paste it)
2. Stage: Pre-seed / Seed / Series A / Series B
3. Instrument: priced round / post-money SAFE / KISS / convertible note
4. Mode A: company, round size, pre-money ask, are you leading, check size, target ownership
5. Fund context: Fund I or II+, LP mix (family office, DFI, institutional)
6. Geography of the company and its holdco (Delaware, Cayman, Brazil S.A., Mexico SAPI, Colombia SAS)
7. AI-native company? (if yes: compute commitments, model/data licensing, revenue quality)

## Step 2: Read before writing

- [references/term-sheet-draft-guide.md](references/term-sheet-draft-guide.md): market terms by
  stage, Hold/Give levers, red flags, SAFE vs priced decision guide.
- [references/shared/brad-feld-terms.md](references/shared/brad-feld-terms.md): all definitions.
  Apply, do not paraphrase.
- [references/shared/safe-note.md](references/shared/safe-note.md): SAFE/KISS variants.
- [references/latam-fund-context.md](references/latam-fund-context.md): for any LATAM deal.
- Valuation inputs come from the startup-valuation-benchmark skill when the user needs a price,
  not from this skill.

## Step 3: Workflow

### Mode A (GP drafting)

1. Pick the instrument with the SAFE vs priced guide (Section 4 of the draft guide).
2. **Economic terms**, each with draft position, market standard, range, Hold/Give:
   valuation and option pool (show the pool shuffle effect in founder dilution), liquidation
   preference (1x non-participating is the default; anything else needs a stated reason),
   anti-dilution (broad-based weighted average), dividends (non-cumulative).
3. **Control terms:** board sized to stage (3 seats at Seed is normal), protective provisions
   from the NVCA model list, drag-along (founders as co-signers, a price floor), pro-rata
   (major investor threshold), information rights.
4. **Administrative:** closing conditions, no-shop (NVCA leaves it blank; 30 to 60 days is seen
   in practice, push for 30), governing law, expenses cap.
5. **AI-native companies:** add, where relevant, reps on ownership of training data and model
   weights, disclosure of third-party model and data licenses, and treatment of prepaid compute
   or cloud credits (not revenue, not cash). Ask whether reported ARR includes pilots or
   usage that can be switched off.
6. **LATAM layer:** map each term to the local vehicle (latam-fund-context.md) and add closing
   conditions for regulatory approvals (CNBV, BCB/CVM, SFC) when the company needs a license.
7. Output Mode A from TEMPLATES.md, then the 2-3 terms where pushback is expected.

### Mode B (review)

1. For each term: Plain English | Why investors care | Why founders care | Red-flag version.
2. Compare to stage norm; label each term founder-friendly / market / investor-aggressive.
3. Overall verdict on the sheet and the top 3 terms to negotiate, ranked by economic and
   control impact, each with the current text, the market norm and the specific ask.

## Step 4: Output Format

ALWAYS use this exact template structure. Do not change section headings, table columns, or
field order. Fill every [bracketed placeholder] with real analysis from the user's deal. See
[TEMPLATES.md](TEMPLATES.md) for the filled example.

- **Mode A:** term sheet sections plus the lever table (Draft Position | Market Standard |
  Negotiating Range | Hold vs. Give)
- **Mode B:** term table (Plain English | Why Investors Care | Why Founders Care | Red Flag
  Version), market comparison, top 3 negotiating priorities

## Step 5: LATAM rules

- **Brazil:** portfolio companies use S.A. (Sociedade Anônima); preferred rights must be
  written into the estatuto social and the acordo de acionistas. Fund vehicles: FIP (CVM).
- **Mexico:** SAPI (Sociedad Anónima Promotora de Inversión) supports preferred-style rights,
  tag/drag and anti-dilution. Institutional local capital (AFOREs) comes through CKD/CERPI,
  which Fund I managers rarely use; offshore Cayman LP is the common Fund I route.
- **Colombia:** SAS supports preferred rights and convertibles; Cayman or Delaware holdco plus
  Colombian SAS is common for funds with international LPs.
- **Currency:** USD terms are the norm for offshore holdcos; BRL may be required in a FIP.
- **Governance:** a 3-seat board (2 founders, 1 lead) at Seed is appropriate; observers for
  non-leads. Do not import a 5-seat Series A board into a Seed deal.

## Tone & Editorial Voice

See [references/shared/editorial-voice.md](references/shared/editorial-voice.md).
- Mode A (GP voice): decisive. "HOLD on non-participating. Participating preferred at Seed
  signals the investor does not believe in a large exit."
- Mode B (associate voice): precise and even-handed; flag, do not advocate.
Never "this seems reasonable" or "somewhat aggressive".

## Next Steps

- **Mode A:** the sheet ready to send, plus hold/give on the 2-3 contested terms and the
  local-counsel review step with a date.
- **Mode B:** top 3 asks, each with current position, market norm, and exact wording to request.

## Sources

- NVCA Model Legal Documents (term sheet, SPA, voting, ROFR, IRA): https://nvca.org/model-legal-documents/
- Y Combinator SAFE documents (post-money SAFE): https://www.ycombinator.com/documents
- Brad Feld and Jason Mendelson, "Venture Deals" (4th ed., Wiley, 2019)
- references/shared/brad-feld-terms.md and references/shared/safe-note.md
- [references/term-sheet-draft-guide.md](references/term-sheet-draft-guide.md) and [references/latam-fund-context.md](references/latam-fund-context.md)
