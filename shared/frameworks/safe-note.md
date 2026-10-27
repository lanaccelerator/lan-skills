# YC SAFE: Simple Agreement for Future Equity

**Source:** [YC Standard Documents, ycombinator.com/documents](https://www.ycombinator.com/documents) (post-money SAFE, YC's standard since 2018, plus the optional Pro Rata Side Letter). YC standard deal: [ycombinator.com/deal](https://www.ycombinator.com/deal).
**License/Attribution:** YC SAFE templates are published free for use. Cite as "YC post-money SAFE (2018 standard)".
**When to use:** term-sheet-generator, fundraising-agent, angel-investment-analyzer, startup-valuation-checker. Loaded when advising on pre-seed or seed financing structure. The SAFE is the dominant pre-seed instrument for startups with a US (Delaware) holding company, in LATAM and globally.

## Key Principles

1. **A SAFE is not debt.** No maturity date, no interest, no repayment obligation. It converts into equity at a priced round, or pays out at a liquidity event.
2. **Post-money cap = known ownership.** "On a post-money valuation cap SAFE, the ownership sold equals the investment divided by the valuation cap" (YC user guide). $500K on a $6.7M post-money cap is about 7.5%.
3. **That ownership is measured before the priced round.** The new money and any option pool increase in the priced round dilute SAFE holders and founders alike.
4. **SAFEs stack.** Every SAFE converts on its own terms. Several SAFEs at different caps dilute the founders, not the earlier SAFE holders, because each post-money SAFE fixes its own percentage. Model the stack before signing the next one.
5. **Keep the SAFE unmodified.** YC's guidance: give extra rights (pro rata, information) in a separate side letter, not by editing the SAFE.

## YC's Three Standard Post-Money Forms

| Form | Converts at | When it fits | Founder impact |
|------|-------------|--------------|----------------|
| Valuation Cap, no Discount | The cap price (investment / post-money cap) | Default for pre-seed and seed | Cleanest; dilution known at signing |
| Discount, no Valuation Cap | Priced-round price x (1 - discount) | Investor accepts the next round's price minus a discount | No ceiling on price; investor gets only the discount |
| Uncapped MFN (no cap, no discount) | Inherits better terms of any later SAFE issued before conversion | Very early checks; the $375K of YC's standard deal | Dangerous at scale: one aggressive later SAFE re-prices every MFN holder |

**Pro Rata Side Letter (optional):** gives the investor the right to buy into the priced round that converts the SAFE. It is not part of the SAFE itself.

**Non-standard variants:** a SAFE with both a cap AND a discount, or with an MFN plus discount, is not one of YC's current post-money forms. It is a modification: flag it, check it was drafted by counsel, and price the extra concession.

## YC Standard Deal (reference point, 2025)

$500K total: $125K for 7% (post-money SAFE) plus $375K on an uncapped MFN SAFE that takes the terms of the company's next equity round ([ycombinator.com/deal](https://www.ycombinator.com/deal)).

## Key SAFE Terms

| Term | Definition | Typical range |
|------|-----------|---------------|
| Valuation cap (post-money) | Maximum valuation used to set the conversion price | LATAM: see table below *(directional)* |
| Discount | Reduction on the priced-round price | 10-25%, 20% common *(directional)* |
| MFN | Holder adopts better terms granted in later SAFEs | Yes / no |
| Pro rata | Right to invest in the converting priced round | Side letter, usually for larger checks; threshold negotiated |

### LATAM Cap Ranges *(directional, LAN deal flow 2025-2026)*

| Stage | Post-money cap | Typical check |
|-------|----------------|---------------|
| Pre-pre-seed (idea, accelerator) | $1.5M-$5M | $25K-$150K |
| Pre-seed (product, little revenue) | $3M-$10M | $150K-$750K |
| Seed (revenue, early PMF) | $8M-$20M | $750K-$3M |

For the gap with the US: US seed pre-money averaged 156% above LATAM in 2015-2025 (Valoriza, via Diario Financiero, 2 Apr 2025), and the US seed median post-money was $24.3M in mid-2026 (Carta Data Desk, 10 Jul 2026). See `shared/frameworks/latam-benchmarks.md`.

### LATAM Legal Note

The YC SAFE assumes a US (usually Delaware) company. A startup incorporated only in a LATAM country cannot simply sign it: local convertible instruments exist (for example the "mútuo conversível" in Brazil), and enforceability, tax and FX registration differ by country. Flag this whenever the company has no US holding company and recommend local counsel.

## Common Negotiation Points

### Founders should push on
- **Post-money vs pre-money:** use the post-money form. Pre-money SAFEs (pre-2018) make dilution hard to predict.
- **Stacking:** total SAFE ownership sold before the priced round. Above ~20-25% combined, the priced round gets hard to lead *(directional)*.
- **Side letters:** grant pro rata only to investors who will actually use it.
- **No board rights** through a SAFE.

### Investors typically ask for
- Information rights (side letter): quarterly updates, annual financials.
- Pro rata in the next priced round (side letter).
- MFN on very early checks.

## Conversion Mechanics (Worked Example)

**Setup:** $500K SAFE on a $5M post-money cap. Later, Series A of $3M at $15M pre-money ($18M post-money), no pool increase.

1. SAFE ownership before the Series A: $500K / $5M = **10%**.
2. The Series A sells $3M / $18M = 16.7% of the post-round company.
3. SAFE holder after the Series A: 10% x (1 - 16.7%) = **~8.3%**.
4. The SAFE converts at the cap price because the cap ($5M) is below the round's pre-money ($15M); the investor gets roughly 3x more shares per dollar than the Series A investor.

## Red Flags in SAFE Terms

- Pre-money SAFE: unpredictable dilution.
- Modified YC form without a redline explanation: assume the change favors whoever drafted it.
- Cap AND discount in one SAFE: double concession, non-standard.
- MFN SAFEs outstanding when the company plans an aggressive later SAFE: every MFN holder re-prices.
- SAFE stack above ~25% of the company before the first priced round *(directional)*.
- LATAM-only company signing a US SAFE with no local legal opinion.
