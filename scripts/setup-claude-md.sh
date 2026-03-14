#!/bin/bash
set -e

if [ -f "CLAUDE.md" ]; then
  echo "Already exists, nothing to do."
  exit 0
fi

cat > CLAUDE.md << 'EOF'
# Project Instructions

<!-- Update this file with project-specific details so Claude understands your codebase. -->
<!-- Examples of what to include: -->
<!-- - Tech stack and frameworks used -->
<!-- - How to build, test, and run the project -->
<!-- - Code style and conventions -->
<!-- - Project structure overview -->
<!-- - Any project-specific rules or constraints -->
EOF

echo "✅ Created CLAUDE.md — update it with your project details"
