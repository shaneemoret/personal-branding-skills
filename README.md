# Personal Branding Skills

Production-grade AI skills for founders, consultants, and advisors who want stronger authority signals, trust-building brand assets, and more consistent inbound marketing outputs.

This repo currently starts with one focused skill and is being built carefully rather than inflated with low-quality prompt dumps.

## Why This Repo Exists

Most prompt packs give you a clever first draft and then fall apart when the input is vague, the use case changes, or the output needs refinement.

These skills are different:

- constraint-driven instead of style-first
- built for real business use cases
- designed to preserve identity and intent
- structured to produce a usable first pass plus refinement steps
- hardened against common failure modes

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

## How To Use It

1. Clone the repo:

```bash
git clone https://github.com/shaneemoret/personal-branding-skills.git
cd personal-branding-skills
```

2. Install the skill into your local skills directory.

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

You should get back:

- a recommended visual direction
- a quick baseline prompt
- a base generation prompt
- refinement prompts for lighting, expression, and crop
- a likely failure mode plus a fix instruction

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
