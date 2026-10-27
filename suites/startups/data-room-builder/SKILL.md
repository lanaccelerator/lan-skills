---
name: data-room-builder
description: >
  For STARTUP FOUNDERS preparing investor due diligence. ALWAYS invoke when a founder asks what
  documents investors will ask for, how to organize or audit a data room, wants a due
  diligence checklist, or needs the data room kept current between rounds. Spanish triggers:
  "armame el data room", "qué documentos piden los inversores?", "checklist de due
  diligence", "sala de datos para la ronda". Produces a stage-calibrated folder tree, document
  checklist with owners, completeness score, templates for the most-missed documents, and a
  weekly refresh from the company brain. NOT for deciding whether to raise (use
  fundraising-readiness-audit), running the raise (use fundraising-agent), building the deck
  (use pitch-deck-builder) or monthly investor updates (use investor-update-compiler).
categories: ["business", "startups", "venture-capital"]
metadata:
  author: lan-accelerator
  version: "1.2"
  suite: startups
license: MIT
---

# Data Room Builder

Integration skill that pulls together outputs from all prior startup skills to
produce a complete investor-ready data room. Generates a prioritized folder
structure, document checklist, completeness scorecard, and base templates for
the most commonly missing documents. Applies the Visible.vc data room structure, YC's
seed diligence guidance and the NVCA document set.

## Step 1: Input Gathering

First inventory what exists. If a company brain is connected, follow
references/shared/company-brain-integration.md sections 1-3: search for the cap table, SAFEs,
incorporation documents, financial model, KPI pages, deck, contracts, and any earlier
venture-model-validator or pitch-deck-builder output. With Drive or Notion connected, list the
existing data room folder. Mark each found document EXISTS with its path and date.

Then ask, in ONE message, only for what is still unknown:

1. **Company and stage:** pre-seed / seed / Series A / Series B
2. **Business model:** SaaS / marketplace / fintech / hardware / AI-native / other
3. **Legal setup:** entity, jurisdiction (local only, or Delaware/Cayman parent), cap table state
4. **Financial state:** runway, last 12 months revenue, reviewed or audited financials?
5. **Previous rounds:** amounts, investors, instruments (SAFE, notes, priced)
6. **Who will read it:** LATAM VCs, US VCs, family offices, corporates

Proceed on answers or on `[ASSUMPTION: ...]`.

## Step 2: Apply Frameworks

Read [references/folder-structure.md](references/folder-structure.md) before
generating the data room structure. Apply all frameworks in priority order:

- **Visible.vc standard data room**: primary folder structure and document list.
  Source: https://visible.vc/blog/startup-data-room/
- **YC seed diligence guidance**: what seed investors actually check.
  Source: https://www.ycombinator.com/library/4A-how-to-raise-money
- **NVCA model documents**: the Series A legal set (charter, SPA, investors'
  rights, voting, ROFR) a priced round will produce or require.
  Source: https://nvca.org/model-legal-documents/
- **Stage calibration**: Seed requires minimum 12 documents across 6 folders;
  Series A requires minimum 25 documents across 8 folders (see
  references/folder-structure.md for full lists)

## Step 3: Workflow

Execute in this exact order:

1. Gather inputs (Step 1 questions, confirm answers or state assumptions)
2. Determine completeness tier by stage:
   - Seed: 12 documents minimum across 6 folders
   - Series A: 25 documents minimum across 8 folders
3. Generate prioritized folder structure tree with document status
   (EXISTS / NEEDED / NICE-TO-HAVE)
4. For each required document: status, who creates it, standard format
   (PDF / Excel / Notion link)
5. Generate base templates for the 3 most commonly missing documents:
   (a) one-page executive summary, (b) use of funds breakdown,
   (c) cap table summary
6. Create completeness scorecard (% complete, critical missing items
   highlighted as BLOCKING or RECOMMENDED)
7. Populate the VC Backability and Pitch Materials sections from
   venture-model-validator and pitch-deck-builder output if found in Step 1
8. AI-native companies add: model and data provider contracts, data rights and
   privacy basis for training or inference data, gross margin with inference cost,
   and an evaluation or quality report for the core AI feature
9. Apply LATAM context from
   [references/latam-context.md](references/latam-context.md), LATAM VCs
   and family office LPs have distinct due diligence requirements
10. Output using the exact structure in [TEMPLATES.md](TEMPLATES.md)
11. End with Next Steps

## Step 4: Output Format

ALWAYS use the exact template structure in [TEMPLATES.md](TEMPLATES.md). Do not
change section headings, folder names, or field order. Fill every
[bracketed placeholder] with the user's actual data.

Output must include:
- Folder structure tree with document status (EXISTS / NEEDED / NICE-TO-HAVE)
- Document checklist with owner, format, and priority
- Completeness scorecard (% complete, blocking items)
- Base templates for top 3 missing documents
- LATAM Context box (jurisdiction-specific additions)
- Next Steps

Investors look at the index page and the one-page executive summary first. When either is
rendered as a page, PDF or slide, apply references/shared/deck-design-rules.md.

## Step 5: LATAM Context

Read [references/latam-context.md](references/latam-context.md) BEFORE
producing the final output.

Key LATAM data room differences vs US:
- LATAM seed VC diligence is usually lighter on legal review (incorporation +
  cap table + SAFEs) (directional, LAN operator read)
- Family offices investing directly often ask for reviewed or audited
  financials earlier, for rounds above USD 2M (directional)
- Jurisdiction-specific documents are mandatory (see latam-context.md for
  Mexico, Brazil, Colombia, Argentina requirements)
- Add a jurisdiction-specific folder (07-latam-legal/) for regional documents

## Weekly Auto-Refresh

A data room goes stale between rounds. When the company brain is connected,
keep the data room as brain pages (one index page plus one page per folder)
and refresh it weekly. Follow references/shared/company-brain-integration.md
sections 4 and 6.

1. **Schedule** a headless run every Monday morning, for example
   `claude -p "Run the data-room-builder skill in weekly refresh mode."` in
   Claude Code or `codex exec "Run the data-room-builder skill in weekly refresh mode."`
   in Codex, triggered by cron, launchd or a CI scheduled workflow.
2. **Pull** the latest KPIs and OKR status from connected sources (metrics
   sheet, billing, CRM, project tracker) and the brain's KPI and OKR pages.
   Update the data room's metrics pages with the new values and the date of
   each source. Never overwrite a value with a blank; a failed source is
   reported, not zeroed.
3. **Flag stale items** in the index page with a `STALE` status:
   - KPIs and financials: older than 35 days
   - OKRs: older than 7 days in the current quarter, or still showing last
     quarter
   - Cap table: older than the last issuance (SAFE, option grant) recorded
     in the brain
   - Pitch deck and executive summary: older than 90 days or older than the
     last KPI change above 20%
   - Legal documents: any document whose stated expiry date has passed
4. **Recompute** the completeness scorecard and add a dated line to a
   change log section on the index page (what changed, what went stale).
5. **Report** a short summary for the founder: refreshed items, new STALE
   items, failed sources. No files leave the brain and nothing is shared
   with investors automatically.

## Tone & Editorial Voice

See references/shared/editorial-voice.md, direct, no-sugarcoating, unicorn-bar
evaluation. You are NOT a cheerleader. If the work is weak, say it's weak. If it's
exceptional, acknowledge specifically.

## Step 6: Next Steps

End EVERY output with a prioritized list of which documents to complete first,
based on the completeness scorecard. Use the header `## Next Steps`.

Priority order: BLOCKING items first (investors will halt due diligence without
these), then RECOMMENDED items (strong preference but negotiable), then
NICE-TO-HAVE items.

Actions must be concrete:
- GOOD: "Get IP assignment agreements signed by all contractors within 7 days.
  This is the most common gap LAN sees in LATAM Seed due diligence."
- BAD: "Complete legal documentation"

## Sources

- [Folder Structure Reference](references/folder-structure.md), Seed and
  Series A folder taxonomies with document requirements
- [LATAM Context](references/latam-context.md), jurisdiction-specific
  requirements, LATAM VC vs. family office due diligence differences
- Visible.vc Data Room Guide: https://visible.vc/blog/startup-data-room/
- YC, A Guide to Seed Fundraising: https://www.ycombinator.com/library/4A-how-to-raise-money
- NVCA Model Legal Documents: https://nvca.org/model-legal-documents/
- venture-model-validator output: use scorecard summary to populate VC
  Backability section (if run)
- pitch-deck-builder output: use deck outline to populate Pitch Materials
  section (if run)
- references/shared/company-brain-integration.md - brain read/write and
  scheduled weekly refresh
