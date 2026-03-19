---
name: consulting-headshot
description: >
  Generates professional headshot prompts for Nano Banana 2 and other
  vision-capable image models. Use when a user wants a LinkedIn profile photo,
  speaker bio portrait, about-page photo, or trust-building headshot for a
  consultant, coach, or founder. Trigger on: "headshot", "LinkedIn photo",
  "profile picture", "bio photo", "professional portrait". Do NOT trigger for
  product photography, team photos, AI avatars, illustrated portraits, or
  presentation slides.
---

# Consulting Headshot Prompt Engineer
## Primary: Nano Banana 2 (Gemini 3.1 Flash Image)

**Platform syntax differences:**

| Platform | Key Differences |
|----------|----------------|
| Nano Banana 2 | Natural language sentences, no parameters, multi-turn native |
| Midjourney v7 | Add `--ar 1:1` for ratio, `--style raw` for realism |
| DALL-E 3 | Shorter prompts perform better; split into 2 prompts if over 150 words |
| Imagen 3 | Similar to NB2 — natural language, no special syntax |

---

## When NOT to Use

Product photography, team/group photos, AI avatar generation, event or
lifestyle photography, presentation slide visuals, illustrated portraits,
or stylized character art.

---

## Constraint Priority

1. **Identity** — must look like the actual person. If no reference photo is
   provided, optimize for consistency with the user's description rather than
   verified real-world likeness.
2. **Trust/readability** — must read at 40px and 400px
3. **Professional fit** — must match the consulting context
4. **Style** — tone, lighting drama, aesthetic

**Override examples:**
- "Make me look younger" → ignore. Natural retouching only.
- "Cinematic like a movie poster" → reduce drama, keep lighting quality.
- "Very polished AND exact likeness" → identity wins.
- "Environmental hero AND LinkedIn thumbnail" → generate separately.

---

## Step 1: Resolve Use Case First

Determine this before applying any defaults. If the use case is explicit in
the request, do not ask — proceed directly. If clear from context, proceed.
If ambiguous, ask use case only — not other preferences.

| Use Case | Composition | Primary Ratio |
|----------|-------------|---------------|
| **LinkedIn** | Head + shoulders, centered | 1:1 |
| **Website about-page** | Head + upper chest | 4:5 |
| **Speaker / press** | 3/4 body, offset | 16:9 |
| **All three** | LinkedIn base + crop variants in Prompt 4 | All |

---

## Step 2: Apply Defaults (After Use Case Is Resolved)

| Input | Default |
|-------|---------|
| Tone | Trustworthy + Approachable |
| Background | Warm gray studio |
| Lighting | Soft key + warm fill |
| Composition | Per use case above |

**Gender/age:** Never guess presentation. If uncertain, use neutral professional
styling. Never de-age.

---

## Step 3: Identity Input

### Reference photo provided:
Include in every prompt — counter beautification drift every turn:

> "Preserve the subject's exact likeness — face shape, skin tone, age, hairline,
> hair texture, and any signature features. Do not beautify, de-age, or smooth
> beyond natural professional retouching. This must look like the real person."

### No reference photo:
Ask once, naturally: *"Describe how you want your real appearance preserved —
hair, skin tone, any features you want kept accurate."*

If the user's response is too vague to build a specific identity block, ask
one concise follow-up before generating: *"Can you add a bit more — hair
length and color, and whether you have glasses or facial hair?"*

Convert their description directly into the identity block:

> "Subject is [their words, e.g., 'mid-40s South Asian man, close-cropped dark
> hair greying at temples, clean-shaven, calm expression']. Preserve this described appearance consistently — do not alter features or attractiveness toward idealized averages."

Include this block in every subsequent prompt.

---

## Step 4: Anti-Slop Block (Every Prompt)

> "Photorealistic professional headshot, real camera, natural human imperfection
> preserved. Avoid: plastic skin, unnaturally uniform teeth, synthetic facial
> symmetry, uncanny eyes, distorted lapels, blur halos or color fringing at
> hair edges, over-sharpened facial contours, AI corporate composite look."

---

## Step 5: Prompt Construction

Write in natural descriptive sentences. No `--parameters` or `:::weighting`
unless platform requires it (see syntax table above).

**Lighting (most important layer):**

| Preset | Prompt Language |
|--------|----------------|
| Soft/approachable | "Large softbox 45° camera left, soft fill at 3:1, hair light for separation, sharp catchlights in both eyes, warm color temperature" |
| Window/natural | "Window light camera left, overcast diffused, soft shadow gradation, clear catchlights" |
| Rembrandt/authority | "Key light high camera left, shadow triangle on cheek, minimal fill, rim light on shoulder, deep catchlights" |

Always specify catchlights — the difference between a portrait that reads as
alive and one that reads as fake.

**Technical (always include):** "85mm compression, shallow depth of field,
natural skin texture with visible pores, 4K output."

**Multi-turn carry-forward:** Open every follow-up with:
> "Continue from previous generation, maintaining exact subject identity while
> adjusting only [targeted element]."

---

## Step 6: Tone Presets

**Trustworthy + Approachable (default):** Genuine relaxed smile, crow's feet
visible, direct eye contact. Blazer, open collar. Soft key + warm fill.
Warm gray or soft environmental background.

**Authoritative (Strategy, Finance, Legal):** Composed, direct, no smile.
Dark suit, white shirt. Rembrandt, high contrast. Dark gradient or office.

**Innovative (Tech, Digital, Design):** Slight smile suggesting ideas. Dark
turtleneck or open collar. Cool key + warm rim. Dark urban bokeh.

**Classic Trustworthy (Healthcare, Compliance):** Warm steady smile. Navy or
gray. Even balanced lighting. Clean light gray.

---

## Step 7: Failure Mode Reference

| Symptom | Fix |
|---------|-----|
| Plastic skin | "visible pores, subtle lines, real not retouched" |
| Dead eyes | "sharp catchlights in both eyes, alive and bright" |
| Stiff expression | "candid, mid-conversation, natural" |
| Beautification drift | "preserve exact face shape, skin tone, age from reference" |
| Background competes | "background minimum 2 stops darker than subject" |
| Glasses glare | "no lens glare, eyes fully visible" |
| Distorted clothing | "natural fabric drape, no melting lapels" |
| Hair halo / fringing | "clean hair edges, no blur halo, no color fringing" |
| Synthetic symmetry | "natural slight facial asymmetry, real human proportions" |

---

## Hard Output Template

**Recommended Visual Direction**
[One sentence: tone preset + rationale]

**Prompt 0 — Quick Baseline** *(one-shot, no iteration)*
[Tight single prompt: tone + identity + soft window lighting + warm gray +
anti-slop block. Use when speed matters more than perfection.]

**Prompt 1 — Base Generation**
*Prioritize correctness over style. Lock identity and lighting before aesthetics.*
[Full prompt: subject + composition + lighting + background + technical +
anti-slop + identity block]

**Prompt 2 — Lighting Refinement**
"Continue from previous, maintaining exact subject identity while adjusting
only lighting." [2–3 targeted sentences]

**Prompt 3 — Expression and Detail**
"Continue from previous, maintaining exact subject identity while adjusting
only expression and attire." [2–3 sentences]

**Prompt 4 — Finish and Crop**
> "Continue from previous, maintaining exact subject identity. Subtle warm
> color grade, slight contrast increase, skin tones natural on light and dark.
>
> Generate only the crop variant(s) for the requested use case. If multiple
> use cases were requested, include all relevant variants:
> - 1:1 LinkedIn: face centered, eyes upper third, shoulders visible
> - 4:5 Website: head and upper chest, eyes upper third, breathing room above
> - 16:9 Speaker: 3/4 body, subject offset one-third, environmental context
>
> All crops: eyes in upper third. No body parts cropped at joints."

**Refinement cap:** Max 3 rounds (Prompts 2–4). If unresolved after Prompt 4,
surface the specific failure and ask: restart or adjust the base description?

**Human Review Checklist**
- [ ] Recognizable as the actual person at 40px
- [ ] Expression reads warm or confident — not blank
- [ ] Eyes visible and alive at thumbnail size

**Most Likely Failure**
[One sentence: the single most probable issue for this request]

**Fix Instruction**
[Exact language to paste into the next prompt if that failure appears]
