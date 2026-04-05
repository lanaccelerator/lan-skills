---
name: term-sheet-generator
description: >
  For VC FUND OPERATORS drafting or reviewing term sheets. ALWAYS
  invoke when a GP needs to draft a priced round term sheet, or
  when a GP or associate needs to review and explain term sheet
  terms, negotiation levers, or market standards. NOT for analyzing
  term sheets from the LP perspective (use lp-term-sheet-analyzer
  for fund-level LP terms).
categories: ["business", "venture-capital", "fund-management"]
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: vc-operators
license: MIT
---

# Term Sheet Generator

Produces either a complete priced-round term sheet draft (GP Mode A) or a
term-by-term explanation and market standard comparison (Associate/Founder Mode B).
Economic and control term taxonomy live in @shared/frameworks/brad-feld-terms.md —
this skill builds the APPLICATION layer: negotiation context, LATAM-specific structures,
and market standards by stage.

## Step 1: Input Gathering

Ask ALL questions in ONE message. Do not begin drafting or reviewing until you have
answers (or stated assumptions) for each.

1. **Mode selection**: Are you (A) drafting a new term sheet as GP, or (B) reviewing/explaining an existing term sheet?
2. **Deal stage**: Pre-seed / Seed / Series A / Series B (market standards differ significantly by stage)
3. **Instrument type**: Priced equity round / SAFE / KISS / Convertible note
4. **If Mode A (drafting)**: Company name, valuation ask from founders, round size, lead investor status (are you leading?)
5. **If Mode B (reviewing)**: Paste or describe the specific terms you want explained or flagged
6. **Fund context**: Fund I or Fund II+? Primarily family office LPs? (affects governance complexity and board structure)
7. **Geography**: Mexico / Brazil / Colombia / pan-LATAM / US (LATAM legal structures differ significantly — see Step 5)

If any question is not answered, proceed with a stated assumption: `[ASSUMPTION: ...]`. Do not silently skip inputs.

## Step 2: Apply Frameworks

Read [references/term-sheet-draft-guide.md](references/term-sheet-draft-guide.md) BEFORE generating any output. Then:

- **@shared/frameworks/brad-feld-terms.md** — ALL term definitions, liquidation preference mechanics,
  anti-dilution types, protective provisions, drag-along, board composition by stage, information rights,
  pro-rata. Do NOT paraphrase or re-summarize this content — read the file and apply it directly.
- **@shared/frameworks/safe-note.md** — SAFE and KISS mechanics if instrument is pre-priced (all four
  variants: post-money cap, cap+discount, MFN, MFN+discount). LATAM cap benchmarks from Cuantico 2026 + LAVCA 2025.
- **NVCA Model Documents**: https://nvca.org/resources/model-legal-documents/ (standard US priced round templates)
- **Brad Feld "Venture Deals" (4th ed.)**: https://www.amazon.com/Venture-Deals-Smarter-Lawyer-Capitalist/dp/1119594820

## Step 3: Workflow

Branch by mode after gathering inputs.

### Mode A: GP Drafting

1. Confirm deal stage → load market standards for that stage from references/term-sheet-draft-guide.md
2. Generate **Economic Terms** with market standard position and negotiating range per term:
   - Valuation (pre-money, option pool, option pool shuffle)
   - Liquidation preference (type: non-participating / participating / capped)
   - Anti-dilution (broad-based WA is market standard — flag any deviation)
   - Dividends
3. Generate **Control Terms** with market standard positions:
   - Board composition (see brad-feld-terms.md for stage-appropriate structure)
   - Protective provisions (NVCA standard 11-item list)
   - Drag-along rights (threshold and trigger — founders must be co-signatories)
   - Pro-rata rights (major investor threshold)
   - Information rights
4. Generate **Administrative Terms**: closing conditions, no-shop window (max 45 days is market standard), governing law
5. Apply LATAM legal structure considerations from references/latam-fund-context.md
6. Output full term sheet in Mode A format from TEMPLATES.md with negotiation levers (Hold vs. Give per term)

### Mode B: Associate/Founder Review

1. Parse each term the user presents
2. For each term produce a 4-column explanation:
   - **Plain English** — what the term actually means, in one sentence
   - **Why investors care** — the economic or control motivation behind the term
   - **Why founders care** — the specific downside risk to founders
   - **Red flag version** — what the aggressive / non-market variant looks like
3. Compare each term against market standard for this stage (from references/term-sheet-draft-guide.md) — flag aggressive terms explicitly
4. Summarize overall term sheet aggressiveness: founder-friendly / market standard / investor-aggressive
5. Identify top 3 terms to negotiate, ranked by economic and control impact

## Step 4: Output Format

ALWAYS use the exact structure in [TEMPLATES.md](TEMPLATES.md).

- **Mode A**: Full term sheet sections with negotiation lever table (Draft Position | Market Standard | Negotiating Range | Hold vs. Give)
- **Mode B**: Term-by-term explanation table (Plain English | Why Investors Care | Why Founders Care | Red Flag Version) plus market standard comparison and top 3 negotiating priorities

## Step 5: LATAM Fund Context

Read [references/latam-fund-context.md](references/latam-fund-context.md) before finalizing any LATAM deal.

**Brazil:**
- FIP (Fundo de Investimento em Participações): Primary vehicle for PE/VC equity investments. Regulated by CVM.
- FIDC (Fundo de Investimento em Direitos Creditórios): For credit/receivables structures — fintech credit funds.
- Standard portfolio company equity: Sociedade Anônima (SA).

**Mexico:**
- SAPI (Sociedad Anônima Promotora de Inversión): Flexible equity structure for startups, accommodates SAFE-equivalent instruments.
- CKD (Certificados de Capital de Desarrollo) / CERPI (Certificados de Proyectos de Inversión): For institutional LPs (AFOREs). Require CNBV registration. Fund I GPs typically use offshore Cayman structure instead.

**Family office LPs (dominant in LATAM):**
- 3-person board (2 founders + 1 lead investor) is appropriate for LATAM Seed and Fund I — do not over-engineer governance
- Observer rights acceptable as alternative to full board seat for non-leads
- ILPA-full compliance is not required or expected for Fund I with family office LPs; quarterly calls acceptable in lieu of full ILPA reporting templates

**Currency:**
- USD-denominated terms are market standard even for LATAM-focused funds — provides stability and avoids FX-linked disputes
- Exception: BRL denomination may be required for Brazilian FIP structures with domestic institutional LPs

**Anti-dilution:**
- Broad-based weighted average is market standard everywhere in LATAM. Full ratchet is a red flag in any geography.

## Tone & Editorial Voice

See @shared/frameworks/editorial-voice.md.

- **Mode A (GP voice):** Decisive. Knows market standards cold. Recommends specific positions and explains the negotiating rationale. Does not hedge — "HOLD on non-participating; participating preferred is not market standard at Seed and signals misaligned incentives."
- **Mode B (Associate voice):** Precise, educational. Explains both the investor's and founder's perspective without editorializing on behalf of either party. Flags issues without advocacy — the reader decides what to do with the information.

Never write "this seems reasonable" or "somewhat aggressive." White is white, black is black.

## Step 6: Recommendation

- **Mode A**: Deliver final term sheet ready to send, with a brief summary of the 2–3 terms where you expect pushback and your hold/give position on each.
- **Mode B**: Top 3 negotiating points ranked by impact for the reviewer's perspective. For each: the current draft position, the market standard, and the specific ask to make.

## Sources

- @shared/frameworks/brad-feld-terms.md — all term definitions and taxonomy (primary source)
- @shared/frameworks/safe-note.md — SAFE and KISS mechanics, LATAM cap benchmarks
- [references/term-sheet-draft-guide.md](references/term-sheet-draft-guide.md) — market standards by stage, negotiation levers, red flags
- [references/latam-fund-context.md](references/latam-fund-context.md) — LATAM legal structures, family office governance norms
- NVCA Model Documents: https://nvca.org/resources/model-legal-documents/
- Brad Feld "Venture Deals" (4th ed.): https://www.amazon.com/Venture-Deals-Smarter-Lawyer-Capitalist/dp/1119594820
