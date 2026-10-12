# Meraki Studios – Website (INTERN)

| Pfad | Inhalt |
|---|---|
| `index.html` | Startseite inkl. Buchung (Bookingmood) und FAQ |
| `compass.html` | Guest Compass mit Karte (Leaflet, Kacheln von CARTO/OpenStreetMap) |
| `floorplan.html`, `terms.html`, `imprint.html` | Unterseiten |
| `img/` | Bilder von der alten Wix-Seite (per img.zip) |
| `img/site/` | neue Bilder, Hintergründe, Logo |
| `img/partners/` | COCO-MAT, hejhej |
| `img/compass/` | Bilder der Guest-Compass-Orte (optional, sonst lädt die Seite sie von Wix) |
| `fonts/` | `exposure.woff2`, `new-edge-light.woff2` (optional, sonst lädt die Seite sie von Wix) |
| `assets/` | Olivenzweig: `olive-branch.webm` (Chrome/Firefox), `olive-branch-stacked.mp4` (Safari), Poster |

Hinweise
- Fehlt eine lokale Datei (Bild, Schrift), wird automatisch die Wix-Version geladen.
- Safari zeigt den Zweig über WebGL. Lokal per Doppelklick geöffnet blockiert Safari das, dann erscheint das Standbild. Auf GitHub Pages läuft das Video.
- Schriften Exposure und New Edge 666: Lizenz für die Nutzung außerhalb von Wix klären.
- Kartenpins sitzen auf Orts- bzw. Strandebene. Der exakte Punkt steckt im jeweiligen Google-Maps-Link. Kenta Bar hat keinen Pin (Ort unklar).

GitHub Pages: Repo > Settings > Pages > Branch `main`, Ordner `/ (root)`.
