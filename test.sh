#!/bin/bash
# App-level test runner — customize reset_fixtures() for app-specific state setup.
# Run ./test.sh help to see all commands.

APP_DIR="$(cd "$(dirname "$0")" && pwd)"
TRACE_TOOLS="$(cd "$APP_DIR/../trace-tools" 2>/dev/null && pwd || echo "$APP_DIR/trace-tools")"

# ---------------------------------------------------------------------------
# reset_fixtures — override this for your app's server state setup
# ---------------------------------------------------------------------------
# reset_fixtures() {
#   echo "Resetting fixtures..."
# }

source "$TRACE_TOOLS/test-base.sh"
