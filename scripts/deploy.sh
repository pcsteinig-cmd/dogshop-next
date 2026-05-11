#!/bin/bash
# Deploy: stage all tracked changes + new images, commit, push, wait for live to match.
# Usage: ./scripts/deploy.sh "commit message"
set -e
cd "$(dirname "$0")/.."

MSG="${1:-Polish update}"
LIVE_BASE="https://pcsteinig-cmd.github.io/dogshop-next"

# Stage only HTML, JS, images, configs — never node_modules or build artefacts
git add index.html "*.html" "js/**" "images/**" "assets/**" ".claude/**" "scripts/**" CNAME 2>/dev/null || true
git add package.json package-lock.json 2>/dev/null || true

# If nothing staged, abort
if git diff --cached --quiet; then
  echo "Nothing to deploy."
  exit 0
fi

# Show what will be committed
echo "==> Changes to deploy:"
git diff --cached --stat | tail -20
echo ""

# Commit
git commit -m "$MSG

Co-Authored-By: Claude Opus 4.7 (1M context) <noreply@anthropic.com>"

# Push
echo "==> Pushing to origin/main..."
git push origin main

# Verify live
echo "==> Waiting for GitHub Pages deploy..."
LOCAL_HASH=$(md5 -q index.html)
for i in 1 2 3 4 5 6 7 8; do
  sleep 10
  LIVE_HASH=$(curl -sS "$LIVE_BASE/index.html?cb=$(date +%s)" 2>/dev/null | md5)
  if [ "$LIVE_HASH" = "$LOCAL_HASH" ]; then
    echo "✓ Live deploy verified after ~$((i*10))s"
    echo "  → $LIVE_BASE/"
    exit 0
  fi
  echo "  [$i] waiting ($((i*10))s)..."
done

echo "⚠ Live deploy still propagating after 80s. Check $LIVE_BASE manually."
exit 1
