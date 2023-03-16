library(arules)

print("Temos o seguinte alcance para cada coluna desde 2-14")

for (i in 2:14){
  
  values <- arules::discretize(wine[,i], method = "intervalo", breaks = 3)
  

  print(paste("Coluna", i))
  print(levels(values))

}


