#!/usr/bin/env bash

set -euo pipefail

curl -sSL https://mise.run | sh
curl -sSL https://aka.ms/apm-unix | sh

# .bashrc customizations
echo "⚙️ Customizing .bashrc..."
cat << 'EOF' >> ~/.bashrc

# --- Mise ---
eval "$(mise activate bash)"
EOF
