

library(xml2)
library(XML)
#library("methods")

fileURL1 = "https://aiweb.cs.washington.edu/research/projects/xmltk/xmldata/data/tpc-h/part.xml"

download.file(fileURL1, destfile = "C:/Michigan_Counties/products.xml")

product_data <- read_xml("C:/Michigan_Counties/products.xml")


# Give the input file name to the function.
result <- xmlParse(file = product_data)

# Print the result.
print(result) 

# Extract the root node form the xml file.
rootnode <- xmlRoot(result)

# Find number of nodes in the root.
rootsize <- xmlSize(rootnode)

# Print the result.
print(rootsize)

# Convert the input xml file to a data frame.
xmldataframe <- xmlToDataFrame("C:/Michigan_Counties/products.xml")
print(xmldataframe)

P_RETAILPRICE = xmldataframe$P_RETAILPRICE

P_RETAILPRICE_int = as.numeric(as.character(P_RETAILPRICE))

P_RETAILPRICE_int

mean (P_RETAILPRICE_int)
hist(P_RETAILPRICE_int, breaks=6)