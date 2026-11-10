#!/usr/bin/env bash
set -eu

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT_DIR"

if [ ! -d ".venv" ]; then
  python3 -m venv .venv
fi

# shellcheck disable=SC1091
source .venv/bin/activate

python -m pip install --upgrade pip

if ! command -v uv >/dev/null 2>&1; then
  python -m pip install uv
fi

uv pip install -r requirements.txt

echo "Environment ready. Activate it with:"
echo "  source .venv/bin/activate"
