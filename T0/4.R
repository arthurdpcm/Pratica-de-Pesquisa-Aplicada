
library(nnet)
library(caret)


wine <- read.table("http://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data", header = FALSE, sep = ",")



# Dividindo o conjunto de dados em treino e teste
train_index <- createDataPartition(wine$V1, p = 0.8, list = FALSE)
train_data <- wine[train_index, ]
test_data <- wine[-train_index, ]

# Criando o modelo de rede neural
model <- nnet(
  V1 ~ V2 + V3 + V4 + V5 + V6 + V7 + V8 + 
    V9 + V10 + V11 + V12 + V13 + V14, 
  data = train_data, hidden = c(10, 5), size=10 ,threshold = 0.01
)


# Fazer previsões no conjunto de teste
pred <- predict(model, newdata = test_data)

# Avaliar o desempenho do modelo

table_resultado <- table(pred > 0.5, test_data$V1)
View(table_resultado)
