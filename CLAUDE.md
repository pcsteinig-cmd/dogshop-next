# Roboterhund-Shop — Projekt-Kontext

## Was ist das?

Eine Landing-Page für einen kleinen Roboterhund (Motutu/Moitutu-Klasse, 1688-Hardware), der in DACH als „Trendprodukt mit Charme" verkauft werden soll. Tonfall: Teenage Engineering / Nothing-Stil.

## Stack-Plan

- **Aktuell:** Statische HTML-Seite (export aus Framer-Template „Quora")
- **Soll:** Statisch hosten via Railway/Cloudflare/Netlify, Stripe Payment Link für Pre-order, Resend für Email-Capture
- **Brand-Name:** Pauli (Rollout in allen user-facing HTML-Files; `[BRAND]`-Platzhalter waren der Vorgänger-Zustand)
- **Domain:** TBD
- **Higrate GmbH** als rechtlicher Betreiber

## Was schon erledigt ist

✅ Framer-Template „Quora" gekauft, exportiert mit FramerExport (14,99$)
✅ Alle Texte auf [BRAND]-Story angepasst:
- Hero: „Built / to be / loved." + Subline „A small robot. Designed in Germany." + Pre-order
- Manifesto: „Er macht keinen Kalender auf. Er stellt keinen Wecker. Er ist einfach da."
- Benefits: „Speak. Move. Remember."
- Product: 2 Cards „Speak" + „Move"
- Gallery: A day with [BRAND]
- Testimonials → „As seen on your feed" mit 6 Plattformen (TikTok, Instagram, YouTube, Reddit, Pinterest, Discord)
- Blog: 3 [BRAND] Stories
- FAQ: 8 deutsche Fragen (Lieferung, Sprachen, App, Privacy, Garantie, Rückgabe, Akku, Support)
- Footer: „Built to be loved." + Higrate-Links

✅ Plattform-Logos (TikTok, Instagram, YouTube, Reddit, Pinterest, Discord) als SVG drin
✅ Logo-Strip im Hero unten als „As seen on"-Anker

## Was noch zu tun ist

### Sofort (lokal)

1. **GitHub-Repo erstellen** (privat, `pcsteinig-cmd/dogshop` o.ä.)
2. **Stripe Payment Link** für Pre-Order anlegen
   - Produkt: „[BRAND] Pre-order"
   - Preis: 79€ (Sonderangebot von 129€)
   - Email-Capture aktivieren
3. **Pre-order-Button** in HTML mit Stripe-Link verknüpfen:
   ```bash
   # Suche nach Pre-order Button in index.html und ersetze href
   # aktuell: <a ...>Pre-order</a>  ohne href
   # → href="https://buy.stripe.com/xxx"
   ```
4. **Deploy** (Railway/Vercel/Netlify):
   ```bash
   # Statische Site, einfach push
   ```

### Wenn Sample da ist (~2 Wochen)

1. Bilder austauschen — siehe `IMAGE-PLAN.md`
2. Eigene Fotos schießen + ersetzen

## Wichtige Files

- `index.html` — Hauptseite (anpassbar)
- `index.html.original` — Backup vom Quora-Original
- `IMAGE-PLAN.md` — Bilder-Tausch-Anleitung
- `images/platform-logos/` — TikTok/Instagram/YouTube/Reddit/Pinterest/Discord SVGs
- `images/*.{png,jpeg,jpg}` — Quora-Würfel-Bilder als Platzhalter (zu ersetzen)
- `js/`, `assets/` — Framer-Runtime (NICHT ANFASSEN)
- `legal/` — Terms/Privacy/Refund (englisch — bei Bedarf auf deutsch übersetzen)
- `blogs/` — 6 Blog-Artikel (englisch — können gelöscht oder neu geschrieben werden)
- `serve.py` — Lokaler Test-Server (`python3 serve.py`)

## Nicht anfassen

- `js/` (Framer-Runtime)
- `assets/` (Fonts, Internal CSS)
- Klassen-Namen wie `framer-XXX` in der HTML
- Inline-Style-Tokens

## Globaler Find/Replace bei Brand-Festlegung

Wenn der Brand-Name feststeht, einfach global ersetzen:

```bash
find . -type f \( -name "*.html" -o -name "*.md" \) -exec sed -i 's/\[BRAND\]/Olbo/g' {} \;
```

(Ersetzt `[BRAND]` durch z.B. `Olbo` in allen HTML- und MD-Files.)

## Lokal testen

```bash
cd dogshop
python3 serve.py
# Öffne http://localhost:8000
```

## Tech-Hinweise

- HTML ist Framer-rendered React, viele inline-styles
- Animationen (Scroll-reveals, Hover) funktionieren über `js/framer-runtime.js`
- Keine externen API-Calls außer Google Fonts (CDN-call)
- Mobile-responsive ist im Template eingebaut (Desktop/Tablet/Mobile-Variants)
