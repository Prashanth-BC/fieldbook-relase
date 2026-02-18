#!/bin/bash
# install-server.sh - Sets up the Sync Hub server

INSTALL_DIR=${1:-"./vaultsync-server"}

echo "Installing server to $INSTALL_DIR..."
mkdir -p "$INSTALL_DIR"

cp server/server.kexe "$INSTALL_DIR/"
chmod +x "$INSTALL_DIR/server.kexe"

echo "Server installed to $INSTALL_DIR/server.kexe"
echo "Run with: cd $INSTALL_DIR && ./server.kexe"
