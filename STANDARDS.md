# STANDARDS.md — QA & Documentation Standards

Quality assurance and documentation standards for this repository.

**Referenced by CLAUDE.md. Enforced by Claude Code.**

**Verifiability principle:** Every rule in this file can be checked objectively.

<!-- [migrated] -->

---

## STANDARDS.md — Governance & Quality Standards

Lean governance for this repository. Every rule is objectively verifiable.

**Referenced by:** [CLAUDE.md](CLAUDE.md)

---

## STANDARDS.md — Governance & Quality Standards > 1. Core Principles

- **Evidence over opinion** — decisions backed by data or tested behavior
- **Parse at the boundary** — validate external input where it enters the system
- **Errors carry context** — never swallow exceptions; log or propagate with details
- **Idempotency where it matters** — re-running should be safe or explicitly documented as unsafe
- **Document decisions that affect future work** — not all decisions, just consequential ones
- **Least powerful tool** — use the simplest approach that solves the problem
- **Each rule must protect more than it costs** — remove rules that create drag without value

---

## STANDARDS.md — Governance & Quality Standards > 2. Project Tiers

| Tier | Blast Radius | Required Gates |
|------|-------------|----------------|
| **T1** | Multi-phase, writes to external systems | README, CLAUDE.md, PLAN.md, dry-run, preflight, manifest |
| **T2** | Single-phase, external reads/writes | README, CLAUDE.md, dry-run, preflight |
| **T3** | Local only — reads data, generates reports | README |
| **T4** | Reference material, static resources | Optional |

---

## STANDARDS.md — Governance & Quality Standards > 3. Required Gates by Tier



## STANDARDS.md — Governance & Quality Standards > 3. Required Gates by Tier > T3 — Local Processing

- Validate input files before processing
- Clear error messages on failure
- Non-zero exit code on error

## STANDARDS.md — Governance & Quality Standards > 3. Required Gates by Tier > T4 — Documentation

- No execution-level gates required

---

## STANDARDS.md — Governance & Quality Standards > 4. Naming Conventions



## STANDARDS.md — Governance & Quality Standards > 4. Naming Conventions > Python

- Files: `snake_case.py`
- Verb-first for scripts: `publish_`, `validate_`

## STANDARDS.md — Governance & Quality Standards > 4. Naming Conventions > Config & Output

- Config: YAML or TOML
- Data/output: JSON
- Secrets: `.env` (never committed)

---

## STANDARDS.md — Governance & Quality Standards > 5. Code Quality

- No commented-out code in commits
- No hardcoded secrets or credentials
- No `TODO` without a linked issue or explanation
- Error handling: never silently swallow exceptions
- Dependencies: pin versions in lock files

---

## STANDARDS.md — Governance & Quality Standards > 6. Git Conventions

- Branch naming: `feature/`, `fix/`, `chore/` prefixes
- Commit messages: imperative mood, max 72 chars first line
- One logical change per commit
- Never commit `.env`, credentials, or large binaries

---

## STANDARDS.md — Governance & Quality Standards > 7. Documentation Relevance Rule

Document only what helps someone proceed safely with the next task.

- If a decision constrains future work → document it
- If a workaround exists for a known issue → document it in ERRORS_AND_LESSONS.md
- If documentation would be stale within a sprint → skip it

---

## STANDARDS.md — Governance & Quality Standards > 8. Exception Rule

Any rule in this file can be overridden if:

1. The exception is documented in the PR or commit message
2. The reason explains why the rule does not apply
3. The override is scoped — it does not disable the rule globally

Undocumented exceptions are treated as bugs.

---

## STANDARDS.md — Governance & Quality Standards > 9. Error Catalog

All recurring errors must be documented in [ERRORS_AND_LESSONS.md](ERRORS_AND_LESSONS.md).

---

**Created:** 2026-03-07
**Last Updated:** 2026-03-07

**Last Updated:** 2026-03-07
