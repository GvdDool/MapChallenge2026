# Day 4: Clusters — Dual-Perspective Land-Cover Clusters
**Theme:** Clusters  
**Region:** Graeme Hall Nature Sanctuary, Barbados (Ramsar Site #1591)  
**Notebook:** [`notebooks/Day04_clusters-Shared.ipynb`](../notebooks/Day04_clusters-Shared.ipynb)  
**Output Map:** [`outputs/Day04_graeme_hall_mangrove_clusters_split.png`](../outputs/Day04_graeme_hall_mangrove_clusters_split.png)  

---

### Overview
Unsupervised $K$-Means clustering ($K=5$) on Sentinel-2 optical bands and Copernicus GLO-30 DEM around the Graeme Hall Ramsar Sanctuary, Barbados. The map features a dual-perspective split comparison: the upper half illustrates the unsupervised land-cover clusters, while the lower half displays the raw Sentinel-2 L2A true-colour composite. The classification is benchmarked against the official Global Mangrove Watch (GMW v4.0.19) baseline.

### Methodological Overview
1. **Cloud-Free Composite:** Sentinel-2 Level-2A median composite for the dry season (Jan–May 2023) using QA60 cloud bitmasking.
2. **Standardized Feature Stack `[Elevation, NDVI, NDWI, NDMI]`:**
   - **Elevation:** Copernicus GLO-30 DEM resampled to 10 m.
   - **NDVI:** Separates vegetation canopy from water and built-up areas.
   - **NDWI:** Delineates open brackish lagoons and channels.
   - **NDMI:** Identifies canopy/soil moisture to differentiate saturated wetland mangroves from dry upland grass and agricultural fields.
3. **Clustering ($K=5$):** Groups pixels into 5 classes:
   - Open Water (Lagoon / Sea)
   - Bare Ground / Built-up
   - Upland Grass & Lawns
   - Fringe Mangrove / Wet Vegetation (likely *Rhizophora*)
   - Dense Mangrove Canopy (likely *Avicennia*)
4. **Validation:** Evaluated via sample Silhouette Score ($0.42$) and compared to the GMW 2020 baseline ($23.6$ ha vs $19.2$ ha, $+23\%$).

### Tools & Libraries
- Python, Google Earth Engine (`ee`), scikit-learn, GeoPandas, Matplotlib
