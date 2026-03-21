---
name: transcript-to-b2b-blog
description: >
  Transform a transcript from a LinkedIn Live, webinar, podcast, or recorded presentation
  into a clear, credible, well-structured B2B blog post or LinkedIn article. Trigger this
  skill when the user provides an actual transcript or clearly recorded spoken content and
  wants it turned into a publishable article. Do NOT trigger for general ghostwriting,
  idea generation, notes cleanup, or requests where no source transcript exists — those
  require a generation skill, not a transformation skill. This is a signal-preservation
  system: it restructures and sharpens what the speaker actually said without adding,
  upgrading, or inventing anything.
---

# Transcript-to-B2B Blog - v2
Version: `v1.0.0`

## The One Rule

> **Make it sound clearer than the transcript. Not better than the thinking.**

Everything else follows from this.

---

## Step 0: Author Identification (First Pass)

Before extraction or drafting, do a first pass for authorship and signal. Read enough of the transcript to determine who is speaking and whether it can support a full article, but do not begin extracting content until author is confirmed.

**Priority order - stop at the first match:**

1. **Explicit user instruction.** If the user names the author, that settles it.
2. **Clear transcript dominance.** One speaker provides the majority of ideas, frameworks, and teaching. That speaker is the author.
3. **Role inference.** Apply only when one speaker is clearly a host or interviewer and the other is the expert being interviewed. In that case, the expert is the author and the interviewer is invisible in output. Do not apply role inference to two-expert or two-substantive-speaker conversations.
4. **Two substantive experts -> stop and ask.** If both speakers are driving ideas, frameworks, or teaching, do not guess. Ask: *"Both speakers seem to be contributing substantively. Who should the article be written as?"*
5. **Ambiguous for any other reason -> stop and ask.** Ask: *"This transcript has multiple speakers and it's not clear who the article should be written as. Who is the author?"*

"Default to first speaker" is not a fallback. If dominance is unclear, authorship is unclear, and the right move is always to ask.

**Speaker classification (internal - never surfaces in output):**

| Speaker Role | Treatment |
|---|---|
| Primary Author | Extract fully - becomes the blog voice |
| Interviewer / Host | Context only - invisible in output |
| Guest / Other | Included only if the author directly engages with or validates their point |

**Multi-speaker rules:**
- Output reads as one person's thinking, not a transcript recap
- Dialogue becomes narrative - Q&A format disappears
- Guest insights may be attributed lightly: *"A client once pointed out..."* - never as shared authority
- If no speaker clearly dominates -> stop and ask before proceeding

---

## Step 1: Signal Check (Before Extraction)

Run three checks against the transcript. Produce the signal check block as part of the output regardless of outcome - do not skip it.

**Information Gain** - Does the transcript contain at least one non-obvious claim, specific result, concrete observation, or perspective that goes beyond cleaned-up consensus? A transcript that only restates common advice without specificity should fail this check even if it is well-spoken.

**Trust Visibility** - Does the transcript contain observable evidence of lived experience, repeated execution, domain-specific pattern recognition, buyer insight, or concrete outcomes? Vague confidence or polished delivery does not count.

**Intent Satisfaction** - Is there enough substance for a real article? Or only enough for a short post?

Output this block before proceeding:

```text
SIGNAL CHECK:
  Information Gain:    PASS / FAIL
  Trust Visibility:    PASS / FAIL
  Intent Satisfaction: PASS / FAIL
```

**If all three fail** -> decline full-blog treatment. Output:

```text
FULL ARTICLE: declined
WHY: [specific reason - what's missing]
MISSING: [list the absent elements: thesis, examples, execution signals, buyer language, etc.]
OPTIONAL SHORT POST VERSION: [a short LinkedIn-style post built from whatever signal does exist - or a note that even a short post isn't supported if the transcript is truly empty]
```

**If one or two pass** -> proceed with a size-appropriate output (see Size Guardrail below). Flag the gaps in "What Was Omitted."

Do not silently produce a thin article. Surface the gate result first.

---

## Step 2: Extraction (Pass 1)

Work through the transcript and produce this extraction block. This is the source of truth for the draft - nothing that isn't here goes into the article.

```text
AUTHOR: [name or role]
CORE THESIS: [one sentence - the main claim or argument]
KEY POINTS: [3-10 labeled ideas, each followed by a source cue - a short verbatim phrase or transcript location that grounds it. Format: [idea label] | source: "[short quote or description of where this appears]"]
EXECUTION SIGNALS: [quotes or references showing repeated experience - "across clients," "by the third time," etc. If none: "none found"]
DATA / SPECIFICS: [numbers, conversion rates, timeframes, client results - verbatim from transcript. If none: "none found"]
BUYER LANGUAGE: [what prospects say, how they frame the problem, what changed in a conversation. If none: "none found"]
WEAK SPOTS: [sections that are thin, unclear, or unsupported - flag them explicitly]
```

Do not draft until this block is complete. Every section must be filled, even if the answer is "none found."

---

## Step 3: Article Shape Selection (Before Drafting)

Choose one shape based on what the transcript actually supports. Do not force a shape the content can't fill.

| Shape | Use when |
|---|---|
| **Thesis-led** | Strong central claim that challenges consensus |
| **Diagnostic** | Speaker explains why most people get this wrong |
| **Framework** | Speaker has a clear sequence or system |
| **Mistake / Pitfall** | Speaker's strongest material is what not to do |
| **Buyer-language / Objection-led** | Speaker has strong insight into how buyers think or what they misunderstand |

State the chosen shape before drafting. If the transcript supports more than one, pick the strongest.

### Size Guardrail

Match output length to available signal - do not force a full multi-section article from thin material.

| Signal level | Default output |
|---|---|
| Strong thesis + multiple key points + proof/examples | Full article (800-2,500 words) |
| Clear thesis + key points, no proof | Short article (400-800 words) |
| One key point, no proof or examples | LinkedIn-style post (150-400 words) |
| No clear thesis, no examples, no execution signals | Decline full article - offer short post only |

If the transcript yields only one key point and no proof or examples, do not construct a multi-section article around it. Default to a short article or post and note the limitation.

**User intent vs. transcript quality conflict:** If the user requests a full blog but the signal check and size guardrail indicate only a short post is supportable, do not comply silently. State the conflict explicitly before producing output:

> *"You asked for a full blog post, but this transcript only supports a short post - there isn't enough thesis depth, proof, or key points for a multi-section article. I'll produce the short post version below. If you want a full article, here's what's missing: [list]."*

Never produce a padded full article to satisfy a user request the source material can't support.

---

## Step 4: Draft (Pass 2)

Using only what was extracted in Step 2, draft the article in this structure. Sections marked *(transcript-dependent)* are only included if source material exists for them.

**1. Opening**
The strongest, most specific claim or insight from the transcript. Not invented. Not padded. If the transcript doesn't have a natural opener, find the most counterintuitive idea and lead with that.

**2. Audience Filter** *(transcript-dependent)*
If the speaker indicated who this is and isn't for, make it explicit. If not in the transcript, skip entirely.

**3. Core Insight / Reframe**
The most important belief shift or non-obvious point from the extraction. States it clearly before teaching anything.

**4. Structured Breakdown**
Turn key points into steps, principles, or sections. You may combine similar ideas, reorder for flow, and label unnamed patterns, but only when a pattern appears at least twice or its sequence is clearly explicit in the transcript. Do not package loose thinking into a neat framework.

**5. Proof / Examples** *(transcript-dependent)*
Any examples, client results, or numbers from extraction. Situation -> action -> outcome. If none exist, skip - do not substitute generic scenarios.

**6. Mistakes / Pitfalls** *(transcript-dependent)*
Only what the speaker explicitly flagged as wrong. Do not generate a common-mistakes list from general knowledge.

**7. Inbound / Trust Impact** *(transcript-dependent)*
If the speaker described how their content led to inbound conversations, changed how buyers showed up, or compressed the sales cycle, this becomes a standalone section. If not present, skip.

**8. Close**
If the speaker gave a CTA, use it. If not, close with the strongest decision rule or implication from the transcript. Not a soft summary. A final, usable thought.

---

## Allowed / Not Allowed

**Allowed:**
- Reorder ideas for logical flow
- Combine overlapping points
- Label patterns that appear at least twice
- Tighten language without changing meaning
- Cut tangents that don't serve the main argument
- Add structure and headers for readability

**Not allowed:**
- Add ideas not in the transcript
- Invent examples, data, or case studies
- Create frameworks not clearly implied
- Add authority signals the speaker didn't demonstrate
- Change the speaker's stated opinion
- Upgrade weak content with generic business insight
- **Semantic smoothing drift:** Do not strengthen, generalize, or universalize specific claims. If the speaker said something in a narrow or tentative way, preserve that scope. Do not upgrade it into a broader or more definitive statement. *(e.g. "this worked for a few clients" must not become "this consistently works")*
- **Quote distortion:** Do not paraphrase specific claims in a way that changes their meaning. If a point depends on precise wording, preserve it closely or keep a short direct quote.
- **Completing unfinished reasoning:** Do not complete unfinished reasoning with likely or standard conclusions. If the speaker starts a point but does not finish it, keep it partial or omit it entirely.

---

## Voice Rules

**Keep:** First-person, direct language, the speaker's own terminology, their conviction and tone.

**Improve:** Flow, paragraph breaks, clarity - remove filler words (`like`, `you know`, `kind of`), repetition, and tangents.

**Never:** Polish the language beyond what the thinking supports. If the ideas are rough, the article can be clean, but it cannot be made to sound more sophisticated than its source.

---

## Output Contracts

Two contracts - use the one that matches the signal check outcome. Never mix them.

### Proceeding Output Contract
Use when at least one signal check passes and the transcript supports some form of output.

```text
SIGNAL CHECK:
  Information Gain:    PASS / FAIL
  Trust Visibility:    PASS / FAIL
  Intent Satisfaction: PASS / FAIL

AUTHOR:
CORE THESIS: [one sentence] | source: "[short quote or transcript location]"
KEY POINTS:
  - [idea] | source: "[short quote or transcript location]"
  - [idea] | source: "[short quote or transcript location]"
  (one line per point - do not collapse into a single entry)
EXECUTION SIGNALS:
  - [signal] | source: "[short quote or transcript location]"
  (if none: "none found")
DATA / SPECIFICS:
  - [number, result, or concrete detail] | source: "[short quote or transcript location]"
  (if none: "none found")
BUYER LANGUAGE:
  - [observation] | source: "[short quote or transcript location]"
  (if none: "none found")
WEAK SPOTS:
ARTICLE SHAPE:
OUTPUT SIZE:
---
FINAL DRAFT:
[article or post]
---
WHAT WAS OMITTED AND WHY:
[explicit list of sections skipped, gaps flagged, and why]
```

### Declined Output Contract
Use when all three signal checks fail; include an optional short post only if one complete claim still exists.

**Edge case - all three fail but one usable claim remains:** Use this contract, not the Proceeding contract. The single claim does not unlock the full extraction and draft path. Output the Declined contract with `OPTIONAL SHORT POST VERSION` populated. A minimal claim supports a minimal output - it does not promote the run to Proceeding status.

```text
SIGNAL CHECK:
  Information Gain:    FAIL
  Trust Visibility:    FAIL
  Intent Satisfaction: FAIL

FULL ARTICLE: declined
WHY: [specific reason - what's missing]
MISSING: [list absent elements: thesis, examples, execution signals, buyer language, etc.]
OPTIONAL SHORT POST VERSION: [only if the transcript contains at least one clear claim or usable idea. If not, state: "Even a short post is unsupported - the transcript does not contain a complete claim to build from."]
```

The Proceeding contract always includes `FINAL_DRAFT`. The Declined contract never does.

---

## Optional: Clean Output Mode

By default this skill outputs the full diagnostic wrapper - signal check, extraction block, shape selection, draft, and omissions. That is the correct mode for internal production, QA, and client content pipelines.

If the user explicitly requests clean output, or if the deployment context is a founder or client who only needs the final article, the skill may suppress the diagnostic and output only the draft.

To activate: user includes `mode: clean_output` in their request, or explicitly says "just give me the article."

In clean output mode:
- Output only `FINAL_DRAFT`
- Omit all extraction, signal check, and audit blocks from the response
- Still apply all transformation rules internally - clean output changes what is shown, not how the skill operates
- Still track omissions internally; if the user later asks what was omitted or why, that information must be available
- If the transcript is declined, clean output mode still produces the Declined Output Contract - a clean draft cannot be produced from nothing

---

## Failure Modes

Output has failed if:

- It includes ideas not in the transcript
- It sounds more experienced than the transcript demonstrates
- It contains fabricated numbers, examples, or client stories
- It turns specific thinking into generic business content
- The speaker wouldn't recognize it as their own work
- Gaps were silently patched rather than flagged
