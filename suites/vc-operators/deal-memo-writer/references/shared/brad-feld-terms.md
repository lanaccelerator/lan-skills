# Brad Feld "Venture Deals" Term Sheet Taxonomy

**Source:** [Venture Deals: Be Smarter Than Your Lawyer and Venture Capitalist — Brad Feld & Jason Mendelson](https://www.amazon.com/Venture-Deals-Smarter-Lawyer-Capitalist/dp/1119594820) + companion site [AskTheVC.com](https://www.askthevc.com/)
**License/Attribution:** Book content summarized for reference. Cite as "Brad Feld, Venture Deals (4th ed.)" or "Feld & Mendelson."
**When to use:** term-sheet-generator (Phase 2), fundraising-agent (Phase 2), lp-term-sheet-analyzer (Phase 3). Referenced when structuring or analyzing any priced round or convertible instrument.

## Key Principles

Feld's taxonomy divides term sheets into two categories: economics (who makes money and how much) and control (who makes decisions). Most founder mistakes occur by over-negotiating economics and ignoring control terms — or vice versa.

### Core Principle

Every term has a price. Anti-dilution protection costs you in down-round scenarios. Participating preferred costs you in an acquisition. Board seats cost you in strategic pivots. Evaluate the bundle, not individual terms.

## Economic Terms

### Valuation

| Term | Definition | Standard Market Position |
|------|------------|--------------------------|
| Pre-money valuation | Company value before the investment | Negotiated; determines founder dilution |
| Post-money valuation | Pre-money + amount raised | Post-money = pre-money + investment |
| Option pool | Reserved shares for employee equity | Typically 10–20% of post-money; created pre-close (dilutes founders, not investors) |
| Option pool shuffle | VC requirement to expand pool before close, using pre-money math | Founders should negotiate smallest pool that covers 18-month hiring plan |

### Liquidation Preference

| Type | Mechanics | Founder Impact |
|------|-----------|---------------|
| 1× non-participating preferred | Investor gets 1× investment back OR converts to common, whichever is higher | Standard at Series A. Founder-friendly in high-exit scenarios. |
| 1× participating preferred | Investor gets 1× investment back AND participates in remaining proceeds as if converted | Anti-founder. Compounds with multiple rounds. |
| 2× participating preferred (or higher) | Investor gets 2× investment back before any common distribution | Rare in current market; seen in down rounds or distressed financings |
| Capped participation | Participating up to a cap (e.g., 3×), then converts | Compromise position; protects founders in mid-size exits |

**Market standard (2024-2026):** 1x non-participating at Series A and beyond *(directional, practitioner consensus)*. A SAFE carries no liquidation preference until it converts; at a liquidity event before conversion it pays back the purchase amount or converts, per the YC post-money SAFE (`safe-note.md`).

**Dilution anchors (US-sourced benchmark):** median dilution per priced round is about 19-20% at seed and 18% at Series A, and it is not rising (Carta, 2025). A term sheet implying well above 25% at one round needs a reason.

### Anti-Dilution

| Type | Mechanics | When Triggered |
|------|-----------|---------------|
| Full ratchet | Converts at lowest subsequent price, regardless of how many shares issued | Extreme investor protection; rare in current market |
| Broad-based weighted average | Adjusts conversion price by weighted average of all outstanding shares | Market standard. Reasonable founder protection. |
| Narrow-based weighted average | Adjusts using only preferred shares in denominator | More investor-favorable than broad-based |

**Market standard:** Broad-based weighted average anti-dilution.

### Dividends

- **Cumulative dividends:** Accrue whether paid or not; add to liquidation preference. Rare at Series A, common in later-stage structured deals.
- **Non-cumulative dividends:** Declared at board discretion. Standard.
- **Market standard:** Non-cumulative, non-compounding, 8% if specified (often excluded entirely).

## Control Terms

### Board Composition

| Round | Typical Structure |
|-------|------------------|
| Pre-seed (SAFE) | No board rights; advisory board only |
| Seed (priced) | 3-person board: 2 founders + 1 investor |
| Series A | 5-person board: 2 founders + 2 investors + 1 independent |
| Series B+ | Varies; investors often seek majority or parity |

### Protective Provisions (Investor Veto Rights)

Investors typically require veto rights on:
- Issuing new preferred stock (new round without consent)
- Changing charter documents
- Acquiring another company
- Liquidating or dissolving the company
- Paying dividends on common stock
- Increasing board size
- Taking on debt above a threshold

**Founder note:** These are standard. The time to negotiate is which events require only the lead investor's consent vs. a supermajority of the preferred class.

### Drag-Along Rights

Forces minority shareholders (usually founders and common holders) to approve a sale if a majority of preferred votes to sell.

- **Trigger threshold:** Typically requires majority of preferred AND majority of common to exercise drag-along.
- **Danger scenario:** If only preferred majority required, VCs can force a sale founders oppose.

### Information Rights

Standard: monthly financials, quarterly board meeting, annual audited statements. Cap table access. Right to inspect books.

### Pro-Rata Rights

Investor right to participate in future rounds to maintain ownership percentage.

- **Major investor threshold:** set in the term sheet; often tied to a minimum holding *(directional: $500K-$1M in US Series A practice)*.
- **Super pro-rata:** Right to invest more than pro-rata share in future rounds. Aggressive; usually resisted by founders.

## Stage-Appropriate Standards

| Stage | Instrument | Key Terms |
|-------|-----------|-----------|
| Pre-seed | YC post-money SAFE (cap, no discount) or uncapped MFN | Valuation cap, pro rata via side letter |
| Seed | YC post-money SAFE (cap, no discount) OR priced seed round | 1x non-participating preferred |
| Series A | Priced round | 1× non-participating, broad-based WA anti-dilution, 5-person board |
| Series B+ | Priced round | Similar to A; add more complex participation rights in down markets |

## Red Flags in Term Sheets

- Participating preferred + no cap → Founders penalized in every exit scenario
- Full ratchet anti-dilution → Catastrophic in down round
- Investor board majority before Series B → Control lost prematurely
- Drag-along requiring only preferred consent → Forced sale risk
- Cumulative dividends → Hidden liquidation preference that grows over time
- 2× liquidation preference → Not market standard; signal of distressed deal
