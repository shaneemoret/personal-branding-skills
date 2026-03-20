---
name: content-signal-evaluator
description: >
  Scores content ideas by signal strength, buyer fit, and format leverage.
  Use when someone wants to rank ideas, decide what is worth building,
  diagnose why an idea feels weak, or upgrade a rough topic into a stronger
  claim for LinkedIn, blogs, newsletters, or other brand content. Trigger on:
  "rank these ideas", "is this publishable", "which idea is strongest",
  "evaluate this claim", "what should I build from this transcript". Do NOT
  trigger for final drafting, copyediting, or image-generation tasks.
---

# Content Signal Evaluator

Version: `v1.0.0`

Evaluate ideas before writing.

This skill is for deciding what is worth building, not for drafting the final asset.
It rewards non-commodity insight, clear buyer fit, visible trust signals, and
format leverage.

## Inputs

Provide as many of these as available:

- one idea or a list of ideas
- goal
- ICP
- preferred belief target
- source support, excerpt, or transcript snippet

If the user provides only a transcript or long source with no candidate ideas,
extract 3-7 candidate ideas in concise bullets first, then evaluate them.

## Shared Search + Trust Standard

- Reward non-commodity information gain.
- Reward visible trust and expertise signals.
- Reward ideas that can satisfy the main question plus likely follow-up questions.
- Penalize polished keyword-led ideas that sound plausible but teach nothing new.

## Core Filters

Score each filter as `PASS`, `WEAK`, or `FAIL`.

1. **Claim Strength**: Is this an arguable directional claim, not just a topic?
2. **Upstream Test**: Does it name a cause, bottleneck, or upstream diagnosis rather than a surface symptom?
3. **Falsifiability Test**: Could a smart practitioner push back or test it?
4. **Mechanism Test**: Does it explain why or how the claim is true?
5. **Provenance Test**: Is the idea grounded in observed patterns, source-linked evidence, or lived practice?
6. **Evidence Density Test**: Is there concrete support, example, pattern, proof, or excerpt to carry the claim?
7. **Scar Tissue Test**: Does it show tradeoff, cost, mistake, friction, or lived consequence?
8. **ICP Resonance Test**: Does this clearly fit the stated ICP instead of a vague broad audience?
9. **Belief-State Fit Test**: Does the idea match the intended buyer maturity?
10. **Strategic Utility Test**: Does the idea help the stated business goal instead of merely sounding interesting?
11. **Format Leverage Test**: Is there enough depth for a real asset, not just a clever one-liner?
12. **Information Gain Test**: Does it add distinct insight rather than repackage consensus?
13. **Trust Visibility Test**: Will experience, expertise, or proof be visible in the finished asset?
14. **Intent Satisfaction Potential Test**: Could the idea answer the main question and likely follow-ups?
15. **Opinion Ladder**: Place the idea on a 1-5 scale for originality and tension.

## Opinion Ladder

Use this to judge how much real tension the idea carries:

- `1` - generic observation
- `2` - useful but familiar angle
- `3` - structured teaching point or framework
- `4` - strong contrarian, hidden cost, or sequence correction
- `5` - high-tension claim with mechanism and real pushback potential

## Required Failure Modes

Use the first relevant primary failure mode:

- `Topic Bucket`
- `Strong Topic, Weak Claim`
- `Generic Truth`
- `Symptom Framing`
- `No Mechanism`
- `Borrowed Insight`
- `Commodity SEO Angle`
- `Thin Search Coverage`
- `Low Trust Visibility`
- `Strong Claim, Weak Support`
- `Wide Net Problem`
- `Wrong Belief Target`
- `Low Strategic Utility`
- `Too Thin for Asset`

## Rating Rules

- `STRONG`: 9 or more `PASS`, 1 or fewer `FAIL`, and the required filters are strong
- `PROMISING`: limited failures, but the idea still needs sharpening
- `NOT READY`: too many structural weaknesses to build on yet

Treat these as quality thresholds, not encouragement labels.

## Required Output

For each idea, return:

- `rating`
- `scorecard`
- `primary failure mode`
- `best format`
- `best belief target`
- `buyer-fit quality`
- `upgraded claim` if the idea is not `STRONG`

If multiple ideas are provided, rank them from strongest to weakest and recommend the top one.

## Output Format

Use this structure:

### Idea Summary
- Working title
- Core claim
- Rating

### Scorecard
- Claim Strength
- Upstream Test
- Falsifiability Test
- Mechanism Test
- Provenance Test
- Evidence Density Test
- Scar Tissue Test
- ICP Resonance Test
- Belief-State Fit Test
- Strategic Utility Test
- Format Leverage Test
- Information Gain Test
- Trust Visibility Test
- Intent Satisfaction Potential Test
- Opinion Ladder

### Diagnosis
- Primary failure mode
- Buyer-fit quality
- Best format
- Best belief target

### Upgrade
- Upgraded claim
- What would make this `STRONG`

If multiple ideas are present, add:

### Ranking
- Top recommendation
- Why it won
- Which idea should be dropped first

## Heuristics

- If the claim could headline any consultant's generic post, downgrade `Claim Strength`.
- If it teaches a lesson without exposing the mechanism, downgrade `Mechanism Test`.
- If it sounds smart but has no clear source, proof, or repeated observation behind it, downgrade `Provenance Test`.
- If it can attract traffic but not the right buyer, downgrade `Strategic Utility` and `Belief-State Fit`.
- If it reads like polished SEO content, fail `Information Gain Test`.

## Quality Gate

Before returning:

- Do not confuse a good topic with a strong claim.
- Do not reward broad educational traffic if buyer quality gets worse.
- Do not call something `STRONG` if it lacks mechanism, information gain, or buyer fit.
- Do not leave a weak idea without a sharper upgraded claim.

## Examples

For calibrated examples, read:
`references/examples.md`

Load this file when:

- the user asks for an example
- you need to calibrate how to score a weak vs. strong idea
- you want to show how an upgraded claim should look
