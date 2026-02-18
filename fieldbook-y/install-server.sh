#!/bin/bash
# install-server.sh - Sets up the Sync Hub server

# Get the directory where the script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

INSTALL_DIR=${1:-"./vaultsync-server"}

echo "Installing server to $INSTALL_DIR..."
mkdir -p "$INSTALL_DIR"

cp "$SCRIPT_DIR/server/server.kexe" "$INSTALL_DIR/"
chmod +x "$INSTALL_DIR/server.kexe"

echo "Server installed to $INSTALL_DIR/server.kexe"
echo "Run with: cd $INSTALL_DIR && ./server.kexe"
