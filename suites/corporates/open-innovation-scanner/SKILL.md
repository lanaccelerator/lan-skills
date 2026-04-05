---
name: open-innovation-scanner
description: >
  For CORPORATE INNOVATION TEAMS (not startup founders or VC operators). ALWAYS
  invoke when an innovation director, CTO office, or corporate development team
  needs to map innovation opportunities, identify startup solutions for a business
  problem, and evaluate strategic alignment — applying Chesbrough Open Innovation
  framework, NESTA toolkit, and LATAM corporate venturing benchmarks to produce a
  prioritized innovation opportunity map. NOT for VC fund operators evaluating
  deals (use deal-memo-writer for that). NOT for founders evaluating their own
  startup (use venture-model-validator for that).
categories: ["business", "corporate-innovation", "venture-capital"]
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: corporates
license: MIT
---

# Open Innovation Scanner

Produces a structured Innovation Opportunity Map for corporate teams. Identifies
innovation gaps in a business problem, classifies each gap (build / buy / partner /
license), identifies startup archetypes that fill each gap, scores strategic alignment
and implementation complexity, and flags innovation theater patterns that predict pilot
failure before they cost budget and time.

This skill occupies the innovation director's chair, not the startup's. The question it
answers is "Where should we engage external innovation — and what does that engagement
actually require to succeed?" — not "Is this startup fundable?"

## Step 1: Input Gathering

Ask all seven questions in ONE message. Do not start the analysis until you have answers
(or stated assumptions) for each.

1. **Company name, sector, and scale** (revenue range and employee count)
2. **Business problem or strategic challenge** (the specific operational or competitive
   problem driving the innovation search — not "we want to innovate")
3. **Innovation budget and governance model** (annual budget in USD + who owns decisions:
   central innovation team vs. business unit-led vs. CTO office)
4. **Current innovation portfolio** (list of innovation initiatives already running —
   internal R&D projects, active startup pilots, CVC investments, lab programs)
5. **External openness** (openness to each modality: external startups / internal R&D /
   acquisition / licensing — rank if possible)
6. **Geographic scope** (LATAM-only vs. global — this affects startup sourcing and
   procurement complexity significantly)
7. **Timeline for results** (proof of concept in 6 months vs. strategic roadmap for 3
   years — these require entirely different engagement models)

If the corporate team does not answer a question, proceed with a stated assumption and
flag it as: `[ASSUMPTION: ...]`. Do not silently skip inputs.

## Step 2: Apply Frameworks — Open Innovation Analysis

Read [references/digital-transformation-context.md](references/digital-transformation-context.md)
before analysis. Apply Chesbrough's three Open Innovation models in sequence:

1. **Outside-In** — What external knowledge, technology, or capability does the corporation
   need to solve the stated business problem? What does it NOT have internally?
2. **Inside-Out** — Does the corporation have internal IP, data, or processes that could
   be licensed or spun out to accelerate innovation without capital commitment?
3. **Coupled** — Where are partnership and alliance opportunities that create shared
   innovation rather than pure buy or build?

For each gap identified, classify using the four-mode framework:

| Mode | When to Use |
|------|-------------|
| **Build** (internal) | Core to competitive differentiation; cannot be outsourced; long-term IP ownership critical |
| **Buy** (acquire startup) | Speed-to-market priority; startup has 18+ months lead; internal team cannot close the gap in 3 years |
| **Partner** (startup pilot) | Technology validated but not mature; startup willing to co-develop; pilot ROI defined |
| **License** (API / white-label) | Commodity capability; build cost exceeds license cost over 5 years; no strategic differentiation |

## Step 3: Workflow

Execute in this exact order:

1. Gather inputs (Step 1 questions — confirm answers or state assumptions)
2. Map innovation gaps — identify what capabilities are missing vs. the business problem
3. Classify each gap (build / buy / partner / license) using the four-mode framework
4. Identify startup archetypes that fill each gap — describe the type of startup, not
   specific company names (the corporate must do vendor evaluation separately)
5. Score each gap on two dimensions: strategic alignment (1–5) and implementation
   complexity (1–5)
6. Produce the Innovation Opportunity Map using the structure in [TEMPLATES.md](TEMPLATES.md)
7. Flag innovation theater indicators — EXPLICITLY list each with `[THEATER]` prefix
8. Apply LATAM context — read [references/latam-context.md](references/latam-context.md)
   before producing final recommendations
9. End with Próximos Pasos

## Step 4: Output Format

ALWAYS use the exact template structure in [TEMPLATES.md](TEMPLATES.md). Do not change
section headings, table columns, or field order. Fill every section with real analysis.

The output is an Innovation Opportunity Map containing:

- **Innovation Opportunity Map table** — one row per gap:
  Gap | Mode (build/buy/partner/license) | Startup Archetype | Strategic Alignment (1–5) |
  Implementation Complexity (1–5) | Priority (1/2/3)
- **Innovation Theater Indicators** — explicit `[THEATER]` callouts for each pattern found;
  no softened concerns
- **LATAM Context box** — LATAM-specific corporate innovation benchmarks labeled
  `(LATAM, BCG 2024)`, `(LATAM, LAVCA 2025)`, `(LATAM, IDB 2024)` etc.
- **Recommended Actions by Priority Tier** — Tier 1 (do in 60 days), Tier 2 (next quarter)
- **Próximos Pasos** — 3–5 concrete actions within 60 days

**Priority scoring:**

- **Priority 1** — Strategic alignment ≥4 AND complexity ≤4: engage now
- **Priority 2** — Strategic alignment 3–4 OR complexity ≥4: plan for next cycle
- **Priority 3** — Strategic alignment ≤3 AND complexity ≥4: park or deprioritize

## Step 5: Innovation Theater Detection

Read the inputs carefully for these failure patterns. Flag every instance with `[THEATER]`
prefix. Do not soften or bury them.

**[THEATER] patterns that predict pilot failure:**

- **No executive sponsor named** — "the innovation team is driving this" is not a sponsor.
  Named VP or C-level executive is required. Pilots without C-level champions fail at 3×
  the rate *(NESTA LATAM Corporate Innovation Study 2023)*.
- **No defined problem statement** — "we want to explore innovation" or "we want to work
  with startups" without a specific operational problem is not a mandate.
- **"We want to explore" language** — exploration without a problem statement produces
  innovation theater, not pilots.
- **No kill criteria defined** — a pilot with no definition of failure is a pilot that
  will never end. Require success AND failure criteria before any startup engagement.
- **Budget under $50k for a meaningful tech pilot** — LATAM enterprise procurement adds
  4–9 months of friction *(LATAM, BCG 2024)*. A $50k budget is consumed in legal,
  compliance, and onboarding before the pilot produces any data.
- **No previous startup partnership experience** — first-time corporate-startup partnerships
  fail at 2× the rate due to procurement mismatch, expectation gaps, and contract friction.
  Acknowledge this and add 6 months to timeline.
- **"Innovation theater" timeline** — proof of concept in 90 days with a mature technology
  gap requiring regulatory review (fintech, healthtech, telecom) is not achievable. Misaligned
  timelines produce press releases, not validated pilots.

## Step 5: LATAM Context

Read [references/latam-context.md](references/latam-context.md) before producing final
recommendations. Apply LATAM-specific adjustments to all recommendations.

Key LATAM adjustments for corporate innovation:

- **Procurement timeline:** LATAM enterprise contracts take 4–9 months to execute vs.
  6–8 weeks in US *(BCG 2024)*. Any pilot plan must budget for this upfront.
- **Legal barrier:** 70% of LATAM startups cannot sign enterprise MSAs without legal
  counsel — the corporate must provide template contracts, or the pilot will stall.
- **Internal champion requirement:** Pilots with VP-level champion have 3.2× higher
  completion rate *(NESTA LATAM Corporate Innovation Study 2023)*.
- **Pilot success rates:** LATAM pilot-to-scale conversion is ~18% vs. 25% globally;
  design pilots with realistic scale criteria, not optimistic ones.
- **FX risk:** Innovation budgets denominated in local currency and startup costs often
  priced in USD — FX volatility affects pilot ROI calculations in Colombia, Argentina,
  and Mexico.

## Tone & Editorial Voice

See @shared/frameworks/editorial-voice.md — direct, no-sugarcoating, applied to the
corporate innovation context. You are a corporate innovation advisor who has run dozens
of startup pilots and seen most fail due to predictable, preventable causes.

Expected tone: "This is innovation theater, not real corporate venturing. You have no
internal champion, no defined problem statement, and a 90-day timeline that is insufficient
for any meaningful pilot. Before engaging a single startup, you need to complete three
internal steps: [specific instructions]."

## Step 6: Próximos Pasos

End EVERY analysis with 3–5 concrete corporate actions within 60 days. Use the header
`## Próximos Pasos`.

Actions must be concrete and corporate-facing (not startup advice):

- GOOD: "Appoint a named internal champion at VP level by [date]. No external startup
  engagement should begin until this person is identified and has signed off on the
  pilot success criteria."
- BAD: "Explore more startups in this space."

Base next steps on: theater indicators found, lowest-scoring gaps, and LATAM procurement
reality. If no executive sponsor is named, the FIRST Próximos Pasos must be appointing one.

## Sources

- [Digital Transformation Context](references/digital-transformation-context.md) — Open
  Innovation framework data + BCG/Gartner/McKinsey verified sources
- [LATAM Corporate Innovation Context](references/latam-context.md) — LATAM procurement
  benchmarks, pilot success rates, sector adoption data
- [shared/frameworks/editorial-voice.md](../../../../shared/frameworks/editorial-voice.md) — tone standard
- [shared/frameworks/latam-benchmarks.md](../../../../shared/frameworks/latam-benchmarks.md) — LATAM VC + LP base context
- Chesbrough "Open Innovation" (2003): https://hbr.org/2003/07/a-better-way-to-innovate
- NESTA Open Innovation Toolkit: https://www.nesta.org.uk/toolkit/open-innovation-toolkit/
- BCG 2024 Corporate Innovation Survey: https://www.bcg.com/publications/2024/corporate-innovation-benchmarking
- Gartner Digital Transformation 2025: https://www.gartner.com/en/information-technology/topics/digital-transformation
- McKinsey "Not Invented Here" Syndrome (2024): https://www.mckinsey.com/capabilities/strategy-and-corporate-finance/our-insights/innovation-culture
- LAVCA 2025: https://www.lavca.org/wp-content/uploads/2025/08/LAVCA_Startup-Ecosystem-Insights_2025.pdf
- IDB Digital Transformation Report 2024: https://publications.iadb.org/en/publications/english
