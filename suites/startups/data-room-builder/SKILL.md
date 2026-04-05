---
name: data-room-builder
description: >
  Startup investor data room builder. ALWAYS invoke when a user asks what
  documents investors need, how to organize a data room, wants a due diligence
  checklist, or is preparing for fundraising due diligence. Applies Visible.vc
  template, NFX guide, and Stripe Atlas data room. NOT for pitch deck creation
  or go-to-market strategy planning.
categories: ["business", "startups", "venture-capital"]
metadata:
  author: lan-accelerator
  version: "1.0"
  suite: startups
license: MIT
---

# Data Room Builder

Integration skill that pulls together outputs from all prior startup skills to
produce a complete investor-ready data room. Generates a prioritized folder
structure, document checklist, completeness scorecard, and base templates for
the most commonly missing documents. Applies Visible.vc, NFX, and Stripe Atlas
data room standards.

If the user has run /venture-model-validator or /pitch-deck-builder, their
outputs auto-populate this data room. Ask for them in Step 1.

## Step 1: Input Gathering

Ask all seven questions in ONE message. Do not generate any output until you
have answers (or stated assumptions) for each.

1. **Company name and fundraising stage** — Seed / Series A / Series B
2. **Have you run /venture-model-validator?** If yes: paste the scorecard
   summary — it will auto-populate the VC Backability section of the data room
3. **Have you run /pitch-deck-builder?** If yes: paste the deck outline — it
   will auto-populate the Pitch Materials section
4. **Business model** — SaaS / marketplace / fintech / hardware / other
5. **Current legal setup** — incorporated? jurisdiction? cap table clean?
6. **Current financial state** — months of runway, last 12 months revenue,
   do you have audited financials?
7. **Previous rounds raised** — amount, investors, instruments (SAFEs? priced
   round?)

If the user does not answer a question, proceed with a stated assumption and
flag it: `[ASSUMPTION: ...]`. Do not silently skip inputs.

## Step 2: Apply Frameworks

Read [references/folder-structure.md](references/folder-structure.md) before
generating the data room structure. Apply all frameworks in priority order:

- **Visible.vc standard data room** — primary folder structure and document list.
  Source: https://visible.vc/blog/startup-data-room/
- **NFX data room completeness checklist** — document-by-document investor
  requirements and why each matters.
  Source: https://www.nfx.com/post/how-to-build-a-data-room/
- **Stripe Atlas required documents** — legal and corporate governance
  requirements for US-incorporated startups.
  Source: https://stripe.com/atlas/guides/data-room
- **Stage calibration** — Seed requires minimum 12 documents across 6 folders;
  Series A requires minimum 25 documents across 8 folders (see
  references/folder-structure.md for full lists)

## Step 3: Workflow

Execute in this exact order:

1. Gather inputs (Step 1 questions — confirm answers or state assumptions)
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
7. If user provided /venture-model-validator output: populate VC Backability
   section with scorecard data
8. If user provided /pitch-deck-builder output: populate Pitch Materials
   section with deck structure
9. Apply LATAM context from
   [references/latam-context.md](references/latam-context.md) — LATAM VCs
   and family office LPs have distinct due diligence requirements
10. Output using the exact structure in [TEMPLATES.md](TEMPLATES.md)
11. End with Próximos Pasos

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
- Próximos Pasos

## Step 5: LATAM Context

Read [references/latam-context.md](references/latam-context.md) BEFORE
producing the final output.

Key LATAM data room differences vs US:
- LATAM Seed VC due diligence is lighter on legal review (incorporation +
  cap table + SAFE notes sufficient for most LATAM Seed VCs)
- LATAM family office LPs require full audited financials earlier (often at
  Seed for rounds >$2M)
- Jurisdiction-specific documents are mandatory (see latam-context.md for
  Mexico, Brazil, Colombia, Argentina requirements)
- Add a jurisdiction-specific folder (07-latam-legal/) for regional documents

## Tone & Editorial Voice

See @shared/frameworks/editorial-voice.md — direct, no-sugarcoating, unicorn-bar
evaluation. You are NOT a cheerleader. If the work is weak, say it's weak. If it's
exceptional, acknowledge specifically.

## Step 6: Próximos Pasos

End EVERY output with a prioritized list of which documents to complete first,
based on the completeness scorecard. Use the header `## Próximos Pasos`.

Priority order: BLOCKING items first (investors will halt due diligence without
these), then RECOMMENDED items (strong preference but negotiable), then
NICE-TO-HAVE items.

Actions must be concrete:
- GOOD: "Get IP assignment agreements signed by all contractors within 7 days.
  This is the most common deal-killer in LATAM Seed due diligence."
- BAD: "Complete legal documentation"

## Sources

- [Folder Structure Reference](references/folder-structure.md) — Seed and
  Series A folder taxonomies with document requirements
- [LATAM Context](references/latam-context.md) — jurisdiction-specific
  requirements, LATAM VC vs. family office due diligence differences
- Visible.vc Data Room Guide: https://visible.vc/blog/startup-data-room/
- NFX Data Room Guide: https://www.nfx.com/post/how-to-build-a-data-room/
- Stripe Atlas Data Room: https://stripe.com/atlas/guides/data-room
- venture-model-validator output: use scorecard summary to populate VC
  Backability section (if run)
- pitch-deck-builder output: use deck outline to populate Pitch Materials
  section (if run)
