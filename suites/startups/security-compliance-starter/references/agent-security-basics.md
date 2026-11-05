# Agent Security Basics (Stage 0)

**Sources:**
- OWASP Top 10 for LLM Applications 2025: https://genai.owasp.org/llm-top-10/
- Model Context Protocol specification: https://modelcontextprotocol.io/specification/latest
- gitleaks: https://github.com/gitleaks/gitleaks
- trufflehog: https://github.com/trufflesecurity/trufflehog
- Semgrep: https://semgrep.dev
- Trivy: https://trivy.dev

Software written with AI agents has the same risks as any software plus three new ones:
agents paste secrets where they should not, agents act on instructions hidden in content
they read, and agents get more access than the task needs. Stage 0 closes these at near
zero cost.

---

## 1. Secrets

- [ ] gitleaks or trufflehog as a pre-commit hook on every repo, and again in CI
- [ ] Scan the full git history once: a key removed from a file still lives in history.
  Rotation is the real fix, not deletion
- [ ] Keys in environment variables or a secrets manager, never in tracked files, config
  committed to git, logs or chat exports
- [ ] Separate keys per environment (dev, staging, production)
- [ ] Raw exports (chat logs, terminal sessions, `.env` dumps) scanned before they go into
  any repo or shared brain

## 2. Prompt injection and the OWASP LLM Top 10 (2025)

The 2025 list: LLM01 Prompt Injection, LLM02 Sensitive Information Disclosure, LLM03
Supply Chain, LLM04 Data and Model Poisoning, LLM05 Improper Output Handling, LLM06
Excessive Agency, LLM07 System Prompt Leakage, LLM08 Vector and Embedding Weaknesses,
LLM09 Misinformation, LLM10 Unbounded Consumption.

Minimum defenses for a startup:
- [ ] Content from outside (web pages, emails, uploaded files, tickets, other tenants'
  data) is data, never instructions. Say so in the agent's instructions and in the
  product's system prompt
- [ ] No irreversible tool action (send, pay, delete, change permissions) triggered by
  untrusted content without human confirmation (LLM01, LLM06)
- [ ] Model output is validated before it reaches a database, a shell or a browser
  (LLM05)
- [ ] Retrieval respects tenant and user permissions at query time (LLM02, LLM08)
- [ ] Rate limits and spend caps on every model call path (LLM10)

## 3. Least privilege per agent and per tool

- [ ] Each agent session and each tool gets only the scopes the task needs; read-only by
  default
- [ ] Agents never hold production database or payment keys during development
- [ ] Service accounts per integration, not a shared admin key
- [ ] Access review every quarter: remove people and keys that no longer need access

## 4. MCP servers: explicit consent

The MCP specification puts user consent and control first: users must explicitly consent
to data access and tool use.
- [ ] Allowlist of approved MCP servers per team; a human approves each new server and
  its scopes
- [ ] Prefer official or well-maintained servers; review what each tool can do before
  enabling it
- [ ] Tokens for MCP servers scoped and stored like any other secret

## 5. Dependency and code scanning

- [ ] Semgrep (code patterns) and Trivy (dependencies, containers, IaC) on every PR, free
  tiers
- [ ] `npm audit`, `pip-audit` or Dependabot alerts triaged weekly
- [ ] Lockfiles committed; no unpinned installs in production builds

## 6. Adversarial review panel before production

For any change to authentication, authorization, billing or data exposure: green tests
do not prove there are no leaks. Run independent reviewers with four lenses (malicious
insider, cross-tenant and null token, staleness, spec fidelity) against the merged code,
and keep every reproduction as a permanent guard test. The full method lives in the
ai-engineering-playbook skill.

## 7. Basics every questionnaire asks about

- [ ] MFA on email, code hosting, cloud and every admin console
- [ ] Encryption in transit (TLS) and at rest (provider default, documented)
- [ ] Backups with a restore drill each quarter, result written down
- [ ] Incident log, even if empty, with a one-page response procedure
- [ ] Offboarding checklist: accounts and keys removed the same day
