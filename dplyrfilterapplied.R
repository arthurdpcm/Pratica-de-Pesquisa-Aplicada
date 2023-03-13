class1 <- dplyr::filter(wine, wine$X1 == 1)
class2 <- dplyr::filter(wine, wine$X1 == 2)
class3 <- dplyr::filter(wine, wine$X1 == 3)
print(class2)
