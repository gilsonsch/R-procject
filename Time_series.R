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
class(shp)
crop_shape <- mask(data1,shp)
plot(crop_shape)

test <- miFUN(data1,shp)
plot(test)

proj4string(shp)

lista <- list.files(path="Data/",pattern="*.tif",full.names = T)
# for(i in 1:){
#   tmp <- raster(lista[i])
#   data <- addLayer(data,tmp)
# }


data <- stack(lista) 

nlayers(data)
dim(data)

plot(data[[1]])

plot(data[[1:6]])


data[[1:10]][5,5]

data[[1:196]][5,5]
tw<- data[5,5]

plot(tw)
View(tw)
hist(tw)

TS <- ts(data = tw,start =c(2000,3),frequency = 12 )
class(TS)

TS <- t(TS)

TS <- ts(data = TS,start =c(2000,3),frequency = 12 )

plot(TS,type="l")
# extract time series
# extract()

mean(c(1,2,3,4,NA),na.rm=T)

Serie <- fun.TS(data)
Serie_TS <-  ts(Serie,start = c(2000,3),frequency = 12)


# plotting time series
plot(Serie_TS)

Serie <- fun.TS(data=data,inicio=c(2000,3),12)
plot(Serie)


# bfast

fit <- bfast(Serie, h = 10/length(Serie), season = "none", max.iter = 1)

plot(fit)
# anomaly



