#!/usr/bin/env bash
set -euo pipefail

SKILLS_DIR="${HOME}/.claude/skills"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# Local copies that differ from the repo version are moved here instead of deleted.
BACKUP_DIR="${HOME}/.claude/skills-backup/$(date +%Y-%m-%dT%H-%M-%S)"

case "${1:-}" in
  -h|--help)
    echo "Usage: ./install.sh"
    echo "Copies every LAN skill into ${SKILLS_DIR}."
    echo "An installed skill that differs from the new version is first moved to ${HOME}/.claude/skills-backup/<date>/."
    exit 0 ;;
esac

echo "Installing LAN Skills to ${SKILLS_DIR}..."
mkdir -p "${SKILLS_DIR}"

INSTALLED=0
FAILED=0
BACKED_UP=""

for suite_dir in "${SCRIPT_DIR}"/suites/*/; do
  for skill_dir in "${suite_dir}"*/; do
    [ -d "${skill_dir}" ] || continue
    skill_name=$(basename "${skill_dir}")
    target="${SKILLS_DIR}/${skill_name}"

    if [ -d "${target}" ] && ! diff -rq "${skill_dir}" "${target}" >/dev/null 2>&1; then
      mkdir -p "${BACKUP_DIR}"
      mv "${target}" "${BACKUP_DIR}/${skill_name}"
      BACKED_UP="${BACKED_UP} ${skill_name}"
    fi
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
if [ -n "${BACKED_UP}" ]; then
  echo "Your previous copy of these skills differed and was saved in ${BACKUP_DIR}:${BACKED_UP}"
fi
echo "Restart Claude Code and type '/' to see available skills."
