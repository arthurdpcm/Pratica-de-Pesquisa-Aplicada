
letraB <- read.table("http://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data", header = FALSE, sep = ",")


letraB$Tipo1 <- 0
letraB$Tipo2 <- 0
letraB$Tipo3 <- 0

for (i in 1:nrow(letraB)) {
  if(letraB[i, 1] == 1){
    letraB[i, 15] <- 1
  }
  else if(letraB[i, 1] == 2){
    letraB[i, 16] <- 1
  } else if(letraB[i, 1] == 3){
    letraB[i, 17] <- 1
  }
}