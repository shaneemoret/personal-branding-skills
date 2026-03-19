# Personal Branding Skills

Reusable AI skills for personal branding, authority building, and trust-driven inbound marketing.

## Current Skill

- [`consulting-headshot`](skills/consulting-headshot/SKILL.md)
  Generate professional headshot prompts for Nano Banana 2 and other vision-capable image models for LinkedIn, speaker bios, and about-page portraits.

## What This Skill Is For

Use `consulting-headshot` when you want to generate or refine prompts for:

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

## How To Use It

1. Clone the repo:

```bash
git clone https://github.com/shaneemoret/personal-branding-skills.git
cd personal-branding-skills
```

2. If you want to use the skill in a Codex-compatible local skill directory:

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

## Example Prompts

Use the `consulting-headshot` skill for prompts like:

- `Create a LinkedIn headshot prompt for a founder using this reference photo.`
- `I need a speaker bio portrait that feels authoritative but still warm.`
- `Generate a professional about-page portrait prompt for a consultant with no reference photo. Ask only for the appearance details you need.`
- `Refine this headshot prompt so it reads better at LinkedIn thumbnail size.`

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

## Repo Structure

```text
personal-branding-skills/
  README.md
  .gitignore
  skills/
    consulting-headshot/
      SKILL.md
```

## Roadmap

Likely next skills:

- `linkedin-profile-optimizer`
- `linkedin-post-engine`
- `linkedin-offer-alignment`
- `linkedin-dm-conversion`
