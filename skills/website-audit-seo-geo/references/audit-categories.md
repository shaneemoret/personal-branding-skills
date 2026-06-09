# Audit Categories

Read this file for detailed Technical SEO, Performance, Accessibility, and UX reviews.

These checklists support the main skill. Report findings only when they are supported by evidence and tied to business impact.

## Technical SEO

### Crawlability

Verify:

- `robots.txt` exists and is valid
- XML sitemap exists and is accessible
- Sitemap contains canonical URLs
- Important pages are crawlable
- Important pages are not accidentally blocked
- Indexable pages are intended to be indexable

Review:

- Robots directives
- Meta robots tags
- `X-Robots-Tag` headers
- `noindex` usage
- `nofollow` usage

### Canonicals

Verify:

- Self-referencing canonicals where appropriate
- Canonicals point to valid destinations
- Canonicals do not conflict with redirects
- Canonicals are consistent across templates

Do not flag:

- Properly canonicalized URL variants
- Proper faceted-navigation canonicals
- Expected platform behavior

### Redirects

Review:

- HTTP to HTTPS behavior
- WWW vs. non-WWW consistency
- Trailing slash consistency
- Redirect chains
- Redirect loops

Flag only redirects that create measurable SEO, UX, or performance issues.

### Metadata

Evaluate:

- Page titles
- Meta descriptions
- Open Graph tags
- Twitter card tags

Look for:

- Missing metadata
- Duplicate metadata
- Template-level issues
- Weak commercial intent signals

### Structured Data

Review relevant schema:

- Organization
- Person
- Article
- FAQ
- Product
- Service
- LocalBusiness
- Breadcrumb

Check:

- Validity
- Relevance
- Consistency
- Entity clarity

### Internal Linking

Review:

- Navigation structure
- Footer structure
- Contextual links
- Orphaned pages
- Excessively deep pages

Focus on:

- Discovery
- Authority flow
- Buyer journey support

### Site Architecture

Evaluate:

- Content hierarchy
- Service hierarchy
- URL structure
- Category structure
- Topic clusters

Determine whether the architecture supports search engines, AI systems, and human navigation.

## Performance

Classify every performance finding as:

- Measured
- Observed likely
- Possible

Never report unmeasured performance issues as confirmed.

### Core Web Vitals

Evaluate when measurable:

- Largest Contentful Paint (LCP)
- Interaction to Next Paint (INP)
- Cumulative Layout Shift (CLS)

### Asset Efficiency

Review:

- Image sizing
- Image formats
- Responsive images
- Video handling
- Font loading

Identify the largest contributors to page weight.

### Rendering

Review:

- Render-blocking resources
- Excessive JavaScript
- Hydration-heavy implementations
- Third-party script impact

Focus on user impact, not theoretical purity.

### Mobile Performance

Evaluate:

- Mobile payload size
- Mobile responsiveness
- Touch usability
- Mobile rendering quality

## Accessibility

Accessibility findings must affect usability, compliance risk, discoverability, or conversion. Avoid checklist theater.

### Semantic Structure

Review:

- Heading hierarchy
- Landmark regions
- Navigation structure
- Form structure

### Visual Accessibility

Review:

- Contrast
- Readability
- Font sizing
- Zoom behavior

### Interaction Accessibility

Review:

- Keyboard navigation
- Focus states
- Form usability
- Error handling

### Media Accessibility

Review:

- Alt text quality
- Decorative image handling
- Captions where appropriate

## User Experience

UX findings must be tied to a measurable business outcome:

- Clarity
- Trust
- Conversion
- Retention
- Navigation efficiency

Avoid subjective design opinions.

### Information Clarity

Can users quickly understand:

- What the company does
- Who it serves
- Why it matters
- What action to take

### Navigation

Review:

- Menu structure
- Search
- Internal pathways
- Dead ends

Identify friction points.

### Mobile Experience

Evaluate:

- Mobile layouts
- Content prioritization
- CTA visibility
- Reading experience

### Trust Experience

Review:

- Proof visibility
- Testimonials
- Case studies
- Authority indicators
- Team information

### Conversion Experience

Review:

- CTA placement
- Offer clarity
- Contact flow
- Lead capture friction
- Objection handling

Route detailed conversion findings to the Conversion and Commercial Intent review.

## Evidence Requirements

Every finding should include:

- Evidence source
- URL
- Severity
- Impact
- Effort
- Confidence

If evidence is incomplete, label the finding:

`Possible — needs confirmation`

Do not elevate assumptions into findings.

## Reporting Principle

The purpose of this audit is not to identify every possible issue.

The purpose is to identify the few improvements most likely to increase:

- Visibility
- Citations
- Trust
- Leads
- Revenue

Prioritize outcomes over checklists.
