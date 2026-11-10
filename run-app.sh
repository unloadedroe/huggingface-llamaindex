#!/usr/bin/env bash
set -eu

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT_DIR"

if [ ! -d ".venv" ]; then
  echo "Virtual environment not found. Run ./setup-env.sh first."
  exit 1
fi

if [ -f ".env" ]; then
  set -a
  . ./.env
  set +a
fi


# shellcheck disable=SC1091
source .venv/bin/activate

python app.py
