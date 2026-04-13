#!/usr/bin/env bash
set -euo pipefail

test -f ".harness/orbits/research-plan.yaml"
test -f "docs/research-plan/README.md"
test -f "docs/research-plan/templates/research-plan-record.md"
test -f "docs/research-plan/records/README.md"
test -f "docs/research-plan/process/triage.md"
test -f "docs/research-plan/process/evidence.md"
test -f "docs/research-plan/process/architecture.md"
test -f "docs/research-plan/process/planning.md"
test -f "docs/research-plan/process/blocked-and-handoff.md"

record="${1:-}"
if [ -n "$record" ]; then
  test -f "$record"
  grep -q "^## Status" "$record"
  grep -q "^## Request" "$record"
  grep -q "^## Evidence Inspected" "$record"
  grep -q "^## Implementation Plan" "$record"
  grep -q "^## Recommended Next Action" "$record"
fi

echo "research-plan orbit: ready"
