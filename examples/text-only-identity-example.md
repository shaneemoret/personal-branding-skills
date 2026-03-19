# Text-Only Identity Example

## User Input

`Generate an about-page headshot prompt for a consultant. I do not have a reference photo.`

## Skill Behavior

The skill should not guess blindly. It should ask once for the minimum identity details needed.

### Follow-Up Question

`Describe how you want your real appearance preserved — hair, skin tone, any features you want kept accurate.`

### Example User Reply

`Early 40s Black woman, medium-brown skin, shoulder-length natural curls, gold-rim glasses, oval face, warm smile.`

## Example Identity Block

> Subject is an early 40s Black woman with medium-brown skin, shoulder-length natural curls, gold-rim glasses, oval face, and a warm smile. Preserve this described appearance consistently and do not alter features or attractiveness toward idealized averages.

## Example Base Prompt

Create a photorealistic professional about-page portrait of the subject. Subject is an early 40s Black woman with medium-brown skin, shoulder-length natural curls, gold-rim glasses, oval face, and a warm smile. Preserve this described appearance consistently and do not alter features toward idealized averages. The portrait should feel trustworthy and polished for a consultant's website about page. Use head-and-upper-chest composition, soft key plus warm fill, warm gray studio background, direct eye contact, natural expression, crisp but believable wardrobe styling, 85mm compression, shallow depth of field, visible skin texture, 4K output. Avoid plastic skin, uncanny eyes, distorted glasses, color fringing, or generic AI portrait styling.

## Why This Example Matters

This shows how the skill behaves when exact real-world likeness cannot be verified:

- it asks once for identity details
- it preserves the user's description consistently
- it still returns a strong usable prompt instead of stalling
