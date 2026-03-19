# Personal Branding Skills

Reusable AI skills for personal branding, authority building, and trust-driven inbound marketing.

This repo is intentionally small. Each skill is built around one clear outcome and written to be practical, reusable, and production-ready.

## Current Skill

- [`consulting-headshot`](skills/consulting-headshot/SKILL.md)
  Generate professional headshot prompts for Nano Banana 2 and other vision-capable image models for LinkedIn, speaker bios, and about-page portraits.

## Quick Start

Clone the repo:

```bash
git clone https://github.com/shaneemoret/personal-branding-skills.git
cd personal-branding-skills
```

If you want to use the skill in a Codex-compatible local skill directory:

```bash
mkdir -p "$CODEX_HOME/skills"
cp -R skills/consulting-headshot "$CODEX_HOME/skills/"
```

If you use another tool with a skills folder, copy the `consulting-headshot/` folder into that tool's local skills directory and keep `SKILL.md` at the root of the skill folder.

## Example Uses

Use the `consulting-headshot` skill for prompts like:

- `Create a LinkedIn headshot prompt for a founder using this reference photo.`
- `I need a speaker bio portrait that feels authoritative but still warm.`
- `Generate a professional about-page portrait prompt for a consultant with no reference photo. Ask only for the appearance details you need.`
- `Refine this headshot prompt so it reads better at LinkedIn thumbnail size.`

## Repo Structure

```text
personal-branding-skills/
  README.md
  .gitignore
  skills/
    consulting-headshot/
      SKILL.md
```

## Principles

- Keep each skill narrow and outcome-based.
- Prefer one strong skill over five weak micro-skills.
- Make trigger conditions clear.
- Include practical defaults, failure handling, and usable output templates.
- Add new skills only when they solve a distinct repeatable job.

## Planned Next Skills

These are likely next additions, but they are not in the repo yet:

- `linkedin-profile-optimizer`
- `linkedin-post-engine`
- `linkedin-offer-alignment`
- `linkedin-dm-conversion`

## Notes

- This repo starts with one foundational skill on purpose.
- The goal is quality, not volume.
- Each new skill should earn its place by solving a separate part of the personal-brand inbound system.
