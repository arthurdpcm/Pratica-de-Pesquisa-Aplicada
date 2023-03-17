#library(ggplot2)
#library(gridExtra)



wine <- read.table("http://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data", header = FALSE, sep = ",")

type1_data <- wine[wine$V1 == 1, ]
type2_data <- wine[wine$V1 == 2, ]
type3_data <- wine[wine$V1 == 3, ]

# Função para criar o gráfico de densidade
plot_density <- function(data, attribute) {
  ggplot(data, aes(x = data[, attribute], fill = factor(V1))) +
    geom_density(alpha = 0.5) +
    ggtitle(colnames(data)[attribute]) +
    theme(plot.title = element_text(hjust = 0.5))
}

# Criando um gráfico de densidade para cada atributo por tipo de vinho
for (i in 2:14) {
  plot <- plot_density(type1_data, i) + facet_wrap(~ V1)
  print(plot)
  
  filename <- paste0("plot_", colnames(data)[i], ".png")  # nome do arquivo
  ggsave(filename, plot, type = "png")  # salvando o plot em um arquivo PNG
}
