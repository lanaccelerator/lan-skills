# YC SAFE Note — Simple Agreement for Future Equity

**Source:** [YC Standard Documents — ycombinator.com/documents](https://www.ycombinator.com/documents)
**License/Attribution:** YC SAFE templates are published free for use. Cite as "YC SAFE (post-money, 2018 version)" or "YC SAFE (2018 revision)."
**When to use:** term-sheet-generator (Phase 2), fundraising-agent (Phase 2). Loaded when advising on pre-seed or seed financing structure. The SAFE is the dominant pre-seed instrument in LATAM and globally.

## Key Principles

1. **SAFE is not debt.** It has no maturity date, no interest, and no obligation to repay. It converts to equity at a future priced round or liquidity event.
2. **Post-money SAFEs (2018 revision) give founders certainty.** The valuation cap is the denominator for conversion calculation — founders can know exactly how much dilution they're taking.
3. **SAFE economics are set at conversion, not at signing.** The actual share price and dilution aren't determined until the Series A priced round triggers conversion.
4. **Multiple SAFEs stack.** SAFE holders convert at their respective terms. Stacking multiple SAFE rounds at different caps creates complex cap table math at Series A.

## Four SAFE Variants

### 1. Post-Money Cap, No Discount (Most Common)

**When to use:** Standard pre-seed; investor willing to wait for priced round; no urgency on their part.

**Mechanics:** SAFE converts at the lower of:
- Valuation cap ÷ fully-diluted post-money shares
- Series A price per share

**Founder impact:** Cleanest instrument. Dilution is predictable. Most LATAM pre-seed rounds use this variant.

### 2. Post-Money Cap with Discount

**When to use:** When investor wants both a cap and a discount as separate concessions.

**Mechanics:** SAFE converts at the lower of:
- Valuation cap conversion price
- Series A price × (1 - discount rate), typically 80% (20% discount) to 85% (15% discount)

**Founder impact:** More dilutive than cap-only. Two separate downside protections for investor.

### 3. MFN (Most Favored Nation), No Cap

**When to use:** Very early stage where no cap can be agreed; angel hedge — they get whatever terms future investors get.

**Mechanics:** If company issues a future SAFE with better terms (lower cap, higher discount), existing MFN holder gets the same improved terms automatically.

**Founder impact:** Dangerous at scale — if first institutional investor gets aggressive terms, all MFN SAFEs adopt those terms.

### 4. MFN with Discount, No Cap

**When to use:** Extremely early; investor wants MFN protection plus a discount regardless of future terms.

**Founder impact:** Least founder-friendly. Avoid unless early FFF (Friends, Family, Fools) round.

## Key SAFE Terms

| Term | Definition | Typical Range |
|------|-----------|---------------|
| Valuation Cap | Maximum company valuation at which SAFE converts | Pre-seed: $3M–15M; Seed: $10M–30M in LATAM |
| Discount Rate | % reduction on Series A price at conversion | 10–25%; 20% most common |
| MFN | Automatic adoption of better future SAFE terms | Binary (yes/no) |
| Pro-Rata Rights | Right to invest in Series A to maintain % ownership | Standard for checks >$100K |

### LATAM Cap Benchmarks (Cuantico 2026 + LAVCA 2025)

| Stage | LATAM Cap Range (USD) | Context |
|-------|----------------------|---------|
| Pre-pre-seed (idea) | $1.5M–$5M | Angel/accelerator check sizes $25K–$150K |
| Pre-seed (product, no revenue) | $3M–$10M | Typical LAN Accelerator entry point |
| Seed (revenue, early PMF signals) | $8M–$20M | LATAM top-quartile startups |
| Note: LATAM caps are 40–60% below equivalent US caps at same stage | | |

## Common Negotiation Points

### Founders Should Push On

- **Post-money vs. pre-money:** Always use post-money SAFE. Pre-money SAFEs (pre-2018) create unpredictable dilution math.
- **Option pool treatment at conversion:** Ensure SAFE conversion math includes post-close option pool (standard in post-money SAFE).
- **Pro-rata trigger size:** Set pro-rata threshold at $100K+ to limit number of investors with rights.
- **Board rights:** SAFE should have no board rights. Any observer rights should expire at Series A.

### Investors Typically Require

- **Information rights:** Annual financials, quarterly updates. Standard.
- **Pro-rata in next qualified round:** Typical for checks >$50K.
- **MFN clause:** For first-check investors at very early stage.

## Conversion Mechanics (Worked Example)

**Setup:**
- Company raises $500K on a SAFE with $5M post-money cap
- Series A: $3M raised at $15M pre-money valuation ($18M post-money)

**Conversion calculation:**
- SAFE cap: $5M → conversion price = $5M / (fully diluted shares at $5M cap)
- Series A price: $18M / fully diluted post-money shares
- SAFE converts at the lower price (the cap price, since $5M < $18M)

**Dilution result:**
- SAFE investor owns: $500K / $5M cap = 10% of the company at conversion
- This 10% is calculated on the post-money cap, so it is predictable before Series A

## Red Flags in SAFE Terms

- Pre-money SAFE → unpredictable dilution; avoid
- "Shadow SAFE" (two separate SAFEs with conflicting caps on same financing) → cap table chaos at Series A
- SAFE with participation rights at conversion → not standard; converts SAFE into preferred equivalent
- Valuation cap tied to "next financing" that includes bridge rounds → can trigger conversion prematurely
- No MFN clause when SAFE is in a "friends and family" round → early angels get worse terms than next angels
