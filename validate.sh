#!/usr/bin/env bash
# Validates all SKILL.md files for spec compliance
# Run before commit: ./validate.sh
set -euo pipefail

ERRORS=0

for skill_md in suites/*/*/SKILL.md; do
  # Skip if glob did not match (no SKILL.md files exist yet)
  [ -f "${skill_md}" ] || continue
  name=$(grep "^name:" "${skill_md}" | head -1 | sed 's/name: //')
  dir_name=$(basename "$(dirname "${skill_md}")")

  # Check name matches directory
  if [ "${name}" != "${dir_name}" ]; then
    echo "FAIL [${skill_md}]: name '${name}' does not match directory '${dir_name}'"
    ERRORS=$((ERRORS + 1))
  fi

  # Check name length
  if [ ${#name} -gt 64 ]; then
    echo "FAIL [${skill_md}]: name '${name}' exceeds 64 chars"
    ERRORS=$((ERRORS + 1))
  fi

  # Check name charset (lowercase, numbers, hyphens only)
  if echo "${name}" | grep -qE '[^a-z0-9\-]'; then
    echo "FAIL [${skill_md}]: name '${name}' contains invalid characters"
    ERRORS=$((ERRORS + 1))
  fi

  # Check SKILL.md line count
  line_count=$(wc -l < "${skill_md}")
  if [ "${line_count}" -gt 500 ]; then
    echo "WARN [${skill_md}]: ${line_count} lines (limit: 500)"
  fi
done

# Shared frameworks must be copied into each skill (installers copy only suites/)
if command -v python3 >/dev/null 2>&1; then
  if ! python3 "$(dirname "$0")/scripts/sync-shared.py" --check ${SYNC_SKIP:+--skip=${SYNC_SKIP}}; then
    ERRORS=$((ERRORS + 1))
  fi
fi

if [ ${ERRORS} -gt 0 ]; then
  echo "${ERRORS} validation error(s) found."
  exit 1
else
  echo "All SKILL.md files valid."
fi
