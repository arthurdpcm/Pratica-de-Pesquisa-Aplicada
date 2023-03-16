

library(ggplot2)


wine <- read.table("http://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data", header = FALSE, sep = ",")


# Gerando um gráfico boxplot para cada atributo dos vinhos
for (col in colnames(wine)[-1]) {
  ggplot(wine, aes(x = "", y = wine[, col])) +
    geom_boxplot(fill = "#69b3a2", color = "black", alpha = 0.8) +
    ggtitle(paste("Boxplot -", col)) +
    xlab("") +
    ylab(col) +
    theme_bw()
}

# Gerando um gráfico boxplot para cada tipo de vinho e para cada atributo
for (col in colnames(wine)[-1]) {
  plot(ggplot(wine, aes(x = as.factor(V1), y = wine[, col], fill = as.factor(V1))) +
    geom_boxplot(color = "black", alpha = 0.8) +
    ggtitle(paste("Boxplot -", col)) +
    xlab("Type") +
    ylab(col) +
    theme_bw())
}
