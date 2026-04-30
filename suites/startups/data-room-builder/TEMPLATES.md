# data-room-builder — Output Template

**ALWAYS use this exact template structure.** This file shows a filled example
for "Alegra-style B2B SaaS, Seed stage, raising $2M, Colombia-based."
Replace all values with the user's actual data.

---

## Example: B2B SaaS — Seed Stage ($2M raise, Bogotá, Colombia)

**Company:** Alegra-style (B2B accounting SaaS for LATAM SMBs)
**Stage:** Seed | **Raising:** $2M | **Jurisdiction:** Colombia (SAS entity)
**Prior skills run:** /pitch-deck-builder (deck outline available)
**Legal status:** Incorporated, cap table clean, 2 SAFE notes outstanding

---

## 1. Folder Structure Tree

```
data-room/
├── 01-pitch-materials/
│   ├── deck-v3.pdf                          [EXISTS — created with /pitch-deck-builder]
│   ├── exec-summary-1pg.pdf                 [NEEDED — template below]
│   └── product-demo-video.mp4               [NEEDED]
├── 02-company-overview/
│   ├── company-profile.pdf                  [EXISTS]
│   ├── product-screenshots.pdf              [EXISTS]
│   └── customer-testimonials.pdf            [NICE-TO-HAVE]
├── 03-financials/
│   ├── p-and-l-12months.xlsx                [EXISTS]
│   ├── financial-model-3yr.xlsx             [NEEDED — template structure below]
│   ├── cap-table.xlsx                       [EXISTS]
│   └── audited-financials.pdf               [NICE-TO-HAVE — required by family office LPs]
├── 04-legal/
│   ├── incorporation-docs.pdf               [EXISTS — Cámara de Comercio certificate]
│   ├── shareholder-rights-agreement.pdf     [NEEDED — BLOCKING]
│   ├── ip-assignments-contractors.pdf       [NEEDED — BLOCKING]
│   └── previous-safe-notes.pdf              [EXISTS]
├── 05-team/
│   ├── founder-bios.pdf                     [EXISTS]
│   ├── linkedin-profiles.pdf                [EXISTS]
│   └── org-chart.pdf                        [NEEDED]
├── 06-market/
│   ├── market-analysis.pdf                  [NEEDED]
│   └── competitive-landscape.pdf            [EXISTS — from /venture-model-validator]
└── 07-latam-legal/
    ├── camara-de-comercio.pdf               [EXISTS — Colombian requirement]
    ├── rut-document.pdf                     [EXISTS — Colombian tax registration]
    └── labor-contracts-summary.pdf          [NEEDED]
```

---

## 2. Document Checklist

| # | Document | Status | Priority | Owner | Format |
|---|---------|--------|----------|-------|--------|
| 1 | Pitch deck (current version) | EXISTS | REQUIRED | Founders | PDF |
| 2 | 1-page executive summary | NEEDED | REQUIRED | Founders | PDF |
| 3 | Company profile / product overview | EXISTS | REQUIRED | Founders | PDF |
| 4 | 12-month P&L | EXISTS | REQUIRED | Finance | Excel |
| 5 | 3-year financial model | NEEDED | REQUIRED | Finance | Excel |
| 6 | Cap table | EXISTS | REQUIRED | Legal / Finance | Excel |
| 7 | Incorporation documents | EXISTS | REQUIRED | Legal | PDF |
| 8 | Shareholder rights agreement | NEEDED | BLOCKING | Legal | PDF |
| 9 | IP assignment agreements (contractors) | NEEDED | BLOCKING | Legal | PDF |
| 10 | Prior SAFE notes | EXISTS | REQUIRED | Legal | PDF |
| 11 | Founder bios | EXISTS | REQUIRED | Founders | PDF |
| 12 | Competitive landscape | EXISTS | RECOMMENDED | Founders | PDF |
| 13 | Product demo video | NEEDED | RECOMMENDED | Product | MP4/Link |
| 14 | Customer testimonials / references | NICE-TO-HAVE | NICE-TO-HAVE | Sales | PDF |
| 15 | Audited financials | NICE-TO-HAVE | NICE-TO-HAVE (Required if family office) | Finance | PDF |

---

## 3. Completeness Scorecard

**Score: 8/15 documents complete (53%)**

```
Overall: [████████░░░░░░░] 53%

BLOCKING items incomplete: 2
  ✗ Shareholder rights agreement — deal-killer if missing
  ✗ IP assignment agreements — most common LATAM Seed due diligence failure

REQUIRED items incomplete: 3
  ✗ 1-page executive summary
  ✗ 3-year financial model
  ✗ Product demo video

RECOMMENDED items complete: 1/2
NICE-TO-HAVE items: not blocking
```

**Verdict:** Not ready to share with investors. Complete the 2 BLOCKING items
before sending data room access to any investor. A missing shareholder rights
agreement or IP assignment will halt due diligence immediately — fixing it
after due diligence starts signals disorganization.

---

## 4. Base Templates for Missing Documents

### Template A: 1-Page Executive Summary (Filled)

```
ALEGRA-STYLE — EXECUTIVE SUMMARY (Seed, $2M Raise)
——————————————————————————————————————————————————
COMPANY: [Name] | [City, Country] | Founded [Year]
THE PROBLEM: LATAM SMBs lose 8–12 hours/month on manual invoicing.
             No affordable, compliant solution exists for the $50B LATAM SMB market.

THE SOLUTION: [Product name] automates invoicing, reconciliation, and tax
              compliance for LATAM SMBs in 15 minutes of setup.

TRACTION:
  MRR: $[X] (+[X]% MoM) | ARR: $[X] | Customers: [X] SMBs
  NRR: [X]% | Logo Churn: [X]% monthly | CAC Payback: [X] months

MARKET: $[X]B SAM (LATAM SMBs with >5 employees using accounting software)
        Growing at [X]% CAGR through 2030 (LAVCA 2025)

TEAM: [Founder Name], [Role] — [1 key credential]
      [Co-founder Name], [Role] — [1 key credential]

THE ASK: $2M Seed at $[X]M pre-money cap
USE OF FUNDS: Product 40% / Sales 35% / G&A 25% — 18 months runway

INVESTORS TO DATE: [Existing investor names + amounts] via SAFE notes

CONTACT: [Name] | [email] | [phone/WhatsApp]
```

### Template B: Use of Funds Table (Filled)

| Category | Amount | % of Raise | Headcount | Rationale |
|----------|--------|-----------|-----------|-----------|
| Product & Engineering | $800k | 40% | 3 engineers | Core product roadmap; SAT/DIAN API integrations |
| Sales & Marketing | $700k | 35% | 2 SDRs + marketing | First outbound sales team; target 100 new customers |
| G&A (legal, ops, finance) | $350k | 17.5% | 1 ops hire | Legal setup completion, finance systems |
| Working Capital Reserve | $150k | 7.5% | — | 3-month cash buffer for runway protection |
| **Total** | **$2,000k** | **100%** | **+6 headcount** | **18 months runway at current burn** |

### Template C: 3-Year Financial Model (Structure)

```
STRUCTURE (fill with your numbers — do not share with investors unfilled):

Year 1 (Current):
  Starting ARR: $[X] | Ending ARR: $[X] | Growth: [X]%
  New customers: [X] | Churn: [X]% | NRR: [X]%

Year 2 (Post-seed):
  Starting ARR: $[X] | Ending ARR: $[X] | Growth: [X]%
  New customers: [X] | Churn: [X]% | NRR: [X]%

Year 3 (Series A target):
  Starting ARR: $[X] | Ending ARR: $[X] | Growth: [X]%
  New customers: [X] | Churn: [X]% | NRR: [X]%

Key assumptions to state explicitly:
  - CAC trend (should be declining as brand builds)
  - Gross margin trajectory (should be improving with scale)
  - Sales capacity (SDR quota attainment assumption)
  - Churn rate (must match historical cohort data)

LATAM NOTE: Show expansion to Brazil in Year 2 or Year 3 — LATAM investors
expect cross-border roadmap. Brazil-only or Mexico-only limits valuation.
```

---

## 5. LATAM Context Box

> **Colombia-specific requirements:**
> Colombian VCs (Bancolombia VC, Nazca) require the Cámara de Comercio
> registration certificate (issued within the last 30 days) in the legal
> section. This is NOT optional — it is the equivalent of a Delaware Certificate
> of Incorporation. Ensure the certificate is less than 30 days old when you
> share the data room, as it expires for legal purposes.
>
> **LATAM family office LPs:**
> At a $2M Seed, expect at least one family office LP to require audited
> financials. If you do not have them, get a "compilación financiera" (compiled
> financial statement from a CPA) — this is faster and cheaper than a full audit
> and satisfies most LATAM family office requirements at Seed *(LATAM, LAVCA 2025)*.
>
> **IP assignment agreements:**
> The most common LATAM Seed due diligence failure. Engineering contractors in
> Colombia, Mexico, and Brazil default to retaining IP rights under local labor
> law unless a signed IP assignment agreement says otherwise. If your dev team
> includes any contractors without signed agreements, due diligence will halt.

---

## 6. Next Steps

1. **Sign IP assignment agreements (next 7 days) — BLOCKING:**
   Contact your lawyer today. Template available from Stripe Atlas
   (stripe.com/atlas). This is the single most common deal-killer in LATAM
   Seed due diligence. Every engineer/contractor who touched the product
   must sign one.

2. **Draft shareholder rights agreement (next 14 days) — BLOCKING:**
   Use your existing lawyer or a startup-specialized firm (Posse Herrera
   Ruiz for Colombia; Galicia for Mexico). If cost is a concern, Y Combinator's
   Series AA documents are a starting point that LATAM VCs accept.

3. **Build 3-year financial model (next 14 days):**
   Use the template structure above. Do not share unfilled. Investors expect
   bottom-up assumptions, not top-down projections. Show MoM customer
   build with explicit CAC and churn assumptions.

4. **Create 1-page executive summary (next 7 days):**
   Use Template A above. This is the first document investors read — it must
   stand alone. 70% of investors decide whether to continue due diligence
   based on this page alone.

5. **Add 07-latam-legal/ folder and gather jurisdiction documents (next 21
   days):**
   Get a fresh Cámara de Comercio (30-day window), compile labor contracts
   summary, and confirm RUT document is current. LATAM VCs based in the US
   (Kaszek, ALLVP) will specifically request these in addition to standard
   legal documents.
