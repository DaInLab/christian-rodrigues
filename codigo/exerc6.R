library(readxl)
library(qcc)
worksheet <- read_excel("./dados/exercicio6.xls")

np <- worksheet$'Nº pessoas'
names(np) <- worksheet$'Qualidade'

png(filename = "./graficos/grafico6.png", width = 700, height = 600)
graph <- pareto.chart(np, main="Gráfico 6 - Ex. 6", ylab="Frequência", col=rainbow(5))
dev.off()
