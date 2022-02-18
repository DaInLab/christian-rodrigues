library(readxl)

worksheet <- read_excel("./dados/exercicio7.xls")

png(filename = "./graficos/grafico7.png", width = 900, height = 700)
barplot(worksheet$'Atendimento', main="Gráfico 7 - Ex. 7", xlab="Atendimento", ylim=c(0, 400),
        ylab="Áreas", names.arg = worksheet$'Áreas', cex.names = 0.8, xaxs = "i", col = rainbow(5))
dev.off()
