# GRASS GIS Scripts — Landsat Image Mosaicking and Land-Cover Classification

General GRASS GIS shell scripts by Polina Lemenkova demonstrating how to mosaic adjacent Landsat scenes (different WRS path/rows) into a seamless extent and classify the result. A Landsat 8-9 OLI/TIRS time series over Riyadh, Saudi Arabia is used as a worked example. Not associated with any publication.

## Contents
- **Mosaicking:** import of adjacent Landsat scenes (r.in.gdal), region extension to span multiple path/rows, and colour composites (r.composite) across the merged extent.
- **Classification:** unsupervised clustering (i.cluster, k-means), maximum-likelihood classification (i.maxlik), reclassification (r.reclass), and machine-learning classification (r.learn.train, r.learn.predict) with Random Forest and Decision Tree classifiers from Python's Scikit-Learn library.
- **Display:** r.colors, d.rast, d.legend and d.out.file.

## Usage
Each script is standalone. Adapt the input scene paths, region bounds and class count to your own data.
