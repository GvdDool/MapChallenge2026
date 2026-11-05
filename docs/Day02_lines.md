# Day 2: Lines — Warning Infrastructure Distances & Forestry Grid
**Theme:** Lines  
**Region:** Gironde Pine Massif / Saumos Wildfire, France  
**Notebook:** [`notebooks/Day02_lines-Shared.ipynb`](../notebooks/Day02_lines-Shared.ipynb)  
**Output Map:** [`outputs/Day02_fire_lines_final.png`](../outputs/Day02_fire_lines_final.png)  

---

### Overview
Mapping geodesic Euclidean distances from early-warning surveillance towers and emergency response centres directly to the Saumos wildfire ignition origin point. The distance vectors are contextualized against the human-engineered DFCI forestry track network and regional access corridors.

### Data Sources
- **Ignition Point & Fire Spread:** Official SDIS 33 incident reports and satellite thermal detections
- **Road & Forestry Grid:** OpenStreetMap (`highway=*`, including DFCI forest fire tracks)
- **Early-Warning Towers:** SDIS 33 observation network
- **Basemap / Coastline:** OSM Waterlines & French departmental borders

### Tools & Libraries
- Python, GeoPandas, Shapely, PyProj, Matplotlib
