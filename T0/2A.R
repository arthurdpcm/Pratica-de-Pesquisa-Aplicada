
library(arules)

print("Here is the following range of each column from 2-14")

for (i in 2:14){
  
  values <- arules::discretize(wine[,i], method = "interval", breaks = 3)

  print(paste("Column", i))
  print(levels(values))

}

