# Pauli — Roboterhund-Shop

**Brand:** Pauli · **Domain:** `mypauli.ai` (in Vorbereitung) · **Entity:** Higrate GmbH

Landing-Page für einen kleinen Roboterhund (Motutu/Moitutu-Klasse, 1688-Hardware) als „Trendprodukt mit Charme" in DACH. Tonalität: Teenage Engineering / Nothing-Stil.

## Stack

- Statische HTML-Seite (Framer-Template „Quora", exportiert mit FramerExport)
- Node http-server für lokales Dev
- GitHub Pages als Host
- Stripe Payment Link für Pre-Order (TBD)
- Resend für Email-Capture (TBD)

## Deploy

**Einzige Methode:** `npm run deploy "kurze commit message"` → staged → committed → pushed → wartet auf GitHub-Pages-Match (~30–80s). Skript verifiziert dass Live = Local md5 nach Push.

**Verify ohne Deploy:** `npm run verify` — vergleicht local md5 mit Live md5.

**Lokal:** `npm run dev` → http://127.0.0.1:8001 (Hard-Refresh Cmd+Shift+R nach Edits).

**Bekannter Bug:** Apple Xcode-Python ignoriert `--directory` wenn aus MCP gestartet → Preview-MCP für statische Sites broken auf macOS. Deshalb Node, nicht Python.

## Status (2026-05-11)

✅ Framer-Template gekauft + exportiert
✅ Alle Texte auf Pauli-Story angepasst (Hero, Manifesto, Benefits, Product, Gallery, FAQ, Footer)
✅ Plattform-Logos drin (TikTok, Instagram, YouTube, Reddit, Pinterest, Discord)

**Offen:**
1. Stripe Payment Link für Pre-Order (79€, von 129€, Email-Capture aktivieren)
2. Pre-order-Button in `index.html` mit Stripe-Link verknüpfen
3. DNS für `mypauli.ai`:
   - **Apex:** A-Records auf GitHub Pages IPs `185.199.108.153`, `185.199.109.153`, `185.199.110.153`, `185.199.111.153`
   - **www:** CNAME → `pcsteinig-cmd.github.io.`
4. GitHub → Repo Settings → Pages → **Enforce HTTPS** nach DNS-Setup
5. Bilder austauschen wenn Sample da (siehe `IMAGE-PLAN.md`)

## Wichtige Files

- `index.html` — Hauptseite (anpassbar)
- `index.html.original` — Backup vom Quora-Original
- `IMAGE-PLAN.md` — Bilder-Tausch-Anleitung
- `images/platform-logos/` — Social SVGs
- `legal/` — Terms/Privacy/Refund (EN, ggf. auf DE übersetzen)
- `blogs/` — 6 Blog-Artikel (EN, ggf. löschen oder neu schreiben)
- `CNAME` — Domain-Pointer

## Nicht anfassen

- `js/` (Framer-Runtime)
- `assets/` (Fonts, Internal CSS)
- Klassen-Namen wie `framer-XXX` in HTML
- Inline-Style-Tokens

## Brand-Find/Replace (falls Brand-Name nochmal wechselt)

```bash
find . -type f \( -name "*.html" -o -name "*.md" \) -exec sed -i '' 's/Pauli/NeuerName/g' {} \;
```

## Autonomer Default — Tu's selbst

Du hast die volle Tool-Suite: Bash, alle MCP-Server, Chrome MCP (Web), Computer Use (native macOS), Preview-Tools, WebFetch, WebSearch.

**Default: Aufgabe rein → führ sie selbst aus.** Frag mich nie, ob ich's lieber im Browser/Terminal/App selbst mache. Delegier nicht zurück. Fehlt ein Tool, sag's kurz — aber probier vorher was da ist. Tool-Reihenfolge: dediziertes MCP > Chrome MCP > Computer Use.

**Einzeilige Rückfrage NUR bei Geld:** Käufe, Trades, Geldtransfers, neue Paid-Abos, spürbar teure API-Calls. Ein Satz "kostet X, ok?", dann ausführen.

**Nicht „Geld" — einfach machen:** lokale Edits, Builds, Tests, Git-Commits, Klicks in offenen Apps, Mail-Drafts, Termin anlegen, Browser-Navigation, Formulare füllen, lesende API/MCP-Calls, Drafts erstellen.

**Destruktive Aktionen** (rm -rf außerhalb Projekt, force-push main, DB-drop) bleiben Vorsicht — separate Kategorie.

**Faustregel:** „Reversibel ohne Geld und ohne externe Sichtbarkeit?" Ja → machen. Nein → ein Satz, dann machen.
