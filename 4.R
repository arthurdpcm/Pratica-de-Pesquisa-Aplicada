
wine <- read.table("http://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data", header = FALSE, sep = ",")



# Dividindo a base de dados em conjunto de treinamento e teste
set.seed(1234) # Define a semente para garantir a reprodutibilidade

train.index <- sample(1:nrow(wine), size = round(0.8 * nrow(wine)), replace = FALSE) #80-20
train <- wine[train.index, ]
test <- wine[-train.index, ]





# Construindo o modelo de redes neurais
library(nnet)
model <- nnet(V1 ~ ., data = train, size = 5, linout = TRUE)



# Fazendo as previsões usando o conjunto de teste
library(caret)
test_labels <- t(t(test$V1))
predictions <- predict(model, test[, -1])

cm <- confusionMatrix(predictions, test_labels)
accuracy <- cm$overall["Accuracy"]
cat("Accuracy:", accuracy, "\n")




