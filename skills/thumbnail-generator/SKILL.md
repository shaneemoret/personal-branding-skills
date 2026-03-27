---
name: thumbnail-generator
description: Create high-converting thumbnails for expert-led video content. Use when a user wants a YouTube, LinkedIn, or course thumbnail from a title, image, or video idea, especially when they want help sharpening the hook before designing.
---

# Thumbnail Generator

Produces premium thumbnails by combining strategic positioning, creative direction, and clean execution.

**Core rule:** If the hook is weak, rewrite the idea before designing anything. If recoverable, rewrite and proceed. If too vague to rescue, ask the user for a sharper title or core idea.

**Anti-slop rule:** Do not produce clickbait, exaggerated facial reactions, red-arrow aesthetics, or cluttered YouTube tropes unless the user explicitly asks for them.

---

## Not For

Do not use this skill for:

- Generic social quote graphics
- Infographic carousels or multi-panel layouts
- Flat corporate banners
- Meme-style thumbnails
- Busy collages with multiple competing elements

---

## Input Handling

| Missing input | Action |
|---|---|
| No title | Ask for it |
| No photo (person-dependent thumbnail) | Ask for it |
| No platform | Default to YouTube |
| User wants speed | Skip style questions, proceed with best judgment, offer iteration after |

---

## Layer 1 — Strategy

*Run silently unless the user asks to see reasoning.*

### Core Positioning

Extract the strongest, most defensible **angle** — not the topic, but the **stance**.

| Weak (topic) | Strong (angle) |
|---|---|
| LinkedIn strategy | Founders Misuse LinkedIn |
| Fundraising advice | Why Founders Lose Raises |
| Morning routine | The Routine Nobody Talks About |

### Viewer Motivation

Pick one primary driver:

| Motivation | Use when |
|---|---|
| **Authority** | Viewer wants to trust the speaker and learn |
| **Curiosity** | There's a gap, secret, or implied reveal |
| **Urgency** | Something is at stake — they need this now |
| **Transformation** | Before/after, problem/solution framing |
| **Contrast** | Two competing ideas colliding |
| **Identity** | Viewer sees themselves — "For CEOs", "For Founders" — underused and high-performing |

### Thumbnail Type

`authority` · `curiosity-gap` · `bold-claim` · `transformation` · `comparison` · `identity-led`

### Text Compression

Rules:
- Remove all filler words
- Prioritize nouns, outcomes, and identity signals
- 2–5 words maximum (2–3 is ideal; 4–5 only if each word earns its place)
- Viewer must *feel* the idea instantly — never read it

**Kill rule:** If it still sounds generic after compression, rewrite the *idea* — not just the words.

Generate 3 text options internally, rank them, and use the strongest — unless the user asks to review options first.

---

## Layer 2 — Art Direction

### Style Selection

| Content type | Mode |
|---|---|
| Premium educational, identity-led | **Mode 1** — Executive Authority |
| Strong direct promise, urgency | **Mode 2** — High-Contrast Authority |
| Curiosity-gap, contrast | **Mode 3** — Strategic Tension |
| Paid content, courses, LinkedIn | **Mode 4** — Minimal Editorial |
| Contrarian claim, bold opinion | **Mode 5** — Controlled Disruption |

See `references/examples.md` for one worked example per mode.

### Dominance Decision

- **Text-led** *(default)* — strong idea, educational content; text left, face right
- **Face-led** — personality is the hook, opinion-driven; face larger, text smaller and tighter

### Platform Adjustment

| Platform | Adjustments |
|---|---|
| YouTube | Stronger contrast, more direct wording, slight tension |
| LinkedIn | Restrained, authority-driven, less aggressive wording |
| Courses / paid | Editorial, clean, trust-first, less aggressive |

### Taste Constraints

These apply to every thumbnail regardless of mode:

- Use only one text treatment — no mixed fonts, sizes, or colors
- Add no decorative elements unless they directly improve clarity
- Do not over-darken the face — eyes must remain clearly visible
- Preserve natural skin tone; avoid heavy color grading on the subject
- No subtitle text smaller than 42px — if it can't be read at thumbnail size, cut it

---

## Layer 3 — Production

Load `assets/thumbnail-template.html`. Swap all `[VARIABLES]` based on the selected mode and composition. Produce as an HTML artifact.

If `assets/thumbnail-template.html` does not exist, generate a self-contained HTML artifact using the same structure.

Use natural two-line breaks to increase impact and visual balance. Avoid awkward orphan words.

Full variable specs for all 5 modes and both compositions are in the comment block at the bottom of `assets/thumbnail-template.html`.

---

## Pre-Output Validation

Before generating, confirm all of the following:

- [ ] Text reads clearly at 25% scale (simulate mobile thumbnail size)
- [ ] Only one core idea on screen
- [ ] Face is recognizable at thumbnail size
- [ ] Eyes are visible — not lost in shadow or crop
- [ ] Text and face do not overlap or compete
- [ ] Composition looks intentional, not accidental
- [ ] Text is non-generic after compression

If any check fails, fix it before generating.

---

## Output Contract

1. Run Layers 1–2 silently
2. Generate one HTML artifact
3. After the artifact, return exactly three lines:
   - **Text chosen** — and why it beat the other two options
   - **Mode chosen** — one-sentence rationale
   - **Iteration options** — what the user can adjust next

Do not over-explain. Keep the post-artifact response tight.
