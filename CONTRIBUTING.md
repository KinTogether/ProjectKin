# Contributing to Kin

Welcome. Before anything else, please read the [README](README.md) in full. Kin is a project with strong opinions about what it is and is not. If those opinions resonate with you, you will love contributing here. If they do not, this may not be the right project for you, and that is okay.

This document is a placeholder. The full guide is tracked in [issue #18](https://github.com/KinTogether/ProjectKin/issues/18).

---

## Quick start (until full guide lands)

1. Fork the repo and clone your fork
2. Read [README](README.md) and the issues labeled `good first issue`
3. Comment on the issue you want to work on so others know
4. Create a branch: `git checkout -b feat/short-description` or `fix/short-description`
5. Make your changes (small, focused, tested)
6. Run lint and tests locally before pushing
7. Open a PR using the template
8. Be patient and kind during review

## Branching

- `main` is always releasable
- Feature branches: `feat/<short-name>`
- Fixes: `fix/<short-name>`
- Docs: `docs/<short-name>`
- Chores: `chore/<short-name>`

## Commit messages

Use [Conventional Commits](https://www.conventionalcommits.org/):

```
feat(matching): add mutual-overlap scoring
fix(auth): hash phone before storage
docs(readme): clarify reveal stage
test(journey): cover quiet exit transitions
```

Types: `feat`, `fix`, `docs`, `chore`, `refactor`, `test`, `ci`, `perf`, `security`.

## Pull requests

- One concern per PR. Large refactors need a discussion issue first.
- Link the issue your PR closes: `Closes #123`.
- All security-sensitive code (auth, crypto, RLS, identity) needs **two reviewers**.
- Tests are not optional for matching, journey state, auth, reveal, or encryption changes.

## Code of conduct

By participating you agree to the [Code of Conduct](CODE_OF_CONDUCT.md).

## AI contribution rules

See the AI contribution section of the [README](README.md). In short: you are responsible for everything you submit, regardless of how it was generated.

## Getting help

Open a [discussion](https://github.com/KinTogether/ProjectKin/discussions) or ask in the issue you are working on. There are no dumb questions.
