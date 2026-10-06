# Meraki Studios – Website (INTERN)

## Struktur

| Pfad | Inhalt |
|---|---|
| `index.html` | Startseite inkl. Buchung (Bookingmood) |
| `compass.html` | Guest Compass |
| `guide.html?c=neighbourhood / seaside / hiking` | Compass-Unterseiten |
| `floorplan.html` | Grundrisse mit Lightbox |
| `terms.html` | Terms and Conditions |
| `imprint.html` | Imprint |
| `img/` | alle Bilder (per `bilder-laden.sh` befüllen) |
| `assets/` | `olive-branch.webm` + `olive-branch.mov` (Alpha-Videos) |
| `bilder-laden.sh` | lädt alle 41 Bilder von Wix nach `img/` |

## Vor dem ersten Upload

1. Terminal im Projektordner öffnen, `bash bilder-laden.sh` ausführen.
2. Olivenzweig-Videos nach `assets/` legen.
3. Inhalte der Compass-Unterseiten in `guide.html` unter `GUIDES` eintragen, gelben Hinweis löschen.

Fehlt ein Bild in `img/`, lädt die Seite es automatisch vom Wix-CDN. Fehlt das Video, wird der SVG-Zweig gezeichnet.

## Extern eingebunden

- GSAP 3.13, Lenis 1.3 (jsDelivr)
- Montserrat (Google Fonts) als Fallback, Gotham braucht eigene Webfont-Lizenz
- Bookingmood-Widget `7e10cb62-c22a-485f-991b-d463843c0c88`

## Hosting

GitHub Pages: Repo > Settings > Pages > Branch `main`, Ordner `/ (root)`.
Eigene Domain: Datei `CNAME` mit `www.merakistudios.gr` anlegen und DNS umstellen.
