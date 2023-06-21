# "#"以下はコードではない
library(gplots) #heatmap2を使えるようにする
data <- read.csv("Matrix_heatmap2.csv", row.names = 1, header = TRUE, stringsAsFactors = FALSE) #csvファイルを取り込む
data <- as.matrix(data)
#csvファイル取り込みの確認
data
#カラーパレットを定義する　low, mid, high
mycolor <- gplots::colorpanel(n = 20, low = "white", high = "red")
#Heatmapを描写
heatmap.2(data,
          Colv = NA, #列のClustering
          Rowv = NA, #行のClustering
          dendrogram = "none", #Clusteringを無くすことで出るエラーを回避
          col = mycolor, #色の定義
          trace = "none", #トレース線の定義
          density.info = "none", #凡例のHistogramを削除
          keysize = 1, #凡例の大きさ
          lhei = c(1, 5) #高さ
          )