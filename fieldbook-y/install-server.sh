#!/bin/bash
# install-server.sh - Sets up the Sync Hub server

BASE_URL="https://raw.githubusercontent.com/Prashanth-BC/fieldbook-relase/main/fieldbook-y/server"
SERVER_NAME="fieldbook-sync-hub"
INSTALL_DIR=${1:-"./vaultsync-server"}

echo "Stopping any running instances of $SERVER_NAME..."
pkill -f "$SERVER_NAME" || true

echo "Installing server to $INSTALL_DIR..."
mkdir -p "$INSTALL_DIR"

curl -sSL "$BASE_URL/$SERVER_NAME" -o "$INSTALL_DIR/$SERVER_NAME"
chmod +x "$INSTALL_DIR/$SERVER_NAME"

echo "Server installed to $INSTALL_DIR/$SERVER_NAME"
echo "Run with: cd $INSTALL_DIR && ./$SERVER_NAME"
