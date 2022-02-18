library(readxl)

worksheet <- read_excel("./dados/exercicio5.xls")

png(filename = "./graficos/grafico5.png", width = 700, height = 600)
barplot(worksheet$'Nº pessoas', main="Gráfico 5 - Ex. 5", xlab="Marcas", ylab="Nº Pessoas", 
        names.arg = worksheet$'Marcas', ylim=c(0, 50), cex.names = 0.8, xaxs = "i", col=rainbow(15))
dev.off()
