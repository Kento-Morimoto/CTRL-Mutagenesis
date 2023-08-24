# "#" indicateing comments
library(gplots) # activates heatmap2
data <- read.csv("Matrix_heatmap2.csv", row.names = 1, header = TRUE, stringsAsFactors = FALSE) # inporting csv file
data <- as.matrix(data)
#confirming inportation pf csv file 
data
# defineing color palette;　low, mid, high
mycolor <- gplots::colorpanel(n = 20, low = "white", high = "red")
#drawing heatmap
heatmap.2(data,
          Colv = NA, # clustering column
          Rowv = NA, # clustering row
          dendrogram = "none", # avoiding error
          col = mycolor, # defining color
          trace = "none", # defininng trace line
          density.info = "none", # deleting histogram
          keysize = 1, # defining size of paradigm
          lhei = c(1, 5) # defining height of heatmap
          )
