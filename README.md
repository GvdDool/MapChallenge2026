# #30DayMapChallenge 2026

Personal contributions to the annual **[#30DayMapChallenge](https://30daymapchallenge.com/)** — an open daily mapping project taking place each November.

---

## 🗺️ Submissions Overview

| Day | Theme | Region / Subject | Notebook | Output Map | Documentation |
|:---:|:---|:---|:---:|:---:|:---:|
| **01** | **Points** | Gironde Pine Massif: Wildfire Watch Tower Sightlines | [`Day01_points-Shared.ipynb`](notebooks/Day01_points-Shared.ipynb) | [`Map`](outputs/Day01_fire_watch_linkedin.png) | [`Notes`](docs/Day01_points.md) |
| **02** | **Lines** | Gironde Massif: Warning Distances to Saumos Ignition | [`Day02_lines-Shared.ipynb`](notebooks/Day02_lines-Shared.ipynb) | [`Map`](outputs/Day02_fire_lines_final.png) | [`Notes`](docs/Day02_lines.md) |
| **03** | **Polygons** | Gironde Wildfire: Fire Station Road Reachability Hulls | [`Day03_polygons-Shared.ipynb`](notebooks/Day03_polygons-Shared.ipynb) | [`Map`](outputs/Day03_fire_polygons_final.png) | [`Notes`](docs/Day03_polygons.md) |
| **04** | **Clusters** | Graeme Hall Ramsar Sanctuary, Barbados: Mangrove Clusters | [`Day04_clusters-Shared.ipynb`](notebooks/Day04_clusters-Shared.ipynb) | [`Map`](outputs/Day04_graeme_hall_mangrove_clusters_split.png) | [`Notes`](docs/Day04_clusters.md) |

---

## 📂 Repository Structure (KISS)

```text
MapChallenge2026/
├── docs/                 # Daily documentation, methods & notes
│   ├── Day01_points.md
│   ├── Day02_lines.md
│   ├── Day03_polygons.md
│   └── Day04_clusters.md
│
├── notebooks/            # Self-contained Jupyter notebooks for each day
│   ├── Day01_points-Shared.ipynb
│   ├── Day02_lines-Shared.ipynb
│   ├── Day03_polygons-Shared.ipynb
│   └── Day04_clusters-Shared.ipynb
│
├── outputs/              # High-resolution rendered production maps
│   ├── Day01_fire_watch_linkedin.png
│   ├── Day02_fire_lines_final.png
│   ├── Day03_fire_polygons_final.png
│   └── Day04_graeme_hall_mangrove_clusters_split.png
│
├── .gitignore            # Clean git exclusion rules
└── README.md             # This project directory
```

---

## 🛠️ Environment & Tooling

- **Language:** Python 3.10+
- **Geospatial & Remote Sensing:** Google Earth Engine (`ee`), GeoPandas, Shapely, PyProj, Contextily, NetworkX / OSMnx
- **Machine Learning & Stats:** scikit-learn
- **Visualization:** Matplotlib, Contextily (basemaps)
