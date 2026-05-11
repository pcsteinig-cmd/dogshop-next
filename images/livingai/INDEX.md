# LivingAI Photo-Archive

**Stand:** 2026-05-11 · 65 Files · 9.2 MB · alle aus living.ai

## Struktur

```
images/livingai/
├── raw/                          # Original-Downloads, nach Produkt sortiert
│   ├── emo/             (13)     # EMO Standard (schwarz, Original)
│   ├── emo-white/       (5)      # EMO White Edition
│   ├── emo-go-home/     (9)      # EMO + Home Station Bundle
│   ├── aibi-pocket/     (23)     # AIBI Pocket (Mini-Roboter, weiß)
│   └── brand/           (15)     # AIBI Übersichts-Renders + Banner
│
├── batch/                        # Convertierte/gepaddete Versionen für Web
├── hero/                         # Hero-Carousel Source-Images (3 padded PNGs)
└── INDEX.md                      # diese Datei
```

## Beste Source-Picks für 3D-Generation (Meshy.ai)

### EMO (Hauptprodukt, schwarz)
1. **`raw/emo/01-hero.jpg`** (2000×2000, Studio-Hero, 90KB) — bester Single-Angle, weißer BG
2. **`raw/emo/02-angle.jpg`** (2000×2000, 3/4-Ansicht) — komplementärer Winkel
3. **`raw/emo/03-side.jpg`** (2000×2000, Profil) — Seitenansicht

→ **Bei Meshy.ai hochladen:** all 3, "Image to 3D Multi-View"-Modus. Sollte gutes GLB-Modell geben.

### EMO White
1. **`raw/emo-white/01-hero.jpg`** (2000×2000) — Studio-Hero
2. **`raw/emo-white/02-angle.jpg`** — Alternative
3. **`raw/emo-white/03-side.jpg`** — Profil

### EMO Go Home Bundle
1. **`raw/emo-go-home/01-hero.jpg`** (2560×2560, höchste Auflösung) — Bundle-Hero
2. **`raw/emo-go-home/02-main.jpeg`** (2000×2000) — Bundle-Variation
3. **`raw/emo-go-home/03-gallery.jpg`** (2000×2000) — weiterer Angle

→ Für die Charging-Station extra: `raw/emo-go-home/05-station.jpg` + `06-station-detail.png`

### AIBI Pocket (kleiner weißer Companion)
1. **`raw/aibi-pocket/04-render-white.png`** (2362×2362, transparenter BG vermutlich) — beste 3D-Source
2. **`raw/aibi-pocket/05-render-white-2.png`** (2362×2362) — alternativer Winkel
3. **`raw/aibi-pocket/01-hero.jpg`** (2000×2000) — Studio-Hero

→ AIBI ist kleiner und schwieriger für Photogrammetry (weniger Surface-Detail). Renders sind besser als Photos für Meshy.

## Direkte Meshy.ai-Workflow

1. https://www.meshy.ai → Sign up
2. "Image to 3D" → "Multi-View" Mode
3. Upload 3 picks pro Produkt (von oben)
4. Wait 3-5 min → GLB Download
5. Drop in `images/3d/{produkt}.glb`
6. Tell Pauli → ich embed via `<model-viewer>` im Hero

## Alternative 3D-Tools

- **Tripo3D** (https://tripo3d.ai) — schneller als Meshy, ähnliche Qualität
- **Rodin Gen-1** (https://hyper3d.ai) — high-end, premium
- **Luma AI** — nur wenn du echtes Sample hast (Video-Capture)

## Fehlende Quellen (selbst sammeln)

- **Instagram `@living.ai`** — Reels (Polycam-fähig wenn 360° gefilmt)
- **YouTube Reviews** — z.B. „MKBHD EMO review", „CNET EMO" — Studio-Beleuchtung
- **Amazon-Listing** EMO B07YR5JZSF — High-Res mit Maßstab-Foto
- **Reseller Press Kits**:
  - microless.com EMO listing
  - heyup.com EMO listing
- **AIBI YouTube Demo** — https://youtu.be/Bngo0knamUw (kann via yt-dlp frames extrahieren)

## Re-Download (wenn living.ai die URLs ändert)

Original-URLs sind versionierungs-stabil (wp-content/uploads + Date-Path). Datums-Pfade:
- 2020/12/* → EMO Original
- 2022/11/* → EMO Go Home
- 2023/12/* → AIBI Pocket
- 2025/04/* → EMO White + Updates
