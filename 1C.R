library(ggplot2)


# Carregando a base de dados
data <- read.table("http://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data", header = FALSE, sep = ",")



# Renomeando as colunas
colnames(data) <- c("type", "alc", "malic", "ash", "alkalinity", "mg", "phenols", "flav", "nonflav_phenols", "proan", "color_int", "hue", "OD280_OD315", "proline")



# Dividindo a base de dados por tipo de vinho
data1 <- data[data$type == 1, ]
data2 <- data[data$type == 2, ]
data3 <- data[data$type == 3, ]



# Plotando um gráfico de distribuição de densidade para cada atributo por cada tipo de vinho
for (col in 2:14) {
  ggplot() + 
    geom_density(data = data1, aes(x = data1[,col], y = ..density.., fill = "Tipo 1"), alpha = 0.3) +
    geom_density(data = data2, aes(x = data2[,col], y = ..density.., fill = "Tipo 2"), alpha = 0.3) +
    geom_density(data = data3, aes(x = data3[,col], y = ..density.., fill = "Tipo 3"), alpha = 0.3) +
    ggtitle(paste("Distribuição de Densidade para", colnames(data)[col])) +
    xlab("Valor do Atributo") +
    ylab("Densidade") +
    theme(legend.position = "top")
}


