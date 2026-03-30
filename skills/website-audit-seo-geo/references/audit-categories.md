# Audit Categories — Detailed Checklists

Reference this file during Phases 1 and 2 of the audit workflow.

**Use this as a review checklist, not a reporting checklist.** Do not report every item. Report only the highest-signal issues with evidence. Prefer systemic or template-level issues over repeating the same issue across many individual pages.

---

## 1. Technical SEO

- Canonical tags — present, correct, self-referencing where appropriate
- Status codes — 200s, 301s, 404s, soft 404s
- Redirect chains — length, loops, unnecessary hops
- www vs. non-www consistency
- HTTP → HTTPS consistency
- Trailing slash consistency
- Indexability — noindex misuse, accidental exclusions
- robots.txt — present, correct, not over-blocking
- XML sitemap — present, valid, accurate coverage, no noindexed URLs included
- Meta titles — present, unique, correctly length, keyword-relevant
- Meta descriptions — present, unique, not truncated
- H1 / title alignment
- Open Graph tags — og:title, og:description, og:image, og:url
- Twitter/X tags
- Schema / JSON-LD — present, valid, consistent across templates
- Duplicate metadata across page templates
- Internal linking structure — anchor text quality, link depth
- Orphan page risk
- Crawl traps — infinite scroll, filter parameters, faceted navigation
- Pagination handling — consistent crawl/index strategy for paginated content where relevant
- Archive / tag / search page handling

---

## 2. AI Search / GEO

- Entity clarity — is it obvious who this company/person is?
- Business category clarity — does the site clearly state what it does and who it serves?
- Author / entity consistency across pages
- Structured data usefulness for LLMs (not just for Google)
- llms.txt — present or absent (note if missing, but do not overstate its importance)
- Citation-ready pages — which pages are strong enough for an LLM to confidently cite?
- Proof density — testimonials, case studies, results, data
- Original insight depth — does the site publish anything genuinely useful?
- Topical authority — breadth and depth of coverage in the site's domain
- Outdated or conflicting brand messaging
- Weak generic marketing language that gives LLMs nothing to work with
- Pages most likely to be cited by: ChatGPT / Claude / Perplexity / Google AI Overviews
- Pages most likely to be ignored because they are vague, duplicative, or low-signal

**The six questions an AI system should be able to answer from this site:**
1. Who is this?
2. What do they do?
3. Who is it for?
4. Why are they credible?
5. What proof exists?
6. Which page is safest to cite?

If the site cannot answer all six clearly, flag the gaps.

---

## 3. Performance

Do not treat a likely performance issue as confirmed unless supported by measurements, transfer-size evidence, or clear source-level proof.

- Total page weight
- Large JavaScript bundles
- Oversized or unoptimized images
- Missing or broken lazy loading
- LCP risks — largest above-the-fold element load behavior
- CLS risks — layout shifts visible from code patterns
- Duplicated payload (same library loaded multiple times)
- Render-blocking resources — CSS, JS in `<head>`
- Web font loading strategy
- Third-party script bloat — analytics, chat widgets, embeds
- Mobile performance risks
- Unnecessary client-side rendering where SSR/SSG would be better
- Hydration-heavy patterns (Next.js, Nuxt, etc.) — is hydration deferred appropriately?

---

## 4. UX / Conversion

- Audience fit clarity — is it obvious who the page is for and who it is not for?
- Headline clarity — does the homepage H1 immediately communicate what the site does?
- Above-the-fold clarity — can a visitor understand the offer in 5 seconds?
- CTA visibility — primary CTA above the fold, contrasting, specific
- CTA specificity — "Get started" vs. "Book a free 30-min call"
- Trust signals — logos, reviews, awards, guarantees — placement and prominence
- Proof placement — are results and testimonials near conversion points?
- Page hierarchy — does the visual structure guide the eye correctly?
- Message clarity — is the offer, audience, and outcome stated plainly?
- Confusion / friction points — form length, unclear steps, hidden pricing
- Weak landing-page flow — does the page build toward a clear next action?
- Mobile usability — tap targets, font sizes, sticky nav behavior
- Poor scannability — walls of text, no visual hierarchy

---

## 5. Accessibility

Only report accessibility issues that are confirmed or strongly implied by markup or observed behavior. Do not speculate.

- Heading hierarchy — H1 → H2 → H3 in logical order, no skipped levels
- Alt text — present, descriptive, not keyword-stuffed, empty for decorative images
- Color contrast — text and UI elements meet WCAG AA minimums
- Keyboard accessibility — all interactive elements reachable and operable via keyboard
- Focus indicators — visible on interactive elements
- Form labeling — every input has an associated `<label>`
- Button / link clarity — descriptive text, not "click here" or "read more"
- ARIA misuse — aria-label, aria-hidden, role used correctly
- Navigation / menu accessibility — hamburger menus, dropdowns, skip links
- Semantic HTML — appropriate use of `<nav>`, `<main>`, `<article>`, `<section>`, `<aside>`
