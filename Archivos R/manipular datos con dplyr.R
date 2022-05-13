# instalando paquete con los datos
install.packages("gapminder")

# cargando paquete con los datos
library(gapminder)

# cargando datos a entorno
data("gapminder")

# cargando datos a entorno
head(gapminder)

#Para visualizar el Historial de Memorias USB ingresamos al CMD 
# y Ponemos el siguiente comando reg query hklm\system\currentcontrolset\enum\usbstor /s.


# install.packages("tidyverse")
library(tidyverse)

# filtrar datos por pais sin %>% 
filter(gapminder, country=='Mexico')

# filtrar datos por pais
# para hacer %>% en RStudio (cntrl + shift + M)
gapminder %>% 
  filter(country=='Mexico')

# filtrar datos por año
gapminder %>% 
  filter(year==2002)

# cantidad de paises en Asia en 2007
gapminder %>% 
  filter(continent == 'Asia',
         year == 2007) %>% 
  summarise(conteo = n())

# maxima esparanza de vida
gapminder %>% 
  summarise(max_explife = max(lifeExp))

# agrupando esperanza de vida promedio por aÃ±o
gapminder %>% 
  group_by(year) %>% 
  summarise(prom_vida = mean(lifeExp))