# Day 1: Points — Wildfire Watch Tower Sightlines
**Theme:** Points  
**Region:** Gironde & Landes Pine Massif, France  
**Notebook:** [`notebooks/Day01_points-Shared.ipynb`](../notebooks/Day01_points-Shared.ipynb)  
**Output Map:** [`outputs/Day01_fire_watch_linkedin.png`](../outputs/Day01_fire_watch_linkedin.png)  

---

### Overview
Mapping optical smoke detection horizons (20 km visual coverage buffers) of SDIS 33 (Service Départemental d'Incendie et de Secours) and DFCI (Défense des Forêts Contre les Incendies) surveillance pylons across the Gironde pine massif. The sightlines are overlaid with MODIS satellite burned area footprints (MCD64A1) from the catastrophic 2026 wildfire season, analyzing detection overlap and blind spots.

### Data Sources
- **Surveillance Towers & Infrastructure:** OpenStreetMap (OSM) / DFCI Aquitaine (`man_made=tower`, `tower:type=observation`)
- **Burned Area perimeters:** NASA/USGS MODIS Collection 6.1 Burned Area (MCD64A1) via Google Earth Engine
- **Administrative Boundaries & Coastline:** OpenStreetMap Overpass API
- **Cartographic Basemap:** CARTO Dark Matter via Contextily

### Tools & Libraries
- Python, Google Earth Engine (`ee`), GeoPandas, Shapely, Contextily, Matplotlib
