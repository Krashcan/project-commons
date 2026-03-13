#!/bin/bash
set -e

if [ -f "Makefile" ]; then
  echo "Already exists, nothing to do."
  exit 0
fi

cat > Makefile << 'EOF'
.PHONY: test lint

test:
	@echo "no test commands defined"

lint:
	@echo "no lint commands defined"
EOF

echo "✅ Created Makefile"
