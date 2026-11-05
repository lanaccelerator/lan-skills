# Certification Costs and the Certify-or-Wait Decision

**Sources:**
- getagency.com (SOC 2 cost and timeline ranges): https://www.getagency.com
- scrut.io, ISO 27001 certification cost: https://www.scrut.io/hub/iso-27001/iso-27001-certification-cost
- consilien.com (SOC 2 and ISO 27001 cost ranges): https://consilien.com
- Comp AI: https://trycomp.ai
- Vanta: https://www.vanta.com ; Drata: https://drata.com ; Secureframe: https://secureframe.com ; Sprinto: https://sprinto.com

All figures are US-sourced ranges for small companies, all-in (auditor, readiness,
tooling, internal time). LATAM auditors may quote lower; get two quotes.

---

## 1. Cost and time

| Option | All-in cost | Time to report or certificate | What the buyer gets |
|---|---|---|---|
| SOC 2 Type I | US$30-80K | 2-4 months | Controls are designed correctly at one point in time |
| SOC 2 Type II | US$60-160K | 6-14 months (includes an observation window) | Controls operated effectively over a period |
| ISO 27001 | US$15-50K year 1 | 3-10 months | Certified information security management system; surveillance audits yearly, recertification every 3 years |

SOC 2 and ISO 27001 share about 80% of their controls. Build the control set once and map
it to both; the second framework costs much less than the first.

## 2. Which one

| Signal in the pipeline | Start with |
|---|---|
| US enterprise buyers, US-based SaaS procurement | SOC 2 (Type I first, Type II after) |
| LATAM or European corporates, banks, insurers, regulators | ISO 27001 (directional: confirm with your top 5 prospects) |
| Mixed | ISO 27001 or SOC 2 depending on the largest deal; map controls to the other |
| Buyers only send their own questionnaire | No certification yet: answer bank + trust page |

## 3. Decision rule

Certify when either is true:
1. Expected value of deals in the next 12 months that require the certification (deal
   value x probability) is at least 3x the all-in cost.
2. One strategic buyer makes it a signed condition with a date, and the deal alone
   justifies the cost.

Otherwise wait, and keep closing with Stage 0-2: basics, answer bank, trust page, a
"roadmap letter" stating which framework you are working toward and when.

Worked check: ISO 27001 at US$30K needs about US$90K of risk-weighted pipeline that
requires it. Three deals of US$50K at 60% probability = US$90K: certify.

## 4. Automation tools

| Tool | Model | Notes |
|---|---|---|
| Comp AI (trycomp.ai) | Open source, AGPL | Cheapest path; the open source version can be self-hosted; check AGPL obligations if you modify and offer it as a service |
| Vanta | Paid | Broad integrations, questionnaire automation, trust center |
| Drata | Paid | ~US$10K/yr for a single framework, as reported by founders |
| Secureframe | Paid | Comparable feature set |
| Sprinto | Paid | Comparable feature set; compare quotes |
| Spreadsheet + policy templates | Free | Enough for Stage 0-2; becomes painful when an audit starts |

Platforms automate evidence collection and policies; they do not replace the auditor or
the work of operating the controls. Negotiate: annual prices move a lot with timing and
competing quotes.

## 5. Readiness sequence (once you decide to certify)

1. Scope: which product, systems, people and locations are in.
2. Gap assessment against the framework.
3. Policies written and approved; controls implemented.
4. Evidence collection running (tool or spreadsheet).
5. For ISO 27001: internal audit and management review; for SOC 2 Type II: observation
   window.
6. External audit. Fix findings. Publish the report or certificate in the trust page.
