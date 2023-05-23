# Read this shape file with the rgdal library. 
library(rgdal)


#Set working directory
setwd('C:/Michigan_Counties')

#Read the shapefile with the readOGR command from the rdal library
michigan <- readOGR("Michigan.shp")

#Plot the shapefile
plot (michigan)

#Use the head command to view the first six rows in the attribute table:  
head (michigan)


# Use the "summary" command to view all the. records in the attribute data:
  summary (michigan)
  
#Create a histogram of the data in the household field
hist(michigan$HOUSEHOLDS, col ="lightblue")
