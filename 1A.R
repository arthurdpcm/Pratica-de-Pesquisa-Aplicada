for(i in 2:14){
  string = paste("Coluna", i,"-",mean(wine[,i]), sd(wine[,i]))
  
  print(string)
}
