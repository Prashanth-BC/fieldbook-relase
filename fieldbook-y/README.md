# Fieldbook Sync Release

This folder contains the binaries and installation scripts for the Vault Sync plugin (Client) and the Sync Hub (Server).

## 🚀 Client Installation (Obsidian Plugin)

Run this single-line command to install the plugin directly into your vault:
```bash
curl -sSL https://raw.githubusercontent.com/Prashanth-BC/fieldbook-relase/main/fieldbook-y/install-client.sh | bash -s -- /path/to/your/obsidian-vault
```

## 🛰️ Server Installation (Sync Hub)

Run this single-line command to set up the sync hub:
```bash
curl -sSL https://raw.githubusercontent.com/Prashanth-BC/fieldbook-relase/main/fieldbook-y/install-server.sh | bash
```

To start the server:
```bash
cd vaultsync-server && ./$SERVER_NAME
```

> **Note:** The server requires a Tailscale mesh network for secure communication between devices.
