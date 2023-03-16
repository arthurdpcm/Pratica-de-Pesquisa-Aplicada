#library(ggplot2)
#library(gridExtra)


# Importando os dados
data <- read.table("http://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data", header = FALSE, sep = ",")

# Renomeando as colunas
colnames(data) <- c("type", "alcohol", "malic_acid", "ash", "alcalinity_of_ash", "magnesium", "total_phenols", "flavanoids", "nonflavanoid_phenols", "proanthocyanins", "color_intensity", "hue", "od280_od315_of_diluted_wines", "proline")

# Separando os dados por tipo de vinho
type1_data <- data[data$type == 1, ]
type2_data <- data[data$type == 2, ]
type3_data <- data[data$type == 3, ]

# Função para criar o gráfico de densidade
plot_density <- function(data, attribute) {
  ggplot(data, aes(x = data[, attribute], fill = factor(type))) +
    geom_density(alpha = 0.5) +
    ggtitle(colnames(data)[attribute]) +
    theme(plot.title = element_text(hjust = 0.5))
}

# Criando um gráfico de densidade para cada atributo por tipo de vinho
for (i in 2:14) {
  plot <- plot_density(type1_data, i) + facet_wrap(~ type)
  print(plot)
  
  filename <- paste0("plot_", colnames(data)[i], ".png")  # nome do arquivo
  ggsave(filename, plot, type = "png")  # salvando o plot em um arquivo PNG
}
