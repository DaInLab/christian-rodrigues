library(readxl)
library(dplyr)

worksheet <- read_excel("./dados/exercicio8.xls")

array_var <- data.matrix(worksheet)
data <- as.vector(array_var)
View(data)
paste(data)

table <- data.frame(t(table(data)))[,-1]
table$data <- as.numeric(levels(table$data))
table <- table %>% 
  mutate(Fr = 100*Freq/sum(Freq),
         Fac = cumsum(Freq),
         Xi.Fi = data*Freq)
View(table)
paste(table)

png(filename = "./graficos/grafico8.png", width = 800, height = 600)
hist(data, main="Gráfico 8 - Ex. 8", xlab="Alturas", ylab="Frequência", ylim=c(0, 25), col=rainbow(1))
dev.off()
