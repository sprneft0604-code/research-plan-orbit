# AGENTS.md

You are working inside the `research-plan` Orbit template source.

This repository publishes an installable Orbit template for focused
research-to-plan work. The source branch may contain author-facing files, but
the installable template should stay small, clear, and useful inside real
Harness runtimes.

## Orbit Purpose

The `research-plan` orbit helps a worker turn an ambiguous implementation,
architecture, API, framework, refactor, or product question into evidence-backed
options, a recommended direction, and a phased implementation plan.

It is for:

- Clarifying a request before implementation
- Comparing technical options
- Reading local code and relevant documentation
- Capturing ADR-style decisions
- Producing phased implementation plans
- Recording blocked, failed, or abnormal-exit handoffs when evidence is missing

It is not for:

- Implementing code changes by default
- Owning broad project management
- Replacing project-specific design approval
- Pretending uncertainty has been resolved without evidence

## Authoring Rules

Keep the template aligned with the Orbit authoring contract:

- Define the objective, scope boundary, rules, done probe, failure condition,
  abnormal exit hint, record target, and record minimum.
- Keep the worker entry short.
- Put longer guidance in `docs/research-plan/process/`.
- Keep templates practical and easy to fill out.
- Keep probes cheap. They should check the minimum record signal, not perform
  full quality analysis.
- Do not encode private chain-of-thought requirements.
- Do not turn the template into a runtime framework.

## Research-Plan Worker Behavior

When operating inside this orbit, prefer this order:

1. Identify the request, decision needed, and scope boundary.
2. Gather evidence from project files, local docs, records, logs, tests, or
   external documentation when appropriate.
3. Compare realistic options and name trade-offs.
4. Recommend a direction with assumptions and risks.
5. Produce a phased implementation plan.
6. Write a record under `docs/research-plan/records/`.
7. Run the minimum record probe when available.

Avoid implementation unless the user explicitly redirects the orbit into coding
work. If the work cannot be scoped or evidence is unavailable, stop and leave a
useful handoff record.

## Done Probe

The minimum done signal is a research-plan record that contains:

- Request / question
- Scope boundary
- Evidence checked
- Options considered
- Recommendation
- Plan
- Risks, gaps, or handoff notes

Use `tools/check-research-plan.sh` when available.

## Publishing Notes

Before publishing:

```bash
orbit files research-plan
bash tools/check-research-plan.sh
orbit template publish
```

Then push both the source branch and the published template branch as needed.
