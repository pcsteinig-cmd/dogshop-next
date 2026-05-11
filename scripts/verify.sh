#!/bin/bash
# Verify: compare local index.html hash with live GitHub Pages.
# Use to check if your latest push has propagated.
set -e
cd "$(dirname "$0")/.."

LIVE_BASE="https://mypauli.ai"
LOCAL_HASH=$(md5 -q index.html)
LIVE_HASH=$(curl -sS "$LIVE_BASE/index.html?cb=$(date +%s)" 2>/dev/null | md5)

if [ "$LIVE_HASH" = "$LOCAL_HASH" ]; then
  echo "✓ Live matches local: $LIVE_BASE/"
  exit 0
else
  echo "⚠ Live differs from local (still propagating?)"
  echo "  local: $LOCAL_HASH"
  echo "  live:  $LIVE_HASH"
  echo "  → $LIVE_BASE/"
  exit 1
fi
