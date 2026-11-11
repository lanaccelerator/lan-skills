# LAN Skills

`AGENTS.md` is an identical copy of this file for other agents; edit this file, then copy it over (`cmp` must pass).

42 execution-focused skills by LAN Accelerator for startup founders, VC operators, LPs and angels, and corporates, published as an open-source (MIT) repo on GitHub. Each skill is a folder of markdown that the installer copies to `~/.claude/skills/`.

## Commands

- `./validate.sh` before every commit: checks each skill's `name` against its folder, name length and characters, the 500-line limit, and that shared frameworks are in sync.
- `python3 scripts/sync-shared.py` after editing anything in `shared/frameworks/`, because the installers copy only `suites/` and each skill carries its own copy in `references/shared/`.
- `./install.sh` copies every skill into `~/.claude/skills/` and moves differing local versions to `~/.claude/skills-backup/<date>/`. Ask the maintainer before running it, since it replaces the skills their own sessions use.

## Where things live

- Skills: `suites/<suite>/<skill>/` with `SKILL.md`, `TEMPLATES.md` and `references/`. Suites: `startups` (28), `lp-angel` (5), `vc-operators` (5), `corporates` (4).
- How to write a skill (frontmatter, body sections, LATAM context, activation testing, anti-patterns): `docs/how-to-create-skills.md`.
- Shared frameworks, the source for material several skills use: `shared/frameworks/`.
- npm installer for `npx github:lanaccelerator/lan-skills`: `bin/install-skills.js`.
- `.planning/` holds historical build plans; read it only for history. `references/` and `awesome-claude-skills/` are local, gitignored source material.
- Early format research: `docs/research-archive.md` (historical).

## Rules

- This repo is public: keep secrets, client names and internal data out of every file, and ask the maintainer before any push, because anything pushed is published.
- Write skill text by `shared/frameworks/editorial-voice.md` (no em dashes, no banned phrases), because that voice is the product.
- Keep the skill count in step everywhere it appears when you add or remove a skill: the README badge, intro and catalog, and the `description` in `package.json`. The catalog page on the LAN Accelerator website is a separate list kept in the website's own repo and needs its own update.
