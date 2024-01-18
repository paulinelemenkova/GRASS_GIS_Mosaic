#!/bin/sh
# g.remove -f type=raster pattern="L_*"

grass
# EPSG:4326
# importing the image subset for 2013 with 7 Landsat bands and display the raster map (polinalemenkova)
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC08_L2SP_165043_20131228_20200912_02_T1_SR_B1.TIF out=L_2013_01
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC08_L2SP_165043_20131228_20200912_02_T1_SR_B2.TIF out=L_2013_02
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC08_L2SP_165043_20131228_20200912_02_T1_SR_B3.TIF out=L_2013_03
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC08_L2SP_165043_20131228_20200912_02_T1_SR_B4.TIF out=L_2013_04
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC08_L2SP_165043_20131228_20200912_02_T1_SR_B5.TIF out=L_2013_05
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC08_L2SP_165043_20131228_20200912_02_T1_SR_B6.TIF out=L_2013_06
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC08_L2SP_165043_20131228_20200912_02_T1_SR_B7.TIF out=L_2013_07
r.info L_2013_01
# w=636285 e=862515 n=2832615 s=2601885
#
# importing the image subset for 2013 with 7 Landsat bands and display the raster map (polinalemenkova)
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC08_L2SP_166043_20140120_20200912_02_T1_SR_B1.TIF out=L_2014_01
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC08_L2SP_166043_20140120_20200912_02_T1_SR_B2.TIF out=L_2014_02
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC08_L2SP_166043_20140120_20200912_02_T1_SR_B3.TIF out=L_2014_03
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC08_L2SP_166043_20140120_20200912_02_T1_SR_B4.TIF out=L_2014_04
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC08_L2SP_166043_20140120_20200912_02_T1_SR_B5.TIF out=L_2014_05
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC08_L2SP_166043_20140120_20200912_02_T1_SR_B6.TIF out=L_2014_06
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC08_L2SP_166043_20140120_20200912_02_T1_SR_B7.TIF out=L_2014_07
r.info L_2014_01
# w=480285 e=708015 n=2831415 s=2599185
#
# importing the image subset for 2023 with 7 Landsat bands and display the raster map (polinalemenkova)
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_165043_20231216_20231217_02_T1_SR_B1.TIF out=L8_2023_01
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_165043_20231216_20231217_02_T1_SR_B2.TIF out=L8_2023_02
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_165043_20231216_20231217_02_T1_SR_B3.TIF out=L8_2023_03
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_165043_20231216_20231217_02_T1_SR_B4.TIF out=L8_2023_04
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_165043_20231216_20231217_02_T1_SR_B5.TIF out=L8_2023_05
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_165043_20231216_20231217_02_T1_SR_B6.TIF out=L8_2023_06
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_165043_20231216_20231217_02_T1_SR_B7.TIF out=L8_2023_07
# r.info L8_2023_01
# w=635685 e=861915 n=2831415 s=2599185
# importing the image subset for 2024 with 7 Landsat bands and display the raster map (polinalemenkova)
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_166043_20240108_20240113_02_T1_SR_B1.TIF out=L8_2024_01
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_166043_20240108_20240113_02_T1_SR_B2.TIF out=L8_2024_02
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_166043_20240108_20240113_02_T1_SR_B3.TIF out=L8_2024_03
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_166043_20240108_20240113_02_T1_SR_B4.TIF out=L8_2024_04
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_166043_20240108_20240113_02_T1_SR_B5.TIF out=L8_2024_05
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_166043_20240108_20240113_02_T1_SR_B6.TIF out=L8_2024_06
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_166043_20240108_20240113_02_T1_SR_B7.TIF out=L8_2024_07
# r.info L8_2024_01
#
# g.remove -f type=raster pattern="L_*"
#
g.list rast
# w=479985 e=708015 n=2831415 s=2599185
g.region raster=L8_2024_RGB w=479985 e=861915 n=2831415 s=2599185 -p

r.composite blue=L8_2023_01 green=L8_2023_02 red=L8_2023_04 output=L8_2023_RGB --overwrite
d.mon wx1
d.rast L8_2023_RGB
r.composite blue=L8_2024_01 green=L8_2024_02 red=L8_2024_04 output=L8_2024_RGB --overwrite
d.mon wx1
d.rast L8_2024_RGB

#------------------CLUSTERING AND CLASSIFICATION -------------------> 2023
# grouping data by i.group
#i.group group=L8_2023 subgroup=res_30m \
  input=L8_2023_02,L8_2023_03,L8_2023_05,L8_2023_06,L8_2023_07 --overwrite
i.group group=L8_2023 subgroup=res_30m \
  input=L8_2023_02,L8_2023_06,L8_2023_07 --overwrite
#
# Clustering: generating signature file and report using k-means clustering algorithm
i.cluster group=L8_2023 subgroup=res_30m \
  signaturefile=cluster_L8_2023 \
  classes=8 reportfile=rep_clust_L8_2023.txt --overwrite

# Classification by i.maxlik module
i.maxlik group=L8_2023 subgroup=res_30m \
  signaturefile=cluster_L8_2023 \
  output=L8_2023_cluster_classes reject=L8_2023_cluster_reject --overwrite
#
# # --------------------------------------------->
# MACHINE LEARNING
# First, we are going to generate some training pixels from an older (1996) land cover classification:
r.random input=L8_2023_cluster_classes seed=100 npoints=1000 raster=training_pixels --overwrite
# Then use these training pixels to perform a classification on recent Landsat - 2022 image:
# train a DecisionTreeClassifier model using r.learn.train
r.learn.train group=L8_2023 training_map=training_pixels \
    model_name=DecisionTreeClassifier n_estimators=500 save_model=Polina_model.gz --overwrite
# 1. 1st image
# perform prediction using r.learn.predict
r.learn.predict group=L8_2023 load_model=Polina_model.gz output=classification_2023 --overwrite
# check raster categories - they are automatically applied to the classification output
r.category classification_2023
# 2. 2nd image
# train a DecisionTreeClassifier model using r.learn.train
r.learn.train group=L8_2024 training_map=training_pixels \
    model_name=DecisionTreeClassifier n_estimators=500 save_model=Polina_model1.gz --overwrite
# perform prediction using r.learn.predict
r.learn.predict group=L8_2024 load_model=Polina_model1.gz output=classification_2024 --overwrite
# check raster categories - they are automatically applied to the classification output
r.category classification_2024
# display
r.colors classification_2023 color=byr -e
r.colors classification_2024 color=byr -e
d.mon wx1
d.rast classification_2024
d.rast classification_2023
d.legend raster=classification_2023 font="Helvetica" fontsize=12 bgcolor=white border_color=white -d
d.out.file output=DTC_mosaic_byr format=jpg --overwrite

 MACHINE LEARNING
# First, we are going to generate some training pixels from an older (1996) land cover classification:
r.random input=L8_2023_cluster_classes seed=100 npoints=1000 raster=training_pixels --overwrite
# Then use these training pixels to perform a classification on recent Landsat image:
# 1.
# train a DecisionTreeClassifier model using r.learn.train
r.learn.train group=L8_2024 training_map=training_pixels \
    model_name=DecisionTreeClassifier n_estimators=500 save_model=rf_model.gz --overwrite
# perform prediction using r.learn.predict
r.learn.predict group=L8_2024 load_model=rf_model.gz output=classification_2024 --overwrite
# check raster categories - they are automatically applied to the classification output
r.category classification_2024
# display
r.region raster=classification_2024 n=2831415 s=2599185 w=479985 e=861915
r.region raster=classification_2023 n=2831415 s=2599185 w=479985 e=861915
d.mon wx1
d.rast classification_2023
d.rast classification_2024
r.colors rf_classification color=bcyr -e
d.legend raster=rf_classification font="Helvetica" fontsize=12 bgcolor=white border_color=white
d.out.file output=DTC_2024 format=jpg --overwrite

