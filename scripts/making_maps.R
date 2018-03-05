# Testing out ideas for doing Philippines maps in R

############### SET-UP: ###############
##### probably-relevant packages
library(maptools)
library(rgdal)
#library(raster)
#library(maps)
#library(mapdata)
library(ggmap)
#library(marmap)
#library(lattice)
library(stringr)

# nice resource: http://remi-daigle.github.io/GIS_mapping_in_R/

##### vector of site names
site_vec <- c("Cabatoan", "Caridad Cemetery", "Caridad Proper", "Elementary School", "Gabas", "Haina", "Hicgop South",
"Magbangon", "Palanas", "Poroc Rose", "Poroc San Flower", "San Agustin", "Sitio Baybayon", "Sitio Lonas", 
"Sitio Tugas", "Tamakin Dacot", "Visca", "Wangag")

##### import files
# #hull shapefiles for sites + sitenames (trying to do this in a more streamlined fashion but doesn't work yet...)
# for (l in 1:length(site_vec)){
#   paste(str_replace_all(site_vec[i], " ", "_"), "_hull", sep = "") <- readOGR(dsn = "./data/Shapefiles", layer = (paste(site_vec[i], "Hull", sep = " ")))
# }

#hull shapefiles for sites
CaridadCemetery_hull <- readOGR(dsn = "./data/Shapefiles", layer = "Caridad Cemetery Hull")
CaridadProper_hull <- readOGR(dsn = "./data/Shapefiles", layer = "Caridad Proper Hull")
ElementarySchool_hull <- readOGR(dsn = "./data/Shapefiles", layer = "Elementary School Hull")
Gabas_hull <- readOGR(dsn = "./data/Shapefiles", layer = "Gabas Hull")
Haina_hull <- readOGR(dsn = "./data/Shapefiles", layer = "Haina Hull")
MagbangonCabatoan_hull <- readOGR(dsn = "./data/Shapefiles", layer = "Magbangon+Cabatoan Hull")
Palanas_hull <- readOGR(dsn = "./data/Shapefiles", layer = "Palanas Hull")
Pangasugan_hull <- readOGR(dsn = "./data/Shapefiles", layer = "Pangasugan Hull")
PorocRose_hull <- readOGR(dsn = "./data/Shapefiles", layer = "Poroc Rose Hull")
PorocSanFlower_hull <- readOGR(dsn = "./data/Shapefiles", layer = "Poroc San Flower Hull")
SanAgustin_hull <-readOGR(dsn = "./data/Shapefiles", layer = "San Agustin Hull")
SitioBaybayon_hull <- readOGR(dsn = "./data/Shapefiles", layer = "Sitio Baybayon Hull")
SitioHicgop_hull <- readOGR(dsn = "./data/Shapefiles", layer = "Sitio Hicgop Hull")
SitioLonas_hull <- readOGR(dsn = "./data/Shapefiles", layer = "Sitio Lonas Hull")
SitioTugas_hull <- readOGR(dsn = "./data/Shapefiles", layer = "Sitio Tugas Hull")
TamakinDacot_hull <- readOGR(dsn = "./data/Shapefiles", layer = "Tamakin Dacot Hull")
Visca_hull <- readOGR(dsn = "./data/Shapefiles", layer = "Visca Hull")

#hull shapefiles for coastline + sitenames
coastline_leyte <- readOGR(dsn = "./data/Shapefiles", layer = "coastlines_leyte")
short_coastline <- readOGR(dsn = "./data/Shapefiles", layer = "PHL_adm3_leyte_studyarea_trimcoastline")
sitenames_hull <- readOGR(dsn = "./data/Shapefiles", layer = "Sitenames")

############### FUNCTIONS: ###############

############### RUNNING THINGS: ###############

############### PLOTS: ###############
# make a map of all the sites
#pdf(file = "/plots/Simple_site_test_plot.pdf")
plot(coastline_leyte)
plot(Visca_hull, add = TRUE)
plot(Palanas_hull, add = TRUE)
plot(sitenames_hull, add = TRUE)

plot(Visca_hull)
plot(Palanas_hull, add = TRUE)
