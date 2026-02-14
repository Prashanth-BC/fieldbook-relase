#!/usr/bin/env bash
set -euo pipefail
if [ $# -lt 1 ]; then
  echo "Usage: $0 /path/to/obsidian/vault"
  exit 1
fi
VAULT="$1"
PLUGIN_DIR="$VAULT/.obsidian/plugins/fieldbook"
TMP_DIR="$(mktemp -d)"
URL="https://github.com/Prashanth-BC/fieldbook-relase/releases/latest/download/fieldbook-latest.zip"
mkdir -p "$PLUGIN_DIR"
curl -L "$URL" -o "$TMP_DIR/fieldbook.zip"
unzip -o "$TMP_DIR/fieldbook.zip" -d "$PLUGIN_DIR" >/dev/null
rm -rf "$TMP_DIR"
echo "Installed Fieldbook to $PLUGIN_DIR"
