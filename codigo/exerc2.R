library(readxl)

moda <- function(x) {
  uniqv <- unique(x)
  uniqv[which.max(tabulate(match(x, uniqv)))]
}

worksheet <- read_excel("./dados/exercicio2.xls")

f_table <- as.data.frame(table(worksheet))

paste("Tabela de frequência: ", f_table)

x <- worksheet$'Casas'

calc <- c (mean(x), median(x), var(x), sd(x), moda(x))

png(filename = "./graficos/grafico3.png", width = 900, height = 1000)
barplot(calc, main="Gráfico 3 - Ex. 2", xlab="Valores Estátisticos", ylab="Casas", 
        names.arg = c ("Media", "Mediana", "Moda", "Variancia", "D.Padrao"), 
        ylim=c(0, 700), cex.names = 0.8, xaxs = "i", col=rainbow(5))
dev.off()
