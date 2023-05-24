# Install libraries
library(tmap)
library (sf)


#Set Working Directory
setwd('C:/Michigan_Counties')

#Read the Shapefile with the readOGR command from the rdal library
michigan <- readOGR("Michigan.shp")

#Plot the shapefile
plot (michigan, col ='green')

#Use the head command to view the first six rows in the attribute table:  
head (michigan)


# Use the "summary" command to view records in the attribute table
summary (michigan)
  
#Create a histogram of the data in the household field
hist(michigan$HOUSEHOLDS, col ="red")


#Export the Shapefile
#To make a new shapefile with the updated attribute field, use the following command from the rgdal library:
  
writeOGR(michigan, "C:/Michigan_Counties", "Michigan2", driver="ESRI Shapefile", overwrite_layer=TRUE)

  
  
# Create a Choropleth Map Using the quick thematic map function from TMAP Library
qtm(michigan, fill = "HOUSEHOLDS", fill.title="HOUSEHOLDS")


#You can also use this structure:
tm_shape(michigan) + tm_fill("HOUSEHOLDS", title="Household Distribution, Michigan", n=4, style ="jenks") +
tm_borders ( col = " black " , lwd = 1)

#Plot a world thematic map using data from tmap
data("World")
tm_shape(World) + tm_polygons("HPI", n=4, style ="equal") +
  tm_layout( frame = TRUE , scale = 1.2)

