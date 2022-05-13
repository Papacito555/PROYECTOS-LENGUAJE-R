##########################FACTORES################################################

# Crear Vectores de Ventas

tallas <- c('m', 'g', 'S', 'S', 'm', 'M')

#Graficar

plot(tallas)


#Crear factor de un vector

tallas_factor <- factor(tallas)

#graficar factor
plot(tallas_factor)


#mirar niveles de factor

levels(tallas_factor)

#creando factor recodificado
tallas_recodificadas <- factor(tallas,
                               levels = c("g","m","M","S"),
                               labels = c("G","M","M","S"))
                               
#Graficar la nueva Tabla
                               
  plot(tallas_recodificadas)
  
  #Ordenar niveles
  
  tallas_ordenadas <- factor(tallas,
                               ordered = TRUE,
                               levels = c("S","m","M","g"),
                               labels = c("S","M","M","G"))

  #viendo el orden en los niveles
  tallas_ordenadas
  
  #Graficar la tabla ordenada
  plot(tallas_ordenadas)