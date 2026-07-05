#!/usr/bin/env bash
#
# Build personbio.mcpb from source.
# Requires Node.js 18+. Produces personbio.mcpb in this directory.
set -euo pipefail
cd "$(dirname "$0")"

echo "==> Installing bundled server dependencies (mcp-remote)"
( cd server && npm install --omit=dev --no-audit --no-fund )

echo "==> Validating manifest"
npx --yes @anthropic-ai/mcpb validate manifest.json

echo "==> Packing personbio.mcpb"
npx --yes @anthropic-ai/mcpb pack . personbio.mcpb

echo "✅ Built personbio.mcpb"
