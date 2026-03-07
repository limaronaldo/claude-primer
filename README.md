# Super-Claude

Bootstrap Claude Code knowledge architecture in any project directory.

Generates context-aware `CLAUDE.md`, `STANDARDS.md`, `QUICKSTART.md`, and `ERRORS_AND_LESSONS.md` files that help Claude Code understand your codebase.

## Install & Run

```bash
# No install needed — run directly:
pipx run superclaudeai

# Or with uv:
uvx superclaudeai

# Or install globally:
pip install superclaudeai
super-claude
```

## Usage

```bash
super-claude                        # interactive setup in current directory
super-claude /path/to/project       # specific directory
super-claude --dry-run              # preview without writing
super-claude --force                # overwrite changed files (skip unchanged)
super-claude --force-all            # overwrite all files unconditionally
super-claude --yes                  # non-interactive (accept defaults)
super-claude --plan-json            # output project analysis as JSON
super-claude --with-readme          # also generate README.md
super-claude --with-ralph           # generate Ralph integration files
super-claude --reconfigure          # re-run wizard (ignore saved config)
super-claude --no-git-check         # skip git safety entirely
super-claude --git-mode stash       # auto-stash dirty changes
super-claude --git-mode skip        # skip git safety
```

Flags can be combined for full automation:

```bash
super-claude --force --yes          # overwrite changed files, no prompts
super-claude --force-all --yes      # overwrite ALL files, no prompts
super-claude --git-mode skip --yes  # full automation, no git checks
```

## What It Does

1. **Scans** your project — detects language, framework, deploy targets, monorepo structure
2. **Classifies** project tier (T1-T4) based on blast radius
3. **Extracts** from existing documentation if present
4. **Generates** four files with context-aware content:
   - `CLAUDE.md` — project map, invariants, decision heuristics, verification standards
   - `STANDARDS.md` — governance rules, code quality gates, naming conventions
   - `QUICKSTART.md` — essential commands and quick fixes
   - `ERRORS_AND_LESSONS.md` — mistake catalog with rationalization table
5. **Verifies** generated files have correct structure
6. **Saves** wizard answers to `.claude-setup.rc` for future runs

## Ralph Integration

The `--with-ralph` flag creates an integration layer that eliminates duplication between Ralph (an autonomous coding agent) and the Super-Claude knowledge architecture. Instead of maintaining separate context files, Ralph reads directly from the same generated documents, with a thin prompt wrapper and symlinks to keep everything in sync.

Files created by `--with-ralph`:

- `.ralph/PROMPT.md` — Ralph-specific development instructions referencing the knowledge architecture
- `.ralph/AGENT.md` — symlink to `QUICKSTART.md` (single source of truth)
- `.ralph/fix_plan.md` — prioritized task list (Ralph-owned, never overwritten without `--force`)
- `.ralph/hooks/post-loop.sh` — post-loop hook that detects changes to knowledge files
- `.ralphrc` — stack-aware Ralph project configuration at the project root

## Generated Content Highlights

- **Iron Laws** — bright-line rules that are never violated
- **Decision Heuristics** — 6 concrete rules for autonomous decision-making
- **Stuck Protocol** — explicit steps when 3+ approaches fail
- **Red Flags** — self-monitoring triggers to prevent common mistakes
- **Rationalization Table** — excuse-to-reality mapping to catch bad reasoning
- **HARD-GATE tags** — absolute non-negotiable rules
- **Tier-based governance** — process weight proportional to blast radius
- **Defense-in-Depth debugging** — 4-layer validation after bug fixes
- **Git worktree guidance** — parallel development patterns (for git repos)
- **AUTO-MAINTAINED marker** — QUICKSTART.md flagged for automatic upkeep
- **Idempotent regeneration** — `--force` skips unchanged files

## Supported Stacks

Python, Node.js/TypeScript, Rust, Go, Ruby, Java/Kotlin, PHP, .NET, Elixir, Swift, Dart/Flutter, Zig, Scala

## Supported Frameworks

Django, Flask, FastAPI, Next.js, React, Vue, Svelte, SvelteKit, Remix, Astro, Express, NestJS, Hono, Axum, Actix, Rocket, Gin, Fiber, Echo, Phoenix, Spring, Laravel, Flutter, and more.

## Authors

- Ronaldo Lima
- Breno Lima

## License

MIT
