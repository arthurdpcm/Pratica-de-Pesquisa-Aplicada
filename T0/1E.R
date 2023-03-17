
wine <- read.table("http://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data", header = FALSE, sep = ",")

# Gerando o gráfico de dispersão
pairs(wine[, -1], main = "Gráfico de Dispersão dos Atributos", col = "blue")
