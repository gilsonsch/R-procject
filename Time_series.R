# reading data
# install.packages("raster",dep=T)
library(raster)

data1 <- raster("Data/NDVI_2000_03.tif")
ls()
class(data1)

# install.packages("raster_2.5-8.zip",repos = NULL, type = "win.binary")
# plotting data
plot(data1)

# reading shape file
shp <- shapefile("SHP/Lamb.shp")
ls()

# plotting shape file
plot(shp)

plot(data1)
plot(shp, add=T)
plot(shp, add=T,col="red")


plot(data1)
plot(shp,add=T, border="red")

extent(shp)

# testing <- extent(0, 20, 0, 20)

EE <- drawExtent()
EE

# cropping data
data_Crop <- crop(data1,EE)
# plot(data_Crop)

crop_shape <- mask(data1,shp)
plot(crop_shape)



# extract time series


# plotting time series


# bfast


# anomaly


