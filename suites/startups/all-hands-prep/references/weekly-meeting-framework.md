# Weekly Meeting Framework

The practices this skill combines, and the computation rules it applies.

## Grove: process-oriented meetings (High Output Management, 1983)

- Grove separates **process-oriented meetings** (recurring: one-on-ones,
  staff meetings, operation reviews) from **mission-oriented meetings**
  (ad hoc, to make one decision). The weekly all-hands is a staff meeting:
  its job is information exchange and decisions that need the group.
- Indicators come first: Grove's management is built on a small set of
  indicators reviewed on a fixed cadence, paired so that pushing one does
  not silently damage another (e.g. new customers paired with churn).
- Output: decisions and commitments, written down and distributed. A
  meeting that produces neither should not have happened.

## Doerr: weekly OKR check-ins and CFRs (Measure What Matters, 2018)

- OKRs are tracked weekly, not only scored at quarter end. Each Key Result
  owner reports progress and a confidence level.
- CFRs (Conversations, Feedback, Recognition) are the human side: the weekly
  meeting is where recognition is given for measurable wins.
- Key Results are graded 0.0-1.0 at quarter end; 0.7 is the target for
  stretch (aspirational) OKRs, 1.0 for committed ones.

## Wodtke: Monday commitments, Friday wins (Radical Focus, 2016)

- Monday: each team states its top 3 priorities for the week that move the
  OKR, plus a confidence score (1-10, Wodtke uses 5/10 as the healthy
  starting point for a stretch goal) per Key Result.
- Friday: each team shows what it shipped. The ritual builds the habit of
  finishing.
- This skill merges both into one agenda: last week's commitments are
  scored (Friday wins), this week's are proposed (Monday commitments).

## Lencioni: weekly tactical (Death by Meeting, 2004)

- Lightning round first (each person, under a minute, what they are on).
- Progress review on a handful of metrics.
- Real-time agenda: the topics come from what the review surfaces, not a
  pre-planned list. This skill implements that by turning surfaced blockers
  into the "Decisiones" block.
- Strategic topics that need more than 10 minutes are pushed to a separate
  meeting, not squeezed in.

## Computation rules

**Pace rule (on track / at risk / off track).** For a quarterly target,
expected progress at week w of 13 is `start + (target - start) * w / 13`.
- On track: actual at or above 95% of expected
- At risk: 80-95% of expected
- Off track: below 80% of expected
For non-linear metrics (seasonal businesses, launch-driven), use the owner's
own plan curve if it exists in the brain, and say so.

**Delta reporting.** Show absolute and % change week over week. For ratios
(churn, conversion) show percentage points, not percent of percent.

**Commitment delivery rate.** done / committed. Partial counts as 0.5. A
team below 60% two weeks in a row is over-committing or blocked; the agenda
flags it.

**Confidence.** Owner-reported 0-10. A drop of 3+ points in a week, or any
score of 3 or below, becomes a discussion item.

## Sources

- Grove, A. (1983). *High Output Management*. Random House.
- Doerr, J. (2018). *Measure What Matters*. Portfolio.
- Wodtke, C. (2016). *Radical Focus*. Cucina Media.
- Lencioni, P. (2004). *Death by Meeting*. Jossey-Bass.
- What Matters (Doerr), OKR resources: https://www.whatmatters.com/resources
