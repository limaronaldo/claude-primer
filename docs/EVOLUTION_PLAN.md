# Evolution Plan for claude-primer

Reference document for incremental evolution. Ordered by trust: correctness first, architecture second, features third.

**Current version:** 1.3.2
**Test coverage:** 107 Python tests, 110 Node.js tests

---

## Phase 1 — Fix correctness risks ✅

### 1.1 Skip git safety when no overwrite will happen
- **Status:** DONE — PlannedWrite computes write plan before git safety

### 1.2 Clean dry run for missing targets
- **Status:** DONE — missing directory = empty repo preview

### 1.3 Scan before git safety
- **Status:** DONE — scan completes before any git mutation

### 1.4 Selective commit safety
- **Status:** DONE — `git_selective_commit()` uses `--only` flag

### 1.5 Nested git detection
- **Status:** DONE — uses `rev-parse --is-inside-work-tree`

---

## Phase 2 — Explicit pipeline and write plan ✅

### 2.1 PlannedWrite dataclass
- **Status:** DONE — `PlannedWrite(filename, exists, mode, reason)` drives all decisions

### 2.2 Provenance markers
- **Status:** DONE — `migrated`, `inferred`, `placeholder` markers via `_mark()`

---

## Phase 3 — Project tier detection ✅

### 3.1 detect_project_tier()
- **Status:** DONE — returns `{tier, confidence, reasons}`, T1-T4 classification

---

## Phase 4 — CLAUDE.md as repository map ✅

### 4.1-4.3 Section reorder, invariants, active risks
- **Status:** DONE — full restructure with routing rules, architecture, commands, invariants

---

## Phase 5 — STANDARDS.md as governance file ✅

### 5.1-5.2 Governance structure and core principles
- **Status:** DONE — tier-based governance, quality gates, documentation rules

---

## Phase 6 — Confidence-aware extraction

### 6.1 Add confidence to extracted sections
- **Model:** `{value, source, confidence}` where confidence is high/medium/low
- **Rule:** Structured existing > strong extracted > stack inference > placeholder
- **Status:** PARTIAL — extraction works but confidence scoring not yet exposed

### Known issue: extraction idempotency
- Running `--force` repeatedly can accumulate migrated content
- Root cause: extraction re-reads generated sections as "existing content"
- Mitigation: `--force` now produces stable output (fixed in v1.1.0)
- Full fix: needs confidence-based filtering of re-extracted content

---

## Phase 7 — Command extraction quality ✅

### 7.1 Deduplicate and rank commands
- **Status:** DONE — `dedup_and_rank_commands()` orders by lifecycle phase, rejects path-specific commands

---

## Phase 8 — Machine-readable output ✅

### 8.1 --plan-json flag
- **Status:** DONE — `plan_json()` outputs stacks, frameworks, monorepo, tier, write plan

---

## Phase 9 — Monorepo intelligence ✅

### 9.1 Better scoping
- **Status:** DONE — workspace detection, subproject grouping, scoped docs

---

## Phase 10 — Tests ✅

### 10.1 Regression suite
- **Status:** DONE — 107 Python tests across 19 test classes

### 10.2 Golden output tests
- **Status:** DONE — covered in TestGeneratedContent + TestStackDetection

---

## Future Phases

### Phase 11 — Template system
- User-provided templates for generated sections
- Override default content with project-specific templates
- **Status:** Not started

### Phase 12 — Watch mode
- Monitor project changes and suggest CLAUDE.md updates
- Integrate with git hooks for automatic maintenance
- **Status:** Not started

### Phase 13 — Multi-agent context
- Generate context files optimized for specific AI agents beyond Claude
- Configurable output format (markdown, YAML, JSON)
- **Status:** Not started

---

## Operating Rule

Prefer small defaults, deterministic output, honest inference, conservative migration, tier-based process weight, and explicit safety boundaries. Reject verbosity, fake certainty, heavy defaults, and surprising behavior.

---

**Created:** 2026-03-05
**Updated:** 2026-03-07
