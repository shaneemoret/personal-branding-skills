# Personal Branding Skills

Production-grade AI skills for founders, consultants, coaches, and advisors who are done with generic prompt outputs.

These are constraint-driven systems designed to hold up under real distribution, real audiences, and real revenue pressure.

This is not a prompt library.

It is a system for turning raw ideas into consistent, high-quality personal-brand outputs across platforms without losing positioning, audience fit, or brand identity.

This repo is being built as a modular personal-branding skill library: strategy skills, content skills, visual skills, and analysis skills that help repurpose raw material into usable brand assets.

## Why This Repo Exists

Most prompt packs break in predictable ways:

- They produce outputs that sound right but do not convert
- They lose positioning after one or two iterations
- They ignore platform constraints, audience context, or conversion intent
- They generate content and visuals that feel generic across industries

This repo exists to solve those failure modes directly.

These skills are different:

- **Constraint-driven, not style-first**
- **Built for real business use cases, not demos**
- **Designed to preserve identity and intent under iteration**
- **Structured to preserve strategy from first pass through refinement**
- **Hardened against common failure modes**

These patterns are built for real personal-brand systems where work has to stay coherent across messaging, content formats, visuals, websites, and repurposing workflows.

## Why Trust These Skills

These systems are not theoretical.

They are built from:

- A personal brand with nearly 1M LinkedIn followers
- A 27K private email list and 12K YouTube audience
- Client work that has collectively generated millions in inbound revenue

The patterns in this repo reflect what actually holds up when:

- content is distributed at scale
- audiences are sophisticated
- outputs must convert, not just look good

## Skill Categories

This repo is structured as a system across four layers:

1. **Strategy** - ICP, positioning, messaging, and offers
2. **Content** - platform-specific execution and distribution
3. **Visuals** - images, thumbnails, and brand assets
4. **Analysis** - repurposing, performance signals, and iteration

Each layer feeds the next. Together, they form a complete personal-brand system.

### Content Skills Are Organized By

Each content skill is built around a specific combination of:

- **Platform** - LinkedIn, YouTube, Website, Newsletter
- **Format** - text post, live video, short video, article, page
- **Intent** - authority, demand generation, education, conversion

Examples of content skill types:

- LinkedIn text posts for authority, insight, or narrative
- LinkedIn live video for trust-building and demand generation
- LinkedIn short video for reach and discovery
- YouTube long-form for depth and authority
- Newsletter content for relationship-building and conversion
- Website pages for positioning and conversion

Website content lives inside the Content layer as conversion content, not as a separate top-level category.

## Current Skills

| Skill | Layer | Purpose | Status |
| --- | --- | --- | --- |
| [`consulting-headshot`](skills/consulting-headshot/SKILL.md) | Visuals | Generates trust-building headshot prompts for LinkedIn, speaker bios, and about-page portraits | Stable |
| [`icp-visual-concept-generator`](skills/icp-visual-concept-generator/SKILL.md) | Visuals | Turns a content idea into a strategic thumbnail or visual prompt that matches ICP psychology, platform constraints, and brand positioning | Stable |

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

### Consulting Headshot Output

- recommended visual direction
- baseline prompt
- generation prompt
- refinement prompts
- likely failure mode
- fix instruction

### ICP Visual Concept Generator Output

- sharpened claim
- ICP-specific visual strategy
- 1-2 scene concepts
- production-ready prompt
- platform-aware variants in full mode

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

## What Belongs In This Repo

A skill should only be added if it:

- solves a specific, recurring personal-branding job
- encodes constraints that prevent common failure modes
- produces usable output on the first pass
- preserves positioning under iteration

If it does not meet these criteria, it does not belong in this repo.

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
