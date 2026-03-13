#!/bin/bash
set -e

SCRIPTS_DIR="$( cd "$( dirname "$0" )" && pwd )"

"$SCRIPTS_DIR/setup-gitignore.sh"
"$SCRIPTS_DIR/setup-claude-md.sh"
"$SCRIPTS_DIR/setup-makefile.sh"
"$SCRIPTS_DIR/setup-staging-pr.sh"

echo "🚀 Project initialised"
