# GEO & AI Search Signals — Deep Dive

Reference this file during Phase 3 of the audit workflow.

---

## What GEO Actually Measures

GEO (Generative Engine Optimization) is about whether an AI system has enough confidence to cite, summarize, or recommend a site. Unlike traditional SEO, the signal is not links or keywords — it is **clarity, credibility, and retrievability of structured facts**.

**Do not claim a site is "AI-optimized" or "LLM-ready" based on one signal alone.** GEO strength comes from the combined effect of entity clarity, proof, structured data, and citation-worthy pages. Assess the whole picture.

Note the distinction between:
- **Safe to cite** — a page specific and credible enough to be linked or quoted by an AI system
- **Safe to summarize** — a page useful for background context but not strong enough to cite directly

Both matter, but citation-ready pages are the higher bar and the more valuable gap to flag.

---

## Entity Signals

These tell AI systems who and what this site represents.

| Signal | What to check |
|--------|--------------|
| Business name consistency | Is the exact business name used consistently across pages, schema, Open Graph, and meta titles? |
| Category clarity | Does the site explicitly state the business category (e.g., "B2B SaaS," "independent financial advisor," "boutique law firm")? |
| Location / jurisdiction | For local or regulated businesses, is location stated clearly and consistently? |
| Founder / author identity | Are author names consistent? Do author pages exist? Are they linked to structured data? |
| Social proof linking | Are external mentions, press, or partnerships linked or referenced? |

---

## Proof Signals

These give AI systems confidence to make claims about the site's quality or results.

| Signal | What to check |
|--------|--------------|
| Testimonials | Specific, attributed, with outcomes — not generic |
| Case studies | Include: client, problem, solution, result with numbers |
| Data / statistics | Original research, benchmarks, or cited third-party data |
| Client logos | Present, current, not misleadingly aspirational |
| Awards / certifications | Present with dates and issuing bodies |
| Press mentions | Linked, not just listed |

Weak proof: "We helped companies grow." Strong proof: "We reduced onboarding time by 40% for a 200-person SaaS team."

---

## Content Signals

These determine whether a page is worth citing.

**Strong citation candidates:**
- Pages that definitively answer a question in the site's domain
- Pages with original data, research, or frameworks
- Pages with clear authorship and publication date
- Pages that are internally linked from multiple other pages
- Pages with relevant schema markup (Article, FAQ, HowTo, etc.)

**Weak citation candidates (flag these):**
- Generic "About Us" pages with no specific claims
- Service pages with only marketing copy and no detail
- Blog posts that summarize existing knowledge without adding original perspective
- Pages with conflicting or outdated claims
- Pages that are too thin or generic to answer a question confidently — often but not always under ~300 words

---

## Structured Data for LLMs

Beyond Google's use cases, structured data helps LLMs extract facts cleanly.

High-value schema types for GEO:
- `Organization` — name, url, logo, sameAs (social profiles), contactPoint
- `Person` — for founders, authors, or individual consultants
- `Article` / `BlogPosting` — author, datePublished, dateModified, headline
- `FAQPage` — for pages that answer common questions
- `HowTo` — for instructional content
- `Product` / `Service` — for specific offerings with descriptions and pricing if appropriate
- `Review` / `AggregateRating` — for testimonials and ratings

**What to check:**
- Is schema present on the right pages?
- Is it accurate and up to date?
- Does it match the visible page content?
- Are `sameAs` links pointing to active, consistent profiles?

---

## Retrieval Signals

Internal linking determines whether AI systems can discover and connect a site's best pages.

- Are the strongest pages linked from navigation, hub pages, or related articles?
- Is there one clear "best page" per major topic, or is authority split across duplicates?
- Are proof pages and case studies discoverable from core service pages?
- Do important pages have enough internal link equity to be treated as authoritative?

Weak retrieval is one of the most common GEO gaps — a strong page that nothing links to is effectively invisible.

---

## Contradiction Risk

Contradictions across a site reduce LLM citation confidence significantly.

Check whether the following describe the business consistently:
- Schema markup
- Visible copy and headlines
- Meta titles and descriptions
- About page
- Service/product pages
- Old indexed URLs still in search results

Flag any mismatch in: company name, category, audience, offer, location, or founding claims. An LLM encountering conflicting signals will either hedge or avoid citing entirely.

---

## llms.txt

A `llms.txt` file at the root (e.g., `https://example.com/llms.txt`) provides LLMs with a curated map of the site's most important content.

**Treat as a secondary signal.** Its absence is worth noting but not alarming. Its presence with good content is a mild positive. Poor or incorrect llms.txt content is worse than none.

If present, check:
- Does it point to the site's genuinely most useful pages?
- Is it up to date?
- Is the formatting correct (markdown with links)?

---

## The Six Questions Test

Run this test at the end of Phase 3. Look at the site as if you are an LLM trying to answer a query about this business.

Can the site clearly answer:
1. **Who is this?** — Name, type of company, founding context
2. **What do they do?** — Specific offering, not vague mission statement
3. **Who is it for?** — Specific audience, not "businesses of all sizes"
4. **Why are they credible?** — Proof, experience, track record
5. **What results do they produce?** — Specific, attributed outcomes
6. **Which page should I cite?** — Is there one authoritative, well-structured page per topic?

If any of these cannot be answered from the site, flag it as a GEO gap with a recommendation for how to fix it.

When in doubt, prefer the page that makes the narrowest credible claim with the strongest proof, not the page with the broadest marketing summary.
