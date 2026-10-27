---
name: pilot-program-designer
description: >
  Use when a corporate innovation director, CTO/CDO office or business unit has chosen a
  startup and must design the pilot / proof of concept: SMART problem metric, 3-5 KPIs,
  phased timeline with go/no-go gates, budget including internal IT and legal, named
  decision owner, and mandatory kill criteria; covers AI-agent pilots (evaluation set,
  human escalation, data access, security, on-prem). Spanish triggers: "diseñar un
  piloto con una startup", "prueba de concepto", "POC con startup", "criterios de
  salida del piloto", "piloto de IA", "cómo medimos el piloto". NOT for choosing which
  startup (use startup-solution-matcher), NOT for the overall innovation strategy (use
  open-innovation-scanner), NOT for a CVC program (use corporate-venture-evaluator).
categories: ["business", "corporate-innovation", "venture-capital"]
metadata:
  author: lan-accelerator
  version: "1.1"
  suite: corporates
license: MIT
---

# Pilot Program Designer

Answers: "How do we structure this pilot so it ends in a real GO or NO-GO?" The defining rule:
**a pilot without explicit kill criteria is not a pilot, it is a zombie.** It keeps consuming
IT time and budget and never produces a decision. Every design this skill produces has
kill criteria.

## Step 1: Intake (one message)

Ask all eight in ONE message. Missing answers become `[ASSUMPTION: ...]`, except the two
hard stops below.

1. Company, sector, revenue range, employees
2. The problem as a metric: current state, target, date ("ticket resolution 48h to 12h by
   June 30"). **Hard stop:** without a metric, rewrite it as one and ask for confirmation.
3. Startup: what it does, enterprise customers, where it is incorporated
4. Pilot duration (30 / 60 / 90 / 180 days)
5. Budget in USD, including what is set aside for internal IT, legal and security review
6. Named internal champion (director or above) and the executive sponsor
7. IT, legal and data readiness: an engineer assigned? DPA and security review started? can
   the startup access production-like data? cloud, on-prem or air-gapped?
8. "It worked" in 12 months, as a number. **Hard stop:** "we'll know when we see it" is not an
   answer; require a threshold.

## Step 2: Design framework

Read [references/digital-transformation-context.md](references/digital-transformation-context.md)
(pilot structures from accelerator programs; note the data-status banner) and
[references/latam-context.md](references/latam-context.md). Five components:

1. **Problem statement (SMART):** business unit, segment, metric, baseline, target, date.
2. **KPIs (3-5):** lead indicators measured weekly or biweekly during the pilot, lag indicators
   at the decision gate; each with baseline, target, method, frequency. Score four kinds of
   success: technical (it works on real data), commercial (ROI over baseline), organizational
   (people keep using it), strategic (it informs a decision the company must make).
3. **Timeline:** Phase 0 (procurement, legal, security, data access: often longer than the
   pilot itself); Phase 1 integration and setup; Phase 2 limited live use; Phase 3 full use
   and decision. A formal go/no-go gate at two-thirds of the pilot, not only at the end.
4. **Budget:** startup fee, internal IT hours x rate, legal and security review, data
   preparation, contingency of at least 10%.
5. **Kill criteria:** mandatory (below).

### AI and agent pilots (add these when the startup sells AI)

- **Evaluation set first:** 100-500 real, labeled cases from the corporate's own data, agreed
  before Day 1; the startup's demo set does not count.
- **Metrics:** task accuracy on the evaluation set, escalation rate to humans, cost per
  resolved task vs the current process, error severity (one critical error can outweigh many
  correct answers in regulated work).
- **Human in the loop:** who reviews outputs during the pilot and at what sample rate.
- **Data and security:** signed DPA, data residency, model and data retention terms, whether
  customer data trains the vendor's models. If data cannot leave the building, require an
  on-prem or private deployment (YC RFS Winter 2027, "AI for the Air-Gapped Economy").
- **Reality check:** MIT NANDA's 2025 study found about 95% of generative AI pilots showed no
  measurable P&L impact; purchased or partnered tools did better than internal builds
  (directional, small sample). Design the P&L metric in from Day 1.

## Kill Criteria Rule

Every design includes all four:

1. **Success threshold** (GO): "Median resolution time <= 12 hours by Day 60."
2. **Failure threshold** (NO-GO): "Median resolution time > 30 hours at Day 60."
3. **Decision date:** a calendar date.
4. **Decision authority:** a named person. "The team will discuss" is not authority.

If the user has not defined kill criteria, output this and stop:

```
[NO KILL CRITERIA] This pilot has no kill criteria, so it will run with no decision.
"We'll evaluate at the end" is not a criterion. Define before proceeding:
- If [metric] is not [threshold] by [date], the pilot ends.
- If [metric] passes [failure threshold] by [date], the pilot ends.
- Who has authority to end it?
```

## Step 3: Workflow

1. Gather the 8 inputs (or assumptions); enforce the two hard stops.
2. Write the SMART problem statement.
3. KPI dashboard (3-5 KPIs; add the AI metrics when relevant).
4. Timeline with Phase 0 and the two gates.
5. Budget across the categories above.
6. Kill criteria table; trigger the `[NO KILL CRITERIA]` callout if missing.
7. Governance: weekly owner, escalation path, executive sponsor.
8. Risk register: top 3 risks with probability, impact, mitigation.
9. LATAM adjustments (Step 6), then the document and Next Steps.

## Step 4: Output Format

ALWAYS use this exact template structure. Do not change section headings, table columns, or
field order. Fill every [bracketed placeholder] with real analysis from the user's pilot. See
[TEMPLATES.md](TEMPLATES.md) for the filled example. Sections: SMART Problem Statement, KPI
Dashboard (Metric | Current Baseline | Target | Measurement Method | Frequency | Lead/Lag),
Timeline, Budget Breakdown (Category | Amount USD | Notes), Kill Criteria Table (Metric |
Success Threshold | Failure Threshold | Decision Date | Decision Authority), Governance, Risk
Register (Risk | Probability | Impact | Mitigation), LATAM Context, Next Steps.

## Step 5: Theater flags

Flag each with `[THEATER]`:
- No named champion at director level or above.
- Subjective success criteria ("user satisfaction" with no number).
- Budget covers the startup fee and zero internal IT or legal time.
- No executive sponsor accountable for the outcome.
- "We want to explore" with no problem metric.
- AI pilot run on demo data instead of the corporate's own cases.

`[NO KILL CRITERIA]` is its own callout, not a theater flag.

## Step 6: LATAM rules

- **Invoices before contract:** Brazil NF-e, Mexico CFDI (SAT), Colombia electronic invoice
  with CUFE (DIAN). A startup that cannot issue a valid invoice cannot be paid: pre-pilot gate.
- **Procurement:** often months, not weeks (directional). Put it in Phase 0 and measure the
  company's own last vendor onboardings.
- **Data protection:** LGPD (Brazil), LFPDPPP (Mexico), Habeas Data / Ley 1581 (Colombia):
  DPA review before any customer data moves; regulated sectors (banking, insurance, health,
  telecom) add regulator review.
- **FX:** local-currency budget, USD-priced startup: fix the rate assumption in the budget.
- Do not quote sector "zombie rates" or pilot conversion rates as statistics: no traceable
  source exists.

## Tone & Editorial Voice

See [references/shared/editorial-voice.md](references/shared/editorial-voice.md). Example: "No
named owner. 'The innovation team is handling it' loses every fight for IT time. Name the
person."

## Next Steps

End with 4-5 corporate actions inside 30 days, each with owner and date. Good: "Confirm the
startup can issue a DIAN-valid electronic invoice before signature." Bad: "Explore the product
further."

## Sources

- MIT NANDA, "The GenAI Divide: State of AI in Business 2025" (as reported by Fortune, 18 Aug 2025)
- Y Combinator, Requests for Startups, Winter 2027: https://www.ycombinator.com/rfs
- Techstars for corporations: https://www.techstars.com/corporations
- 500 Global for corporations: https://500.co/corporations
- Wayra (Telefónica's open innovation hub): https://www.wayra.com
- [references/digital-transformation-context.md](references/digital-transformation-context.md), [references/latam-context.md](references/latam-context.md)
