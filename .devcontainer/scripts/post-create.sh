#!/usr/bin/env bash

set -euo pipefail

# Set up PATH for local user binaries (mise...)
export PATH="$HOME/.local/bin:$PATH"

# -- Mise
echo "⚙️ Setting up mise environment..."
mkdir -p /mnt/mise-data
mise trust .
mise install
mise run precommit:install
echo "🟢 Mise environment set up."

echo "✅ Devcontainer setup script completed."
