install.package("readxl")

# después cargar el paquete con
library(readxl)

#Ejecutar
file.choose()

#Importamos la ruta del archivo
ruta_excel <- "C:\\Users\\SDS-Usuario\\Downloads\\gapminder_importar_a_r.xlsx"

excel_sheets(ruta_excel)

#Leemos el archivo
caso_ideal <- read_excel(ruta_excel)


#Ahora vamos a visualizar la segunda hoja del libro

caso_medio <- read_excel(ruta_excel, sheet ='Hoja2')

#Importar datos complejos

el_perrote <- read_excel(ruta_excel, sheet = 'Hoja3', range = 'C7:E13')