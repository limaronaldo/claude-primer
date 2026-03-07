# Errors & Lessons — Mistake Catalog

Consult this file **before starting any task**. Organized by category, not chronologically.

## Format

```markdown
### [Category] Short description
**Context:** When/where this happens
**Wrong:** What we did that failed
**Right:** What actually works
**Date:** When discovered
```

## Categories

Use one of: Data Processing, Dependencies, API, Deploy, Logic, Config, Testing

---

<!-- [migrated] -->

### [Dependencies] Example: version mismatch after update
**Context:** After updating a dependency, imports or builds break
**Wrong:** Blindly updating all deps at once without testing
**Right:** Update one dependency at a time, run tests between each
**Date:** (template)

### [Config] Example: environment variable not loaded
**Context:** App fails on startup with missing config error
**Wrong:** Hardcoding the value as a workaround
**Right:** Check .env file exists, verify loading mechanism, add to .env.example
**Date:** (template)

### [Logic] Example: off-by-one in pagination
**Context:** API returns duplicate or missing items at page boundaries
**Wrong:** Using 1-based offset with 0-based index
**Right:** Standardize on 0-based indexing internally, convert at boundaries
**Date:** (template)

> **Note:** Replace these examples with real entries as errors are discovered.
> Delete the examples once you have real entries.

