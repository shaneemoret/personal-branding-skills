# Personal Branding Skills

Production-grade AI skills for founders, consultants, coaches, and advisors who want to turn their personal brand into a consistent source of trust, visibility, and inbound demand.

These are not prompt packs. Each skill is a constraint-driven system built to handle a specific personal-branding job under real-world conditions.

This repo is being built as a modular personal-branding skill library: strategy skills, platform and content skills, visual-generation skills, and analysis skills that help repurpose raw material into usable brand assets.

## Why This Repo Exists

Most prompt packs give you a clever first draft and then fall apart when the input is vague, the platform changes, the audience gets more specific, or the output needs to hold up under iteration.

These skills are different:

- **Constraint-driven, not style-first**
- **Built for real business use cases, not demos**
- **Designed to preserve identity and intent under iteration**
- **Structured to preserve strategy from first pass through refinement**
- **Hardened against common failure modes**

These patterns are built for real personal-brand systems where work has to stay coherent across messaging, content formats, visuals, websites, and repurposing workflows.

## Skill Categories

This repo is intended to grow across four complementary skill families:

- **Strategy skills** for ICP messaging, positioning, offers, and narrative clarity
- **Platform and content skills** for LinkedIn, websites, newsletters, blogs, and other channel-specific content
- **Image generation skills** for headshots, thumbnails, blog headers, and strategic visual assets
- **Analysis and repurposing skills** for turning transcripts, datasets, performance signals, or long-form material into reusable brand content

## Current Skills

| Skill | Category | Purpose | Status |
| --- | --- | --- | --- |
| [`consulting-headshot`](skills/consulting-headshot/SKILL.md) | Image generation | Generates trust-building headshot prompts for LinkedIn, speaker bios, and about-page portraits | Stable |
| [`icp-visual-concept-generator`](skills/icp-visual-concept-generator/SKILL.md) | Image generation | Turns a content idea into a strategic thumbnail or visual prompt that matches ICP psychology, platform constraints, and brand positioning | Stable |

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

## What `icp-visual-concept-generator` Is For

Use it when you want to generate or refine prompts for:

- LinkedIn visuals tied to a clear audience and positioning claim
- YouTube thumbnails that need authority, tension, or stop-scroll clarity
- blog headers and newsletter visuals that support a business argument
- repeatable content-system visuals for founders, consultants, coaches, and advisors

Do not use it for:

- generic image requests with no audience or positioning context
- decorative illustrations where strategy is irrelevant
- brandless moodboards
- product renders or catalog-style images

## Compatibility

This repo works best with:

- Codex-compatible local skill folders
- tools that load a skill from a folder containing a root `SKILL.md`

## How These Skills Work

Each skill in this repo is designed to capture the constraints that usually get lost between strategy and execution:

1. Resolve the real task, audience, and format first
2. Generate a usable output with the right defaults and guardrails
3. Preserve brand, positioning, and platform fit through iteration
4. Surface likely failure modes when quality is at risk

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

To install the visual strategy skill instead:

```bash
cp -R skills/icp-visual-concept-generator "$CODEX_HOME/skills/"
```

3. If you use another tool with a local skills folder, copy the specific skill folder you want - for example `skills/consulting-headshot/` or `skills/icp-visual-concept-generator/` - into that tool's skills directory and keep `SKILL.md` at the root of the skill folder.

4. Prompt the model with a clear request and provide the relevant source material for that skill when available, such as a reference photo, article idea, transcript, URL, brand kit, or dataset.

Most skills in this repo are designed to:

- identify the real use case before generating output
- preserve strategic context, brand logic, and audience fit
- handle weak input without stalling on every missing detail
- produce a first pass that is actually usable
- support iteration without losing the original positioning

## Verify Install

After copying a skill into your tool's skills directory, restart the tool and try one of the example prompts for that skill, such as:

> Turn this article idea into a LinkedIn visual for B2B consultants that signals authority without looking generic.

If the install worked, the model should respond in the structured format described below rather than giving you a generic one-shot prompt.

## Example Prompts

Use the `consulting-headshot` skill for prompts like:

- `Create a LinkedIn headshot prompt for a founder using this reference photo.`
- `I need a speaker bio portrait that feels authoritative but still warm.`
- `Generate a professional about-page portrait prompt for a consultant with no reference photo. Ask only for the appearance details you need.`
- `Refine this headshot prompt so it reads better at LinkedIn thumbnail size.`

Use the `icp-visual-concept-generator` skill for prompts like:

- `Turn this article idea into a LinkedIn visual for B2B consultants that signals authority without looking generic.`
- `Create a YouTube thumbnail concept for founders stuck at $2M revenue.`
- `Make a blog header prompt for this post idea, using my website colors and operator brand positioning.`
- `Give me a fast-mode visual prompt for this newsletter idea with a technical ICP.`

## Example Outputs

Browse the example files:

- [`examples/linkedin-headshot-example.md`](examples/linkedin-headshot-example.md)
- [`examples/speaker-bio-example.md`](examples/speaker-bio-example.md)
- [`examples/text-only-identity-example.md`](examples/text-only-identity-example.md)
- [`examples/failure-mode-repair-example.md`](examples/failure-mode-repair-example.md)
- [`skills/icp-visual-concept-generator/references/examples.md`](skills/icp-visual-concept-generator/references/examples.md)

## What You Should Expect Back

The skill should return:

- a recommended visual direction
- a quick baseline prompt
- a base generation prompt
- refinement prompts for lighting, expression, and crop
- a likely failure mode
- a fix instruction for the next round

The visual concept skill should return:

- a sharpened claim, not just a topic
- an ICP-specific visual strategy
- one or two scene concepts with clear rationale
- a production-ready prompt with color and typography discipline
- platform-aware reuse guidance when full strategy mode is used

## Best Results

- Provide the actual source material when it matters: reference photo, transcript, URL, notes, draft, dataset, or brand kit.
- Specify the audience and platform whenever the skill depends on them.
- Say whether you want a fast output or a fuller strategic pass when the skill supports both.
- Ask for one core task at a time unless the skill explicitly supports multi-output workflows.

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
    icp-visual-concept-generator/
      SKILL.md
      references/
        examples.md
```
