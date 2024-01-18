#!/bin/sh

grass
# importing the image subset with 7 Landsat bands and display the raster map (polinalemenkova)
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_165043_20231216_20231217_02_T1_SR_B1.TIF out=L8_2023_01
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_165043_20231216_20231217_02_T1_SR_B2.TIF out=L8_2023_02
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_165043_20231216_20231217_02_T1_SR_B3.TIF out=L8_2023_03
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_165043_20231216_20231217_02_T1_SR_B4.TIF out=L8_2023_04
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_165043_20231216_20231217_02_T1_SR_B5.TIF out=L8_2023_05
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_165043_20231216_20231217_02_T1_SR_B6.TIF out=L8_2023_06
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_165043_20231216_20231217_02_T1_SR_B7.TIF out=L8_2023_07
r.info L8_2023_01
# w=635685 e=861915 n=2831415 s=2599185
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_166043_20240108_20240113_02_T1_SR_B1.TIF out=L8_2024_01
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_166043_20240108_20240113_02_T1_SR_B2.TIF out=L8_2024_02
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_166043_20240108_20240113_02_T1_SR_B3.TIF out=L8_2024_03
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_166043_20240108_20240113_02_T1_SR_B4.TIF out=L8_2024_04
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_166043_20240108_20240113_02_T1_SR_B5.TIF out=L8_2024_05
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_166043_20240108_20240113_02_T1_SR_B6.TIF out=L8_2024_06
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_166043_20240108_20240113_02_T1_SR_B7.TIF out=L8_2024_07
g.list rast
r.info L8_2024_01
# w=479985 e=708015 n=2831415 s=2599185
r.composite blue=L8_2023_01 green=L8_2023_02 red=L8_2023_04 output=L8_2023_RGB --overwrite
r.composite blue=L8_2024_01 green=L8_2024_02 red=L8_2024_04 output=L8_2024_RGB --overwrite
# g.region to manage the boundary definitions for the geographic region.
g.region raster=L8_2024_01 -p
# w=635685 e=861915 n=2831415 s=2599185
# 1.
# g.region sets a new region for both rasters (to include both rasters)
g.region w=479985 e=861915 n=2831415 s=2599185
# set region for one raster (and print the results)
g.region raster=L8_2024_RGB w=479985 e=861915 n=2831415 s=2599185 -p
# display monitors from the command line with the defined region extent
d.mon wx1
# plot two maps side by side
d.rast L8_2023_RGB
d.rast L8_2024_RGB
# save the file
d.out.file output=mosaic_Riyadh format=jpg --overwrite
# 2. - r.patch creates map mosaic using Bash syntax: it creates a list of maps matching a pattern, extends the region to include them all, and patches them together to create a mosaic. Overlapping maps will be used in the order listed.
r.patch in=L8_2023_04,L8_2024_04 out=mosaic_2023_2024
d.mon wx2
# plot two maps side by side
d.rast mosaic_2023_2024
d.out.file output=extent_Riyadh format=jpg --overwrite
# 3. - i.image.mosaic - Mosaics several images and extends colormap.
i.image.mosaic input=L8_2023_07,L8_2024_07 output=mosaic_SWIR2
d.mon wx3
d.rast mosaic_SWIR2
d.out.file output=mosaic_SWIR2 format=jpg --overwrite
#
i.image.mosaic input=L8_2023_06,L8_2024_06 output=mosaic_2023_2024_SWIR1
d.mon wx3
d.rast mosaic_2023_2024_SWIR1
d.out.file output=mosaic_2023_2024_SWIR1 format=jpg --overwrite
#
i.image.mosaic input=L8_2023_01,L8_2024_01 output=mosaic_2023_2024_aerosol
d.mon wx3
d.rast mosaic_2023_2024_aerosol
d.out.file output=mosaic_2023_2024_aerosol format=jpg --overwrite
#
i.image.mosaic input=L8_2023_05,L8_2024_05 output=mosaic --overwrite
d.mon wx0
d.rast mosaic
# except: 1, 4,

