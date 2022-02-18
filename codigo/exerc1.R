library(readxl)

worksheet <- read_excel("./dados/exercicio1.xls")

x <- worksheet$'Taxas de juros'

calc1 <- c (mean(x), median(x), var(x), sd(x))
calc2 <- c (min(x), max(x), quantile(x, 1/4), quantile(x, 3/4))

paste("Média: ", calc1[1])
paste("Mediana: ", calc1[2])
paste("Variância: ", calc1[3])
paste("Desvio Padrão: ", calc1[4])
paste("Valor Mínimo: ", calc2[1])
paste("Valor Maximo: ", calc2[2])
paste("Primeiro Quartil (Q1): ", calc2[3])
paste("Terceiro Quartil (Q3): ", calc2[4])

png(filename = "./graficos/grafico1.png", width = 1000, height = 800)
barplot(calc1, main="Gráfico 1 - Ex. 1", xlab="Valores Estátisticos", ylab="Taxas", 
        names.arg = c ("Média", "Mediana", "Variância", "Desvio Padrão"),
        ylim=c(0, 3), cex.names = 1, xaxs = "i", col=rainbow(4))

png(filename = "./graficos/grafico2.png", width = 900, height = 700)
barplot(calc2, main="Gráfico 2 - Ex. 1", xlab="Valores Estátisticos", ylab="Taxas", 
        names.arg = c ("Valor Mínimo", "Valor Maximo", "Q1", "Q3"),
        ylim=c(0, 3), cex.names = 1, xaxs = "i", col=rainbow(4))
dev.off()
