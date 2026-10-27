#!/usr/bin/env python3
"""Make every skill self-contained.

The installers copy only suites/<suite>/<skill>/ into ~/.claude/skills/, so any
link to shared/frameworks/ breaks after install. This script:

1. finds every reference to shared/frameworks/<file>.md in a skill
   (markdown links and the bare @shared/frameworks/<file>.md notation),
2. copies the referenced files (and the shared files they reference) into
   <skill>/references/shared/,
3. rewrites the references so they resolve from inside the skill.

shared/frameworks/ stays the source of truth: edit there, then rerun this script.
Run with --check to fail (exit 1) when a skill is out of sync, without writing.
"""
import re
import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SHARED = ROOT / "shared" / "frameworks"
NAME = r"([a-z0-9-]+\.md)"
# [text](any/relative/path/shared/frameworks/x.md)
LINK = re.compile(r"\[([^\]]*)\]\((?:\.\./)*(?:\.?/)?shared/frameworks/" + NAME + r"\)")
# bare @shared/frameworks/x.md or shared/frameworks/x.md outside a link target
BARE = re.compile(r"@?shared/frameworks/" + NAME)
# links already rewritten by a previous run: references/shared/x.md or shared/x.md
LOCAL = re.compile(r"(?:references/)?shared/" + NAME)


def shared_refs(text):
    return {m[1] for m in LINK.findall(text)} | set(BARE.findall(text)) | set(LOCAL.findall(text))


def closure(names):
    todo, seen = list(names), set()
    while todo:
        n = todo.pop()
        if n in seen or not (SHARED / n).exists():
            continue
        seen.add(n)
        todo.extend(BARE.findall((SHARED / n).read_text()))
    return seen


def rewrite(text, prefix):
    text = LINK.sub(lambda m: f"[{m.group(1).replace('@shared/frameworks/', '').replace('shared/frameworks/', '')}]({prefix}{m.group(2)})", text)
    return BARE.sub(lambda m: f"{prefix}{m.group(1)}", text)


def main():
    check = "--check" in sys.argv
    skip = {a.split("=", 1)[1] for a in sys.argv if a.startswith("--skip=")}
    dirty = []
    for skill in sorted(p for p in (ROOT / "suites").glob("*/*") if (p / "SKILL.md").exists()):
        if skill.name in skip:
            continue
        files = [f for f in skill.rglob("*.md") if "references/shared" not in str(f.relative_to(skill))]
        needed = set()
        for f in files:
            needed |= shared_refs(f.read_text())
        missing = [n for n in needed if not (SHARED / n).exists()]
        if missing:
            print(f"[WARN] {skill.name}: references missing shared files {missing}")
        needed = closure(needed)
        for f in files:
            # SKILL.md / TEMPLATES.md live at the skill root; references/*.md one level down
            prefix = "references/shared/" if f.parent == skill else "shared/"
            new = rewrite(f.read_text(), prefix)
            if new != f.read_text():
                dirty.append(str(f.relative_to(ROOT)))
                if not check:
                    f.write_text(new)
        dest = skill / "references" / "shared"
        for n in needed:
            src, dst = SHARED / n, dest / n
            body = rewrite(src.read_text(), "")  # shared files reference siblings in the same folder
            if not dst.exists() or dst.read_text() != body:
                dirty.append(str(dst.relative_to(ROOT)))
                if not check:
                    dest.mkdir(parents=True, exist_ok=True)
                    dst.write_text(body)
    if check and dirty:
        print("Out of sync (run scripts/sync-shared.py):")
        print("\n".join(f"  {d}" for d in dirty))
        sys.exit(1)
    print(f"{'Checked' if check else 'Synced'}: {len(dirty)} file(s) {'out of sync' if check else 'written'}")


if __name__ == "__main__":
    main()
