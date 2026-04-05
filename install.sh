#!/usr/bin/env bash
set -euo pipefail

SKILLS_DIR="${HOME}/.claude/skills"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing LAN Skills to ${SKILLS_DIR}..."
mkdir -p "${SKILLS_DIR}"

INSTALLED=0
FAILED=0

for suite_dir in "${SCRIPT_DIR}"/suites/*/; do
  for skill_dir in "${suite_dir}"*/; do
    [ -d "${skill_dir}" ] || continue
    skill_name=$(basename "${skill_dir}")
    target="${SKILLS_DIR}/${skill_name}"

    rm -rf "${target}"
    cp -r "${skill_dir}" "${target}"

    if [ -f "${target}/SKILL.md" ]; then
      echo "  [OK] ${skill_name}"
      INSTALLED=$((INSTALLED + 1))
    else
      echo "  [FAIL] ${skill_name} — SKILL.md not found after copy"
      FAILED=$((FAILED + 1))
    fi
  done
done

echo ""
echo "Installed: ${INSTALLED} skills | Failed: ${FAILED}"
echo "Restart Claude Code and type '/' to see available skills."
