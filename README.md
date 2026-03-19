# Personal Branding Skills

Production-grade AI skills for founders, consultants, and advisors who want to turn their personal brand into a consistent source of inbound trust and demand.

These are not prompt packs. Each skill is a constraint-driven system designed to produce reliable, business-ready outputs under real-world conditions.

This repo starts with a single focused skill and will expand carefully into a fuller set of personal branding systems over time rather than being inflated with low-quality prompt dumps.

## Why This Repo Exists

Most prompt packs give you a clever first draft and then fall apart when the input is vague, the use case changes, or the output needs refinement.

These skills are different:

- **Constraint-driven, not style-first**
- **Built for real business use cases, not demos**
- **Designed to preserve identity and intent under iteration**
- **Structured to produce a usable first pass plus targeted refinements**
- **Hardened against common failure modes**

These patterns are based on real-world use cases where outputs must hold up across LinkedIn thumbnails, website layouts, and public-facing brand assets.

## Current Skills

| Skill | Purpose | Status |
| --- | --- | --- |
| [`consulting-headshot`](skills/consulting-headshot/SKILL.md) | Generates trust-building headshot prompts for LinkedIn, speaker bios, and about-page portraits | Stable |

## What `consulting-headshot` Is For

Use it when you want to generate or refine prompts for:

- LinkedIn profile photos
- speaker bio portraits
- about-page headshots
- professional founder, coach, or consultant portraits

Do not use it for:

- product photography
- team photos
- AI avatars
- illustrated portraits
- slide visuals

## Compatibility

This repo works best with:

- Codex-compatible local skill folders
- tools that load a skill from a folder containing a root `SKILL.md`

## How These Skills Work

Every skill in this repo is designed to follow the same pattern:

1. Generate a usable first pass
2. Apply targeted refinements to the parts most likely to fail
3. Converge to a final output that works in real conditions

## How To Use It

1. Clone the repo:

```bash
git clone https://github.com/shaneemoret/personal-branding-skills.git
cd personal-branding-skills
```

2. Install the skill into your local skills directory. The exact location depends on your tool.

For Codex-compatible setups, `CODEX_HOME` is the local directory where installed skills live.

```bash
mkdir -p "$CODEX_HOME/skills"
cp -R skills/consulting-headshot "$CODEX_HOME/skills/"
```

3. If you use another tool with a local skills folder, copy `skills/consulting-headshot/` into that tool's skills directory and keep `SKILL.md` at the root of the skill folder.

4. Prompt the model with a clear request and, if available, provide a reference photo.

The skill is designed to:

- choose the right use case first
- preserve identity
- avoid common AI portrait failure modes
- produce a baseline prompt plus refinement prompts
- generate only the crop variants needed for the requested use case

## Verify Install

After copying the skill into your tool's skills directory, restart the tool and try:

> Create a LinkedIn headshot prompt for a consultant using a reference photo.

If the install worked, the model should respond in the structured format described below rather than giving you a generic one-shot prompt.

## Example Prompts

Use the `consulting-headshot` skill for prompts like:

- `Create a LinkedIn headshot prompt for a founder using this reference photo.`
- `I need a speaker bio portrait that feels authoritative but still warm.`
- `Generate a professional about-page portrait prompt for a consultant with no reference photo. Ask only for the appearance details you need.`
- `Refine this headshot prompt so it reads better at LinkedIn thumbnail size.`

## Example Outputs

Browse the example files:

- [`examples/linkedin-headshot-example.md`](examples/linkedin-headshot-example.md)
- [`examples/speaker-bio-example.md`](examples/speaker-bio-example.md)
- [`examples/text-only-identity-example.md`](examples/text-only-identity-example.md)
- [`examples/failure-mode-repair-example.md`](examples/failure-mode-repair-example.md)

## What You Should Expect Back

The skill should return:

- a recommended visual direction
- a quick baseline prompt
- a base generation prompt
- refinement prompts for lighting, expression, and crop
- a likely failure mode
- a fix instruction for the next round

## Best Results

- Provide a reference photo if exact likeness matters.
- If no reference photo is available, describe hair, skin tone, glasses, facial hair, and any defining features.
- Specify the use case when you can: `LinkedIn`, `about page`, or `speaker bio`.
- Ask for one use case at a time unless you truly need multiple crop variants.

## Design Principles

Skills in this repo should:

- optimize for business outcome before style
- preserve identity and intent
- handle weak input without stalling
- generate usable first-pass output plus refinements
- include failure-mode correction where relevant

## Repo Structure

```text
personal-branding-skills/
  README.md
  LICENSE
  .gitignore
  examples/
    linkedin-headshot-example.md
    speaker-bio-example.md
    text-only-identity-example.md
    failure-mode-repair-example.md
  skills/
    consulting-headshot/
      SKILL.md
```
