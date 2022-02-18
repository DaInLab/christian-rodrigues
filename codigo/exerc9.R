library(readxl)

worksheet <- read_excel("./dados/exercicio9.xls")

x <- worksheet$'Salários'

sal <- as.matrix(x)

table <- data.frame(t(table(sal)))[,-1]
table$sal <- as.numeric(levels(table$sal))

table <- table %>% 
  mutate(
    Fr = 100*Freq/sum(Freq),
    Fac = cumsum(Freq),
    Xi.Fi = sal*Freq
  )
View(table)
paste(table)

png(filename = "./graficos/grafico9.png", width = 700, height = 500)
hist(sal, main="Gráfico 9 - Ex. 9", xlab="Salários", ylab="Frequência", 
     ylim=c(0, 20), col=rainbow(1))
dev.off()
