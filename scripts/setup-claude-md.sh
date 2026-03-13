#!/bin/bash
set -e

if [ -f "CLAUDE.md" ]; then
  echo "Already exists, nothing to do."
  exit 0
fi

cat > CLAUDE.md << 'EOF'
## TDD
- Always write the test first
- Run tests to confirm red before writing implementation
- Write minimal code to pass — no more
- Confirm green before moving to next test
EOF

echo "✅ Created CLAUDE.md"
