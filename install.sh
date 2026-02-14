#!/usr/bin/env bash
set -euo pipefail
if [ $# -lt 1 ]; then
  echo "Usage: $0 /path/to/obsidian/vault"
  exit 1
fi
VAULT="$1"
PLUGIN_DIR="$VAULT/.obsidian/plugins/fieldbook"
BASE="https://raw.githubusercontent.com/Prashanth-BC/fieldbook-relase/main"
mkdir -p "$PLUGIN_DIR"
curl -fsSL "$BASE/main.js" -o "$PLUGIN_DIR/main.js"
curl -fsSL "$BASE/manifest.json" -o "$PLUGIN_DIR/manifest.json"
curl -fsSL "$BASE/styles.css" -o "$PLUGIN_DIR/styles.css"
echo "Installed Fieldbook to $PLUGIN_DIR"
