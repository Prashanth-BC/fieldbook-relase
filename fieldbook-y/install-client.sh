#!/bin/bash
# install-client.sh - Installs the Vault Sync plugin to an Obsidian vault

# Get the directory where the script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -z "$1" ]; then
  echo "Usage: ./install-client.sh <path_to_obsidian_vault>"
  exit 1
fi

VAULT_PATH="$1"
PLUGIN_DIR="$VAULT_PATH/.obsidian/plugins/obsidian-vault-sync"

echo "Installing to $PLUGIN_DIR..."
mkdir -p "$PLUGIN_DIR"

cp "$SCRIPT_DIR/client/main.js" "$PLUGIN_DIR/"
cp "$SCRIPT_DIR/client/manifest.json" "$PLUGIN_DIR/"
cp "$SCRIPT_DIR/client/styles.css" "$PLUGIN_DIR/"

echo "Plugin installed! Please enable 'Vault Sync' in Obsidian Community Plugins."
