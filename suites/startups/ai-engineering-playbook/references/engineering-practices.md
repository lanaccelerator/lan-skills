# Engineering Practices for AI-Agent Teams

**Sources:**
- Anthropic, "The new rules of context engineering" (claude.dev blog): https://claude.dev/blog/the-new-rules-of-context-engineering-for-claude-5-generation-models/
- Claude Code subagents: https://code.claude.com/docs/en/sub-agents
- Anthropic, "The advisor strategy": https://claude.com/blog/the-advisor-strategy
- AGENTS.md: https://agents.md
- OWASP Top 10 for LLM Applications 2025: https://genai.owasp.org/llm-top-10/
- LAN Brain workflow-bench (Aug 2026)

---

## 1. Docs as memory

### What to write, where

| Doc | Path | Updated when |
|---|---|---|
| Instructions file (map + hard rules) | `AGENTS.md` (or `CLAUDE.md` importing it) | A rule or command changes |
| PRD / spec per feature | `docs/specs/<feature>.md` | Before building; amended in the PR that changes scope |
| Decisions (ADR, one per decision) | `docs/decisions/NNN-<slug>.md` | When an architectural choice is made or reversed |
| Learnings (what went wrong, the fix, the rule) | `docs/learnings/` or the company brain | After any incident or surprising bug |
| Runbooks (deploy, rollback, rotate a key) | `docs/runbooks/` | After doing the task once by hand |

If the team uses a company brain (LAN Brain or another MCP-connected knowledge base), the
same pages live there and the agent reads them through MCP. Plain markdown in the repo
works with every agent and needs no extra tool.

### Benchmark (LAN Brain workflow-bench, Aug 2026, 165 runs of real tasks)

| Condition | Result |
|---|---|
| Curated brain vs raw files | -67% tokens, -52% time, at least the same quality |
| Cheaper model class (Opus) + curated docs vs top class (Fable) alone | 82.9 vs 79.6 out of 100 |
| After fixing 3 stale pricing pages | +56 points across all 4 models tested |

Reading: curation is a bigger lever than model choice; staleness is the most expensive
defect a doc set can have.

### Hygiene rules

- Same-PR rule: code that changes behavior updates the doc that describes it.
- One source per fact. Link, do not copy. Copies drift.
- Date every decision and learning. Undated pages cannot be judged stale.
- Monthly: ask the agent to list docs that contradict the code, and fix or delete them.

---

## 2. Model routing and the orchestrator pattern

### Routing by class

| Class | Use for | Avoid for |
|---|---|---|
| Top class (Fable) | Planning, architecture, synthesis, final review, anything with real judgment | Sweeps, tests, judges |
| Opus | Implementation, hard subagent work, non-trivial edits | Trivial or high-volume steps |
| Sonnet | Research sweeps, mechanical edits, cheap parallel subagents; judges when writing quality is measured | Architecture calls |
| Haiku | Trivial high-volume steps, LLM judges, checks, classification | Anything ambiguous |

Name classes, never version numbers, in docs and configs that humans read. Map the alias
to a concrete model in one config place so a release is a one-line change.

### Orchestrator + subagents

- The orchestrator (top class) decides what the change is, writes what carries judgment,
  reviews subagent output and talks to the human.
- Subagents get the full spec up front and return conclusions plus file paths, not file
  dumps. Rule of thumb: before reading more than about 3 files to answer one question,
  delegate.
- Independent subagents run in parallel.
- If the top class is unavailable mid-run, switch to the next class, note it, keep going.

### Advisor strategy (runtime)

For a product that calls models at runtime: run the small model by default and let it
consult the big one only on hard cases. Measure the share of calls that escalate; rule of thumb: if it
passes ~20%, the small model is under-specified or the task needs a bigger default.

### Re-run on new models

Keep a short list of critical work to re-run the day a new model ships: the eval set,
the 5-10 key prompts, the judge calibration set and the main end-to-end flows. Record
score, cost and latency per class in a dated page. Remove workarounds the new model no
longer needs.

---

## 3. Tests and LLM judges on a budget

| Rule | Detail |
|---|---|
| Deterministic first | Assertions, types, snapshots. LLM judges only for what code cannot check |
| Cheapest adequate judge | Haiku by default; Sonnet only when writing quality is the measure; never the top class or Opus |
| Budget before running | Estimate tokens x price x runs; set a hard cap per run and per month |
| Sample, do not dump | Judge excerpts and 20-50 sampled cases, not every full transcript |
| Log every run | Tokens in, tokens out, cost, model class, pass rate |
| Who pays | Dev-time LLM work on subscription usage (headless agent runs); API keys only for the product runtime, one per project |
| Calibrate the judge | 20 human-labeled cases; rule of thumb: trust the judge only above ~85% agreement |

Cost formula for a run: `cases x (input tokens + output tokens) x price per token x judge passes`.
Write the number in the PR that adds the test.

---

## 4. Adversarial review panel

### When

Before production for any change that touches authentication, authorization, multi-tenant
data, billing, personal data or anything that decides who sees what. Run it against the
merged code (or the final PR head), not an earlier draft.

### Lenses

| Lens | Questions the reviewer must try to break |
|---|---|
| Malicious insider | Can a valid user read, edit or delete another user's or tenant's data? Escalate role? Abuse an admin endpoint? |
| Cross-tenant / null token | What happens with another tenant's ID, no token, an expired token, a malformed token, a token for a deleted user? |
| Staleness | Does revoked access still work through a cache, a long-lived session or a background job? Does a downgraded plan keep paid features? |
| Spec fidelity | Does the code match the spec and public docs, including error paths and what the UI promises? |

Each lens runs as an independent reviewer (a separate agent session with only that lens
and the diff, or a person). Reviewers do not see each other's findings until the end.

### Result format

| # | Lens | Finding | Severity | Reproduction | Fix | Guard test |
|---|---|---|---|---|---|---|

Rules: every confirmed finding keeps its reproduction as a permanent guard test; the
change ships only when all high-severity findings are fixed and re-verified; a clean
panel is recorded with its date and commit.

---

## 5. Browser end-to-end QA

- Headless or isolated browser (Playwright, a sandboxed agent browser). Never the
  developer's personal profile.
- Dedicated test accounts per role (owner, member, outsider) and a test tenant.
- Flows: sign up and login, the core journey, payment in sandbox, a permission-denied
  case, logout.
- Evidence: screenshots per step saved with the run; failures open an issue with the
  screenshot.
- No audio, no OS permission prompts, no runs against production customer data.

---

## 6. Shipping cadence

- PR size: one journey, one fix or one refactor. Reviewable in 10 minutes.
- Every PR: test, doc update if behavior changed, green CI (local CI is fine), auto-deploy on merge.
- Benchmark: LAN Brain, 116 PRs in 30 days, 16 in one day, one person with Claude Code.
- Weekly review (30 minutes): model spend vs budget, incidents and their learnings,
  stale docs, PRs merged, flows that broke in QA.

---

## 7. Agent security basics (summary)

Secrets scanning pre-commit (gitleaks, trufflehog), least privilege per agent and per
tool, explicit consent before connecting an MCP server, prompt-injection defense for
anything the agent reads from outside (OWASP LLM01: treat fetched content as data, not
instructions), dependency scanning (Semgrep, Trivy). The full staged plan lives in the
security-compliance-starter skill.
