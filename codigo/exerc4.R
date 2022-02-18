library(readxl)

worksheet <- read_excel("./dados/exercicio4.xls")

data <- worksheet$'Salários'

table <- data.frame(t(table(data)))[,-1]
table$data <- as.numeric(levels(table$data))
table <- table %>% 
  mutate(Fr = 100*Freq/sum(Freq),
         Fac = cumsum(Freq),
         Xi.Fi = data*Freq)
View(table)
print(table)

png(filename = "./graficos/grafico4.png", width = 700, height = 500)
hist(data, main="Gráfico 4 - Ex. 4", xlab="Salários", ylab="Frequência", 
     ylim=c(0, 5), col=rainbow(1))
dev.off()
