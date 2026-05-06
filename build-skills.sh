#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

usage() {
  echo "Usage: ./build-skills.sh [SKILL_NAME...]"
  echo ""
  echo "Build one or more skills by name, outputting <name>.skill to the project root."
  echo "If no names are given, all skills with a SKILL.md are built."
  echo ""
  echo "Examples:"
  echo "  ./build-skills.sh feature-prd-writer"
  echo "  ./build-skills.sh feature-prd-writer hmw-solution-ideator"
  echo "  ./build-skills.sh              # build all skills"
  echo ""
  echo "Available skills:"
  ls -d */SKILL.md 2>/dev/null | sed 's|/SKILL.md||' | sed 's/^/  /'
  exit 1
}

build_skill() {
  local name="$1"
  if [ ! -d "$name" ]; then
    echo "❌ Directory '$name' not found."
    return 1
  fi
  if [ ! -f "$name/SKILL.md" ]; then
    echo "❌ '$name' is not a valid skill (missing SKILL.md)."
    return 1
  fi

  rm -f "${name}.skill"
  (cd "$name" && zip -r "../${name}.skill" . -q)
  echo "✅ Built ${name}.skill"
}

if [ "${1:-}" = "-h" ] || [ "${1:-}" = "--help" ]; then
  usage
fi

if [ $# -eq 0 ]; then
  echo "🔨 Building all skills..."
  for dir in */; do
    name="${dir%/}"
    if [ -f "$name/SKILL.md" ]; then
      build_skill "$name"
    fi
  done
else
  echo "🔨 Building specified skills..."
  for name in "$@"; do
    build_skill "$name"
  done
fi

echo ""
echo "Done. Output files:"
ls -lh ./*.skill 2>/dev/null | awk '{print "  " $NF, $5}'
