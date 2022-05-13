#########################################ARBOL DE DECISION EJEMPLO 2"

#Librerias

library(tidyverse)
library(rpart)
library(rpart.plot)
library(caret)

#Importar datos de muestra

# Datos
download.file("https://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data", "wine.data")

# Información
download.file("https://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.names", "wine.names")

#Leer Lineas
readLines("wine.data", n = 10)

#Asignar el Resultado

vino <- read.table("wine.data", sep = ",", header = FALSE)


#Leer Nombres

readLines("wine.names", n = 10)

#Copiar Archivo

file.copy(from = "wine.names", to = "wine_names.txt")

file.show("wine_names.txt")

#Summary

summary(vino)

#Obtener Nombres  Columnas

nombres <- 
  readLines("wine_names.txt")[58:70] %>% 
  gsub("[[:cntrl:]].*\\)", "", .) %>% 
  trimws() %>% 
  tolower() %>% 
  gsub(" |/", "_", .) %>% 
  # Agregamos el nombre "tipo", para nuestra primera columna con los tipos de vino
  c("tipo", .)

#Renombrar Columnas
names(vino) <- nombres 

#Cambiar tipo de dato a Factor

vino <- vino %>% 
  mutate_at("tipo", factor)


