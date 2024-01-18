#!/bin/sh

grass
# importing the image subset with 7 Landsat bands and display the raster map (polinalemenkova)
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_165043_20231216_20231217_02_T1_SR_B1.TIF out=L8_2023_01
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_165043_20231216_20231217_02_T1_SR_B2.TIF out=L8_2023_02
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_165043_20231216_20231217_02_T1_SR_B4.TIF out=L8_2023_04
r.info L8_2023_01
# w=635685 e=861915 n=2831415 s=2599185
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_166043_20240108_20240113_02_T1_SR_B1.TIF out=L8_2024_01
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_166043_20240108_20240113_02_T1_SR_B2.TIF out=L8_2024_02
r.in.gdal /Users/polinalemenkova/grassdata/SArabia/LC09_L2SP_166043_20240108_20240113_02_T1_SR_B4.TIF out=L8_2024_04
r.info L8_2024_01
# w=479985 e=708015 n=2831415 s=2599185
r.composite blue=L8_2023_01 green=L8_2023_02 red=L8_2023_04 output=L8_2023_RGB --overwrite
r.composite blue=L8_2024_01 green=L8_2024_02 red=L8_2024_04 output=L8_2024_RGB --overwrite
# g.region to manage the boundary definitions for the geographic region.
g.region raster=L8_2024_01 -p
# w=635685 e=861915 n=2831415 s=2599185
# set a new region for both rasters (to encompass both rasters)
g.region w=479985 e=861915 n=2831415 s=2599185
# set region for one raster (and print the results)
g.region raster=L8_2024_RGB w=479985 e=861915 n=2831415 s=2599185 -p
# display monitors from the command line with the defined region extent
d.mon wx1
# plot two maps side by side
d.rast L8_2023_RGB
d.rast L8_2024_RGB
