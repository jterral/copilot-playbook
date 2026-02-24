---
description: "Guidelines for writing conventional commits with mandatory scopes"
applyTo: "**"
---

# Conventional Commits Guidelines

Instructions for writing well-formatted conventional commit messages that follow the standard convention with mandatory scopes.

## Conventional Commit Format

All commit messages must follow the format:

```
type(scope): subject
```

Where:

- **type**: One of the supported commit types (lowercase)
- **scope**: Always required, even if using "wip" as a fallback
- **subject**: Brief, descriptive message

## Supported Commit Types

- **feat**: A new feature
- **fix**: A bug fix
- **chore**: Routine tasks and maintenance (e.g., dependency updates, build scripts, ci/cd changes)
- **docs**: Documentation only changes
- **style**: Code style changes (formatting, semicolons, etc.)
- **refactor**: Code refactoring without feature or fix
- **perf**: Performance improvements
- **test**: Adding or updating tests

## Scope Rules

The scope is **always mandatory**. It indicates what part of the codebase is being modified:

- Use lowercase and hyphens for multi-word scopes
- Examples: `auth`, `api`, `database`, `cli`, `docs`
- If no specific scope applies, use `wip` as the default fallback scope
- Keep scopes concise and meaningful

## Subject Line Rules

- Use imperative mood ("add" not "added" or "adds")
- Lowercase first letter
- No period at the end
- Concise and clear
- Aim for 50 characters or less for type + scope + subject combined

## Valid Examples

- `feat(auth): add two-factor authentication`
- `fix(cache): resolve memory leak in handler`
- `docs(readme): update installation instructions`
- `refactor(api): simplify request validation`
- `test(utils): add edge case tests for date parser`
- `chore(wip): temporary work in progress changes`
- `perf(database): optimize query indexes`
- `style(ci): format yaml configuration files`

## Invalid Examples

- `feat: add two-factor authentication` (missing scope)
- `FEAT(AUTH): add two-factor authentication` (type/scope not lowercase)
- `feat(auth): Add two-factor authentication.` (capital letter, period at end)
- `fix(auth-service): fixing a bug` (wrong mood, too vague subject)

## Fallback Scope for Ambiguous Changes

When changes don't fit a specific scope, use `wip` (work in progress):

- `chore(wip): bump dependencies`
- `style(wip): format files`
- `refactor(wip): restructure project layout`

## Best Practices

1. **Be Specific**: Use meaningful scopes that help identify the area changed
2. **Keep It Short**: Aim for concise commit messages that convey the essence of the change
3. **Use Active Voice**: Prefer action-oriented language in the subject
4. **One Change Per Commit**: Each commit should represent a single, logical change
5. **Write Clearly**: Subject lines should be understandable at a glance
