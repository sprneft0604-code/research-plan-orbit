# Research Plan Orbit

This orbit keeps one research-to-plan pass evidence-backed, scoped, and
recoverable. It is for technical research, codebase investigation, architecture
trade-offs, API/framework lookup, and implementation planning.

It is not an implementation orbit, release gate, full project-management system,
or replacement for project-specific engineering rules.

## Core Rule

Do not present an implementation plan until the relevant evidence has been
identified and recorded.

Evidence can include:

- project files
- local documentation
- external documentation
- existing implementation patterns
- logs or test output
- user-provided constraints

If evidence is missing, say what is missing and how that affects confidence.

## Research Choice

Use the cheapest evidence source that can support the decision:

- local files for project-specific behavior
- current documentation for APIs, libraries, frameworks, and products
- existing records for prior decisions
- user clarification when the request cannot be scoped

Do not invent API details, versions, limits, or behavior.

## Architecture And Planning

When design choices matter, record alternatives, trade-offs, and the recommended
decision.

A valid implementation plan includes:

- requirements
- affected files or components
- phased steps
- dependencies
- risk level
- testing strategy
- success criteria

## Evidence Record

Write one record per research-plan task in `docs/research-plan/records/`, based
on `docs/research-plan/templates/research-plan-record.md`.

The minimum record is:

- status
- request
- triage lanes
- evidence inspected
- decision or no-decision-needed statement
- alternatives considered when relevant
- implementation plan
- testing strategy
- risks and mitigations
- open questions
- recommended next action

The cheap probe `tools/check-research-plan.sh` only checks record shape. It is
not a replacement for current documentation lookup, tests, CI, or human review.

## Failure And Exit

Record `blocked` when the request cannot be scoped or required access is missing.

Record `failure` when the goal cannot be met and continuing inside this orbit
will not improve the result.

Record `abnormal_exit` when evidence remains contradictory, the scope is too
large for one pass, or continuing would consume budget without improving
confidence.

Record `external_stop` when the human partner stops or redirects the work.
