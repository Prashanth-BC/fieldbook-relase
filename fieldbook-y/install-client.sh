#!/bin/bash
# install-client.sh - Installs the Vault Sync plugin to an Obsidian vault

BASE_URL="https://raw.githubusercontent.com/Prashanth-BC/fieldbook-relase/main/fieldbook-y/client"
VAULT_PATH="$1"

if [ -z "$VAULT_PATH" ]; then
  echo "Usage: curl -sSL https://raw.githubusercontent.com/Prashanth-BC/fieldbook-relase/main/fieldbook-y/install-client.sh | bash -s -- <path_to_obsidian_vault>"
  exit 1
fi

PLUGIN_DIR="$VAULT_PATH/.obsidian/plugins/obsidian-vault-sync"

echo "Installing to $PLUGIN_DIR..."
mkdir -p "$PLUGIN_DIR"

curl -sSL "$BASE_URL/main.js" -o "$PLUGIN_DIR/main.js"
curl -sSL "$BASE_URL/manifest.json" -o "$PLUGIN_DIR/manifest.json"
curl -sSL "$BASE_URL/styles.css" -o "$PLUGIN_DIR/styles.css"

echo "Plugin installed! Please enable 'Vault Sync' in Obsidian Community Plugins."
