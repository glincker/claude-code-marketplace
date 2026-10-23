#!/usr/bin/env bash
# Publish a one-page site to deed.page, update it in place, then delete it.
# Requires: curl. Usage: bash publish-and-update.sh
set -euo pipefail

SLUG="example-$(head -c4 /dev/urandom | od -An -tx1 | tr -d ' \n')"
WORK="$(mktemp -d)"
trap 'rm -rf "$WORK"' EXIT

printf '<!doctype html><title>deed.page example</title><h1>Version 1</h1>\n' > "$WORK/index.html"

# 1. First publish: no account or token. The response includes the owner token once.
RESP="$(curl -sS -T "$WORK/index.html" "https://deed.page/v1/sites?slug=$SLUG" \
  -H "X-Client: Claude Code" -H "X-Ttl: 3600")"
URL="$(printf '%s' "$RESP" | sed -n 's/.*"url":"\([^"]*\)".*/\1/p')"
DEEDPAGE_TOKEN="$(printf '%s' "$RESP" | sed -n 's/.*"token":"\([^"]*\)".*/\1/p')"
[ -n "$URL" ] && [ -n "$DEEDPAGE_TOKEN" ] || { echo "publish failed: $RESP" >&2; exit 1; }
echo "published: $URL"

# 2. Update the same slug with the token. The URL does not change.
printf '<!doctype html><title>deed.page example</title><h1>Version 2</h1>\n' > "$WORK/index.html"
curl -sS -T "$WORK/index.html" "https://deed.page/v1/sites?slug=$SLUG" \
  -H "X-Client: Claude Code" -H "Authorization: Bearer $DEEDPAGE_TOKEN" >/dev/null
curl -sS "$URL" | grep -q "Version 2" && echo "updated: $URL"

# 3. Clean up (only because this is a demo; never delete unless the user asks).
curl -sS -X DELETE "https://deed.page/v1/sites/$SLUG" -H "Authorization: Bearer $DEEDPAGE_TOKEN" >/dev/null
echo "deleted: $SLUG"
