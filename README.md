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
# Interactive setup in current directory
super-claude

# Specific directory
super-claude /path/to/project

# Preview without writing
super-claude --dry-run

# Overwrite existing files
super-claude --force

# Non-interactive (accept defaults)
super-claude --yes

# Output project analysis as JSON
super-claude --plan-json

# Also generate README.md
super-claude --with-readme
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

## Generated Content Highlights

- **Iron Laws** — bright-line rules that are never violated
- **Decision Heuristics** — 6 concrete rules for autonomous decision-making
- **Stuck Protocol** — explicit steps when 3+ approaches fail
- **Red Flags** — self-monitoring triggers to prevent common mistakes
- **Rationalization Table** — excuse→reality mapping to catch bad reasoning
- **HARD-GATE tags** — absolute non-negotiable rules
- **Tier-based governance** — process weight proportional to blast radius
- **Defense-in-Depth debugging** — 4-layer validation after bug fixes
- **Git worktree guidance** — parallel development patterns (for git repos)

## Supported Stacks

Python, Node.js/TypeScript, Rust, Go, Ruby, Java/Kotlin, PHP, .NET, Elixir, Swift, Dart/Flutter, Zig, Scala

## Supported Frameworks

Django, Flask, FastAPI, Next.js, React, Vue, Svelte, SvelteKit, Remix, Astro, Express, NestJS, Hono, Axum, Actix, Rocket, Gin, Fiber, Echo, Phoenix, Spring, Laravel, Flutter, and more.

## Authors

- Ronaldo Lima
- Breno Lima

## License

MIT
