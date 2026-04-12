#!/usr/bin/env bash
set -euo pipefail

test -f ".harness/orbits/research-plan.yaml"
test -f "docs/research-plan/README.md"
test -f "docs/research-plan/process/triage.md"
test -f "docs/research-plan/process/research.md"
test -f "docs/research-plan/process/architecture.md"
test -f "docs/research-plan/process/planning.md"
test -f "docs/research-plan/templates/research-plan.md"

echo "research-plan orbit skeleton: ready"
