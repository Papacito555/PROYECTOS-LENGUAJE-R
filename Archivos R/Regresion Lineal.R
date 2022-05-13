# cargando paquete para analizar datos
library(tidyverse)

# cargando datos a entorno
data("Orange")

# problema/pregunta
# Cuanto medir? la circunferencias, en promedio, de
# un arbol de naranjas en a los 800 dias de plantarlo
Orange %>% 
  ggplot(aes(x = age,
             y = circumference)) +
  geom_point() 


# "mejor" ajuste de regresión lineal simple
lm(circumference ~ age, data = Orange)

#Circuferencia
Orange %>% 
  ggplot(aes(x = age,
             y = circumference)) +
  geom_point() +
  geom_abline(intercept = 17.3997,
              slope = 0.1068,
              col = 'blue') +
  geom_vline(xintercept = 800,
             col = 'red')

#Valor Exacto de la circuferencia
dias <- 800
medida <- 0.1068 * dias + 17.3997
print(medida)