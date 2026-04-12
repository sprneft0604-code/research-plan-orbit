# Triage Process

Classify the request into one or more lanes:

- `docs_lookup`: the answer depends on current library, framework, API, or product docs
- `codebase_research`: the answer depends on local repository structure or existing code
- `architecture_review`: the answer needs design options, trade-offs, or system boundaries
- `implementation_plan`: the user needs actionable implementation steps
- `blocked`: the request is unclear, lacks access, or is outside this orbit

Use the smallest set of lanes that can answer the request.

If the request only asks for implementation, record that research-plan is not the
right orbit and recommend switching to an implementation orbit.