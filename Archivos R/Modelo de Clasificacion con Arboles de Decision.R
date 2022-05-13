# paquete de datos
# install.packages('titanic')

# cargar librarias de analisis
library(tidyverse)

# cargar librerias de datos
library(titanic)
data("titanic_train")
head(titanic_train)



# cargar librerias para clasificacion
# install.packages('rpart')
library(rpart)
# install.packages('rattle')
library(rattle)
# install.packages('rpart.plot')
library(rpart.plot)

# modelando con arboles de decision
arbol <- rpart(
  formula = Survived ~ Sex + Age,
  data = titanic_train,
  method = 'class'
)

#Segundo Modelado

arbol2 <- rpart(
  formula = Survived ~ Sex + Fare,
  data = titanic_train,
  method = 'class'
)

#Graficar el Arbol 2
fancyRpartPlot(arbol2)

# graficando el arbol
fancyRpartPlot(arbol)