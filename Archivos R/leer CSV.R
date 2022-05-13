# instalar paquete readr
install.packages("readr")

# cargar paquete readr
library(readr)

#ejecutar

file.choose()

ruta_csv <- "C:\\Users\\SDS-Usuario\\Downloads\\spark\\data\\data\\SEDENA_DATA\\ssohospital.csv"
# importar datos gapminder
ssohospital <- read_csv(ruta_csv)

# mirar datos
head(ssohospital)