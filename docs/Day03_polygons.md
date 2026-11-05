# Day 3: Polygons — Road Reachability Hulls & Overlap Redundancy
**Theme:** Polygons  
**Region:** Gironde Wildfire Zone (Saumos / Lacanau), France  
**Notebook:** [`notebooks/Day03_polygons-Shared.ipynb`](../notebooks/Day03_polygons-Shared.ipynb)  
**Output Map:** [`outputs/Day03_fire_polygons_final.png`](../outputs/Day03_fire_polygons_final.png)  

---

### Overview
Contrasting network-constrained service area hulls against circular Euclidean buffers around SDIS 33 fire stations during the Saumos wildfire. Computes 5 km, 10 km, 15 km, and 20 km isochrone-proxy convex hulls along the metric road graph, highlighting multi-station mutual aid redundancy zones and network bottlenecks created by lakes and fragmented forestry pistas.

### Data Sources
- **Fire Stations:** SDIS 33 Casernes de Pompiers (`amenity=fire_station`) via OSM
- **Burn Scar Perimeter:** MODIS MCD64A1 Burned Area via Google Earth Engine
- **Road Network:** OSM road graph extracted via Overpass API
- **Hydrology & Borders:** OSM Coastline & Lac de Lacanau perimeter

### Tools & Libraries
- Python, NetworkX / OSMnx, GeoPandas, Shapely, Contextily, Matplotlib
