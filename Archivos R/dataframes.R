#Creamos el DF

mi_df <- data.frame(
  "entero" = 1:4, 
  "factor" = c("a", "b", "c", "d"), 
  "numero" = c(1.2, 3.4, 4.5, 5.6),
  "cadena" = as.character(c("a", "b", "c", "d"))
)

mi_df


# Podemos usar dim() en un data frame
dim(mi_df)

# El largo de un data frame es igual a su número de columnas
length(mi_df)

# names() nos permite ver los nombres de las columnas
names(mi_df)


# La clase de un data frame es data.frame
class(data.frame) 


#############################################Segundo Ejemplo ####################################################

data.frame(
  "entero" = 1:3, 
  "factor" = c("a", "b", "c", "d"), 
  "numero" = c(1.2, 3.4, 4.5, 5.6),
  "cadena" = as.character(c("a", "b", "c", "d"))
)


#Creamos un DataFrame

matriz <- matrix(1:12, ncol = 4)


#Usamos as.data.frame() para coercionar una matriz a un data frame.

df <- as.data.frame(matriz)


#Verificamos el resultado

class(df)

#Resultado
df


###################################################Tercer Ejemplo###############################################################
mi_df <- data.frame(
  "entero" = 1:4, 
  "factor" = c("a", "b", "c", "d"), 
  "numero" = c(1.2, 3.4, 4.5, 5.6),
  "cadena" = as.character(c("a", "b", "c", "d"))
)

mi_df * 2