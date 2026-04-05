---
name: competitive-landscape-mapper
description: >
  For STARTUP FOUNDERS. Competitive analysis and landscape mapping.
  ALWAYS invoke when a user asks to map their competitive landscape,
  analyze competitors, build a competitive matrix, or understand
  their defensibility and moat. NOT for evaluating VC-backability
  overall (use venture-model-validator for full fundability analysis).
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: startups
license: MIT
---

# Competitive Landscape Mapper

Maps the full competitive landscape using Porter's Five Forces and a defensibility
moat taxonomy. Produces a 2×2 competitive matrix, competitor profiles, a
differentiation matrix, structural threat assessment, and defensibility gap analysis
grounded in the user's actual market — not a generic template.

## Step 1: Input Gathering

Ask all six questions in ONE message. Do not begin mapping until you have
answers (or stated assumptions) for each.

1. **Company name and one-sentence description**
2. **Target market:** geography + customer segment
3. **Top 3–5 competitors already known** (name them — do not assume the user is
   unaware of obvious competitors; build from their list, then supplement)
4. **Two dimensions of differentiation** the user believes are most distinctive —
   these become the 2×2 axes (or propose axes if user is unsure)
5. **Stage and funding status** — calibrates defensibility timeline expectations
6. **Moats being built:** network effects / switching costs / data advantages /
   brand / scale economies / regulatory — which does the user believe applies?

If the user skips a question, proceed with a stated assumption flagged as
`[ASSUMPTION: ...]`. Do not silently skip inputs.

## Step 2: Apply Frameworks

Read [references/competitive-analysis-framework.md](references/competitive-analysis-framework.md)
BEFORE mapping. Apply all three frameworks:

1. **Porter's Five Forces** (HBR 1979):
   Threat of new entrants, supplier power, buyer power, threat of substitutes,
   industry rivalry. Apply to the user's industry structure — not just direct
   competitors. The biggest structural threat often comes from a force that is
   not a named competitor today.
   Source: https://www.hbs.edu/faculty/Pages/item.aspx?num=195

2. **a16z Defensibility Framework:**
   Moat taxonomy: network effects (direct/indirect), switching costs
   (data/workflow/contractual), data advantages (proprietary/scale/unique),
   brand, scale economies, regulatory moats. For each claimed moat, evaluate:
   is this moat currently built or must it be built?
   Source: https://a16z.com/defensibility/

3. **CB Insights Market Map Methodology:**
   Organize competitors by category (what problem they solve) — not by technology.
   A competitor using different technology to solve the same problem is still
   a direct competitor.
   Source: https://www.cbinsights.com/research/report/venture-capital-market-maps/

## Step 3: Workflow

Execute in this exact order:

1. Confirm or propose the two 2×2 axes — explain rationale if proposing
2. Place the startup and known competitors on the 2×2 (text description
   of quadrant positions — markdown cannot render graphics)
3. Identify any obvious competitors the user did not mention based on their
   market description — add with `[Added by analysis]` tag
4. Build competitor profile table (7 columns)
5. Build differentiation matrix (5–8 capability rows × each competitor)
6. Apply Porter's Five Forces to identify the biggest structural threat
7. Assess defensibility — moats built today vs moats required at next stage
8. Read [references/latam-context.md](references/latam-context.md) BEFORE
   producing LATAM context annotations
9. Output using the exact structure in [TEMPLATES.md](TEMPLATES.md)
10. Próximos Pasos targeting the highest-priority defensibility gap

## Step 4: Output Format

ALWAYS use the exact template structure in [TEMPLATES.md](TEMPLATES.md).
Do not change section headings, table columns, or field order.

Required output sections:
- **2×2 competitive matrix** (text description of quadrant positions — user
  in upper-right represents their differentiation thesis, not a manufactured claim)
- **Competitor profile table:** Name | Stage | Funding | Model | Strengths | Weaknesses | Direct/Indirect
- **Differentiation matrix:** capability rows × competitor columns with
  checkmarks and one-line commentary
- **Porter's Five Forces assessment:** Force | Risk Level | Commentary
- **Defensibility analysis:** current moats vs required moats at next stage
- **LATAM Context box** (from references/latam-context.md — apply where relevant)
- **Próximos Pasos**

## Step 5: LATAM Context

Read [references/latam-context.md](references/latam-context.md) BEFORE
producing the final output. Apply LATAM-specific competitive dynamics:

- US incumbents rarely have a LATAM-specific sales motion — this is the
  asymmetry window. Document where the US incumbent falls short in the user's market.
- LATAM-first vs US-expanding competitive dynamics differ: local entrant
  has distribution advantage, US player has brand/capital advantage.
  Which is more durable in this specific market?
- Regulatory moats are more achievable in LATAM — local licensing creates
  structural barriers that US incumbents must replicate or work around.
- Language and culture as an underrated moat: support in Spanish/Portuguese
  with LATAM-native experience vs English-only US competitor is a real
  capability gap, especially for SME customers.

Label every LATAM-specific observation with `(LATAM)` tag.

## Tone & Editorial Voice

See @shared/frameworks/editorial-voice.md

Do not validate a weak moat story. If the user claims "our moat is our
technology" without specifying switching costs or network effects, flag it:
"[WEAK MOAT] Technology is not a moat — it is a head start. What prevents
a better-funded competitor from replicating your technology in 18 months?
Name the specific switching cost or network effect that compounds over time."

If the user claims "no real competitors," challenge it directly: "Every
market has alternatives. If buyers are not buying your product today, they
are solving the problem another way — that is a competitor. What are they
doing instead?"

## Step 6: Próximos Pasos

End EVERY analysis with 3–5 specific next actions. Use header `## Próximos Pasos`.

Focus on defensibility gaps: identify which moat to prioritize building
next quarter. Be specific about the action, not the outcome.

- Good: "Build a data flywheel by instrumenting [specific user action] and
  storing [specific data asset] — this is the proprietary data moat that
  prevents a generic SaaS competitor from replicating your insights in 6 months"
- Bad: "Build competitive moats"

## Sources

- [Competitive Analysis Framework](references/competitive-analysis-framework.md) — Porter + defensibility taxonomy
- [LATAM Context](references/latam-context.md) — LATAM competitive dynamics
- Porter's Five Forces (HBR 1979): https://www.hbs.edu/faculty/Pages/item.aspx?num=195
- a16z Defensibility: https://a16z.com/defensibility/
- CB Insights Market Maps: https://www.cbinsights.com/research/report/venture-capital-market-maps/
