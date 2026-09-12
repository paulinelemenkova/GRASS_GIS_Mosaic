# GRASS GIS Scripts — Landsat Image Mosaicking and Land-Cover Classification

GRASS GIS shell scripts by Polina Lemenkova for mosaicking adjacent Landsat scenes (different WRS path/rows) into a seamless extent and classifying the result. Demonstrated on a Landsat 8-9 OLI/TIRS time series over Riyadh, Saudi Arabia.

## Contents
- **Mosaicking:** import of adjacent Landsat scenes (r.in.gdal), region extension to span multiple path/rows, and colour composites (r.composite) across the merged extent.
- **Classification:** unsupervised clustering (i.cluster, k-means), maximum-likelihood classification (i.maxlik), reclassification (r.reclass), and machine-learning classification (r.learn.train, r.learn.predict) with Random Forest and Decision Tree classifiers from Python's Scikit-Learn library.
- **Display:** r.colors, d.rast, d.legend and d.out.file.

## Citation
If you use or adapt these scripts, please credit the author, Polina Lemenkova (ORCID: 0000-0002-5759-1089).
