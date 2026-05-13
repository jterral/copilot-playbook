#!/usr/bin/env bash

set -euo pipefail

# Set up PATH for local user binaries (apm...)
export PATH="/usr/local/bin:$PATH"

apm install

echo "✅ Devcontainer start-up script completed."
