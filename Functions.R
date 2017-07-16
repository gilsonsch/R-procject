# intro a fun

v <- rnorm(20)

sum(v)/length(v)

mean(v)

# examples


mi_funcion <- function(a,b){
  c <- sqrt(a^2 + b^2)
  return(c)
}

test <- mi_funcion(a=3,b=4)
  
mi_funcion(3,4)


mi_funcion1 <- function(a,b){
  c <- sqrt(a^3 + b^2)
  return(c)
}

mi_funcion1(2,3)
mi_funcion1(b=3,a=2)

# vec <- 10
#########################
paquete <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg))
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}

library()
paquete("pack01","pack02")

install.package("paquete", dep=T)


Sys.time()

hora <- function(){
  paste("=>",format(Sys.time(),"%X"),"|",Sys.Date())
}
hora()



# crop raster data
# 
miFUN <- function(dato,vector){
  ext <- extent(vector)
  CROP <- crop(dato,ext)
  data_FIN <- mask(CROP,vector)
}


##########################

fun.TS <- function(data,inicio,FREQ){
  tmp <- cellStats(data,mean,na.rm=T)
  tmp <- ts(tmp,start = inicio ,frequency = FREQ)
  return(tmp)
}

fun.TS1 <- function(data,anio,mes,FREQ){
  fecha<- c(anio,mes)
  tmp <- cellStats(data,mean,na.rm=T)
  tmp <- ts(tmp,start = fecha ,frequency = FREQ)
  return(tmp)
}






  