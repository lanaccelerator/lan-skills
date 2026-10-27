---
name: competitive-landscape-mapper
description: >
  For STARTUP FOUNDERS mapping who they compete with. ALWAYS invoke when a founder asks to map
  the competitive landscape, analyze or profile competitors, build a competitive matrix or
  2x2, or test their moat and defensibility. Spanish triggers: "quiénes son mis
  competidores?", "armame el mapa competitivo", "análisis de competencia", "cuál es mi
  ventaja defendible / mi moat?", "qué pasa si entra un grande?". Researches competitors live
  with sources, applies Porter's Five Forces and a moat taxonomy, and adds LATAM and AI-era
  dynamics. NOT for overall fundability (use venture-model-validator), the go-to-market plan
  (use go-to-market-strategist), pricing (use pricing-strategy-designer) or the competition
  slide of a deck (use pitch-deck-builder).
categories: ["business", "startups", "venture-capital"]
metadata:
  author: lan-accelerator
  version: "1.1"
  suite: startups
license: MIT
---

# Competitive Landscape Mapper

Maps the full competitive landscape using Porter's Five Forces and a defensibility
moat taxonomy. Produces a 2×2 competitive matrix, competitor profiles, a
differentiation matrix, structural threat assessment, and defensibility gap analysis
grounded in the user's actual market, not a generic template.

## Step 1: Input Gathering

If a company brain is connected, read it first (references/shared/company-brain-integration.md
sections 1-3): positioning, win/loss notes, sales call notes that mention competitors. Then ask,
in ONE message, only for what is missing, and proceed on stated assumptions.

1. **Company name and one-sentence description**
2. **Target market:** geography + customer segment
3. **Top 3–5 competitors already known** (name them, do not assume the user is
   unaware of obvious competitors; build from their list, then supplement)
4. **Two dimensions of differentiation** the user believes are most distinctive -
   these become the 2×2 axes (or propose axes if user is unsure)
5. **Stage and funding status**: calibrates defensibility timeline expectations
6. **Moats being built:** network effects / switching costs / data advantages /
   brand / scale economies / regulatory, which does the user believe applies?

If the user skips a question, proceed with a stated assumption flagged as
`[ASSUMPTION: ...]`. Do not silently skip inputs.

## Step 2: Apply Frameworks

Read [references/competitive-analysis-framework.md](references/competitive-analysis-framework.md)
BEFORE mapping. Apply all three frameworks:

1. **Porter's Five Forces** (HBR 1979):
   Threat of new entrants, supplier power, buyer power, threat of substitutes,
   industry rivalry. Apply to the user's industry structure, not just direct
   competitors. The biggest structural threat often comes from a force that is
   not a named competitor today.
   Source: https://hbr.org/2008/01/the-five-competitive-forces-that-shape-strategy

2. **Moat taxonomy** (NFX network effects, a16z on data moats, Hamilton
   Helmer's 7 Powers): network effects (direct/indirect), switching costs
   (data/workflow/contractual), data advantages (and their limits: a16z argues
   most data moats are weaker than founders think), brand, scale economies,
   regulatory moats. For each claimed moat: built today, or still to build?
   Sources: https://www.nfx.com/post/network-effects-bible,
   https://a16z.com/the-empty-promise-of-data-moats/

3. **CB Insights Market Map Methodology:**
   Organize competitors by category (what problem they solve), not by technology.
   A competitor using different technology to solve the same problem is still
   a direct competitor.
   Source: https://www.cbinsights.com/research/report/venture-capital-market-maps/

## Step 3: Workflow

Execute in this exact order:

1. Confirm or propose the two 2×2 axes, explain rationale if proposing
2. Place the startup and known competitors on the 2×2 (text description
   of quadrant positions, markdown cannot render graphics)
3. **Research live.** Use web search and page fetch to find competitors the
   user did not mention (direct, adjacent, incumbents, and the AI-native
   entrants and general AI assistants that substitute for the workflow). Tag
   them `[Added by analysis]`. Funding, customers, pricing and acquisitions
   come from a dated, linked source (company site, Crunchbase News, LAVCA
   Venture Bulletin, press). Unknown = `[not disclosed]`. Never invent a
   funding amount or customer count.
4. Build competitor profile table (7 columns) with a source per row
5. Build differentiation matrix (5–8 capability rows × each competitor)
6. Apply Porter's Five Forces to identify the biggest structural threat
7. Assess defensibility, moats built today vs moats required at next stage
8. Read [references/latam-context.md](references/latam-context.md) BEFORE
   producing LATAM context annotations
9. Output using the exact structure in [TEMPLATES.md](TEMPLATES.md)
10. Next Steps targeting the highest-priority defensibility gap

## Step 4: Output Format

ALWAYS use this exact template structure. Do not change section headings,
table columns, or field order. Fill every [bracketed placeholder] with real
analysis from the user's startup. See [TEMPLATES.md](TEMPLATES.md).

If the 2x2 or the map is rendered as an image, slide or one-pager, apply
references/shared/deck-design-rules.md: real logos in one tone, one accent
color for the user's company, sources under the chart.

Required output sections:
- **2×2 competitive matrix** (text description of quadrant positions, user
  in upper-right represents their differentiation thesis, not a manufactured claim)
- **Competitor profile table:** Name | Stage | Funding | Model | Strengths | Weaknesses | Direct/Indirect
- **Differentiation matrix:** capability rows × competitor columns with
  checkmarks and one-line commentary
- **Porter's Five Forces assessment:** Force | Risk Level | Commentary
- **Defensibility analysis:** current moats vs required moats at next stage
- **LATAM Context box** (from references/latam-context.md, apply where relevant)
- **Next Steps**

## Step 5: LATAM Context

Read [references/latam-context.md](references/latam-context.md) BEFORE
producing the final output. Apply LATAM-specific competitive dynamics:

- US incumbents rarely have a LATAM-specific sales motion, this is the
  asymmetry window. Document where the US incumbent falls short in the user's market.
- LATAM-first vs US-expanding competitive dynamics differ: local entrant
  has distribution advantage, US player has brand/capital advantage.
  Which is more durable in this specific market?
- Regulatory moats are more achievable in LATAM, local licensing creates
  structural barriers that US incumbents must replicate or work around.
- Language and culture as an underrated moat: support in Spanish/Portuguese
  with LATAM-native experience vs English-only US competitor is a real
  capability gap, especially for SME customers.
- AI-era dynamics (latam-context.md section 6): general AI assistants as
  substitutes, platform risk from model providers, and faster feature copying.

Label every LATAM-specific observation with `(LATAM)` tag.

## Tone & Editorial Voice

See references/shared/editorial-voice.md

Do not validate a weak moat story. If the user claims "our moat is our
technology" without specifying switching costs or network effects, flag it:
"[WEAK MOAT] Technology is not a moat, it is a head start. What prevents
a better-funded competitor from replicating your technology in 18 months?
Name the specific switching cost or network effect that compounds over time."

If the user claims "no real competitors," challenge it directly: "Every
market has alternatives. If buyers are not buying your product today, they
are solving the problem another way, that is a competitor. What are they
doing instead?"

## Step 6: Next Steps

End EVERY analysis with 3–5 specific next actions. Use header `## Next Steps`.

Focus on defensibility gaps: identify which moat to prioritize building
next quarter. Be specific about the action, not the outcome.

- Good: "Build a data flywheel by instrumenting [specific user action] and
  storing [specific data asset], this is the proprietary data moat that
  prevents a generic SaaS competitor from replicating your insights in 6 months"
- Bad: "Build competitive moats"

## Sources

- [Competitive Analysis Framework](references/competitive-analysis-framework.md), Porter + defensibility taxonomy
- [LATAM Context](references/latam-context.md), LATAM competitive dynamics
- Porter, "The Five Competitive Forces That Shape Strategy" (HBR 2008, updating the 1979 article): https://hbr.org/2008/01/the-five-competitive-forces-that-shape-strategy
- a16z, "The Empty Promise of Data Moats" (2019): https://a16z.com/the-empty-promise-of-data-moats/
- NFX, "The Network Effects Bible": https://www.nfx.com/post/network-effects-bible
- CB Insights Market Maps: https://www.cbinsights.com/research/report/venture-capital-market-maps/
