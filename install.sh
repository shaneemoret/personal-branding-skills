#!/usr/bin/env bash

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_DIR="$REPO_ROOT/skills"
TARGET_ROOT="${CODEX_HOME:-$HOME/.codex}/skills"

usage() {
  cat <<'EOF'
Install Personal Branding Skills into your local Codex skills directory.

Usage:
  ./install.sh                 Install all skills
  ./install.sh all             Install all skills
  ./install.sh <skill> [...]   Install one or more named skills

Examples:
  ./install.sh
  ./install.sh content-signal-evaluator
  ./install.sh consulting-headshot icp-visual-concept-generator
EOF
}

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  usage
  exit 0
fi

mkdir -p "$TARGET_ROOT"

if [[ $# -eq 0 || "${1:-}" == "all" ]]; then
  mapfile -t REQUESTED_SKILLS < <(find "$SOURCE_DIR" -mindepth 1 -maxdepth 1 -type d -exec basename {} \; | sort)
else
  REQUESTED_SKILLS=("$@")
fi

for skill in "${REQUESTED_SKILLS[@]}"; do
  if [[ ! -d "$SOURCE_DIR/$skill" ]]; then
    echo "Unknown skill: $skill" >&2
    echo >&2
    usage >&2
    exit 1
  fi
done

for skill in "${REQUESTED_SKILLS[@]}"; do
  rm -rf "$TARGET_ROOT/$skill"
  cp -R "$SOURCE_DIR/$skill" "$TARGET_ROOT/$skill"
  echo "Installed $skill -> $TARGET_ROOT/$skill"
done

echo
echo "Done. Restart your tool if it caches local skills."
