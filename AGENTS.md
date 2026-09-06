# AGENTS.md

## Agent skills

Skills come from [mattpocock/skills](https://github.com/mattpocock/skills), installed into `.claude/skills/` with `npx skills add mattpocock/skills` and pinned in `skills-lock.json`. Do not edit them locally; update with `npx skills update`.

### Issue tracker

Issues and specs live as GitHub issues in this repo, via the `gh` CLI. See `docs/agents/issue-tracker.md`.

### Domain docs

Single-context: `CONTEXT.md` at the repo root, ADRs in `docs/adr/`. Both are created lazily by `domain-modeling`. See `docs/agents/domain.md`.

## Development flow

### Starting new work, before a codebase exists

`/grill-me` -> `/to-spec` (when a spec is warranted) -> `/to-tickets` -> `/implement`

### Adding a feature to an existing codebase

`/grill-with-docs` -> `/to-spec` (when a spec is warranted) -> `/to-tickets` -> `/implement`

`/implement` drives `/tdd` at pre-agreed seams: red -> green, one behaviour at a time, tested through the public interface rather than implementation details, one vertical slice per loop. It closes with `/code-review` before committing.

### Before a large feature, when code is hard to test, or when structure has grown complex

`/improve-codebase-architecture` -> pick a candidate -> `/grill-with-docs` or `/codebase-design` -> `/to-spec` -> `/to-tickets` -> `/implement`

`/improve-codebase-architecture` is a survey: it explores the codebase and hands back candidates. It never rewrites code on its own. Only the candidate the user picks goes through the flow above.
