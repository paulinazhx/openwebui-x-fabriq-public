#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Load .oidc env file so OAuth config is available to the dev server
set -a
for env_file in "$SCRIPT_DIR/.oidc"; do
    if [ -f "$env_file" ]; then
        source "$env_file"
    fi
done
set +a

export CORS_ALLOW_ORIGIN="http://localhost:5173;http://localhost:8080"
export WEBUI_URL="http://localhost:5173"
PORT="${PORT:-8080}"
uvicorn open_webui.main:app --port "$PORT" --host 0.0.0.0 --forwarded-allow-ips '*' --reload
