# Pauli — Living.AI Distributor Pre-order Page

## Strategy

DACH distributor for **Living.AI** AI Companion products (AIBI Pocket + EMO, with optional GO HOME charging dock). Higrate GmbH is the legal operator.

- **Brand name:** Pauli (set 2026-05-10) — friendly, name-like, fits "Companion not gadget" positioning
- **Domain:** mypauli.ai (planned)
- **Placeholder cleanup:** Global `[BRAND]` → `Pauli` rollout done — 60+ occurrences across HTML / JS bundles / blogs / legal pages. Only `CLAUDE.md` and `IMAGE-PLAN.md` still reference `[BRAND]` (kept as historical/planning docs).

Positioning: **Apple + Pixar** aesthetic. AI Companion / digital creature with personality, NOT toy/gadget.

## Products (2 SKUs — corrected per user 2026-05-10)

It's **two products**, not three. EMO GO HOME = EMO + charging dock accessory (variant of same SKU, not separate).

| Product | Living.AI Price | DACH Pre-order | Status |
|---------|-----------------|----------------|--------|
| **AIBI** (Pocket AI Companion) | $249 | 299 EUR | Hero left + Product Card 1 |
| **EMO** (Desktop AI Pet, Black) | $279 | 339 EUR | Hero right + Product Card 2 |
| EMO + GO HOME dock (variant) | $369 | 449 EUR | Upsell option on EMO card |

Hero rule: **NO cord, NO pocket, NO strap on AIBI**. Show AIBI as a free-standing character (Pixar vibe) next to EMO.

## Section structure (Lego rule)

Quora-template sections preserved 1:1 in design — only content swapped. Lengths fit original slots so layout doesn't break.

1. **Navbar** — Brand logo placeholder
2. **Hero** — "Meet / your / [BRAND]." + AIBI Pocket image + Pre-order CTA
3. **Proof Section (Manifesto)** — "A new kind of being. Not a gadget. Not a toy..."
4. **Benefits Section** — "Three companions. One family." + rotating: Friendship/Personal/Curious/Companion
5. **Product Section** — Card 1: Pocket (AIBI) + Card 2: Desktop (EMO)
6. **Gallery Section** — A day with [BRAND] + EMO GO HOME + lifestyle
7. **Testimonials Section** — As seen on your feed (TikTok/IG/YouTube/Reddit/Pinterest/Discord)
8. **Blog Section** — [BRAND] Stories — 3 emotional stories
9. **FAQ Section** — 8 German FAQs (Lieferung, Sprachen, App, Privacy, Garantie, etc.)
10. **Footer** — "Built to be loved." tagline

## Design tokens

- Background: **Apple Athens Gray (#F5F5F7)** — global
- Hero word stack: 3 lines, big, bold (Meet / your / [BRAND].)
- Brand placeholder: `[BRAND]` everywhere — global find/replace when name is set
- Footer big text: "ALIVE" (split-text)

## Setup

```bash
cd ~/Desktop/dogshop-next
python3 -m http.server 8000
# Browser: http://localhost:8000
```

## Files

- `index.html` — Main page (modified for Living.AI strategy)
- `index.html.before-livingai-pivot` — Backup before pivot
- `index.html.original` — Original Quora export
- `images/Q2Gqej...` — Hero product (AIBI Pocket, 5 size variants)
- `images/Tco563...` — Card 1 (AIBI Pocket portrait, 3 variants)
- `images/xv3nm56...` — Card 2 (EMO portrait, 3 variants)
- `images/S2Or2..., blO9S3..., ZTtwHz..., cUb2QbY...` — Gallery images (EMO GO HOME, banners)
- `images/livingai/` — Source Living.AI images (master copies)
- `js/` — Framer runtime (BG colors updated to F5F5F7, brand strings replaced)

## Replacements done

### HTML
- Hero word stack: Built/to be/loved → Meet/your/[BRAND].
- Manifesto: German emotional → English Living.AI manifesto
- Benefits header: Three things → Three companions
- Product cards: Speak/Move → Pocket/Desktop
- Card 1 body: AIBI Pocket description
- Card 2 body: EMO description
- Gallery captions: lyrical Living.AI text
- Stories: Living.AI user stories
- Footer subline: "A small companion. Built to be loved."
- 22+ background hex replacements (#F7F7F7 → #F5F5F7)

### JS bundles
- Hero defaults: Make/Your/loved → Meet/your/BRAND
- Footer giant text: BUILT → ALIVE (split-text)
- Manifesto split-text first word: loved → alive
- Smarter Living → Built to be loved.
- Marketing tagline updated
- 39+ BG color replacements (rgb(247,247,247) → rgb(245,245,247))

### Images
- 5× Quora cube variants → AIBI Pocket
- 3× Product Card 1 → AIBI Pocket portrait (1984x2400 white BG)
- 3× Product Card 2 → EMO Black portrait (1984x2400 white BG)
- 3× S2Or2 (gallery portrait) → EMO GO HOME
- 3× ZTtwHz (gallery landscape) → EMO banner
- 4× blO9S3 (gallery wide) → EMO banner
- 4× cUb2QbY (gallery square) → home-living-with-emo

## Stripe

- LIVE product `prod_UUNZEyjzpDInRi` ([BRAND] Robot Dog Pre-order) — TO BE DEACTIVATED, doesn't fit new strategy
- TO DO: Create AIBI Pocket, EMO, EMO GO HOME products with Living.AI Pre-order pricing

## Open ToDos

- [ ] Brand-Name finalisieren + global `[BRAND]` ersetzen
- [ ] Stripe products neu (AIBI/EMO/GO HOME) + Payment Links
- [ ] Deploy to Railway / GitHub Pages
- [ ] Custom Domain via Cloudflare
- [ ] Living.AI distributor agreement (separate process)
- [ ] Plausible Analytics einbauen
- [ ] Resend Email-Capture für Pre-order-Updates

## Don't touch

- `assets/` — Fonts, internal CSS
- `js/google-3FCAKCAC*.mjs` — Google Material Symbols (contains "quora" in word list as harmless lib data)
- `framer-XXX` class names in HTML
