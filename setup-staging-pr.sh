#!/bin/bash
set -e

WORKFLOW_DIR=".github/workflows"
WORKFLOW_FILE="$WORKFLOW_DIR/staging-to-main-pr.yml"

if [ -f "$WORKFLOW_FILE" ]; then
  echo "Already set up, nothing to do."
  exit 0
fi

mkdir -p "$WORKFLOW_DIR"

cat > "$WORKFLOW_FILE" << 'EOF'
name: Auto PR staging to main

on:
  push:
    branches:
      - staging

jobs:
  create-pr:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - name: Create PR to main if not exists
        env:
          GH_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        run: |
          PR=$(gh pr list --base main --head staging --state open --json number -q '.[0].number')
          if [ -z "$PR" ]; then
            gh pr create \
              --base main \
              --head staging \
              --title "staging → main" \
              --body "Automated PR created when staging received new changes."
          else
            echo "PR #$PR already exists, skipping."
          fi
EOF

echo "✅ Created $WORKFLOW_FILE"
echo "⚠️  Ensure GITHUB_TOKEN has pull-request write permissions in repo Settings → Actions."
