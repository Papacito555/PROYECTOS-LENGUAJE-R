#Importamos los Datos

data("mtcars")

#Tabla
barplot(table(mtcars$cyl))

#Tabla Ordenada por Columnas
barplot(table(mtcars$cyl),
        horiz = 'TRUE',
        col = 'yellow',
        border = 'red',
        main = 'grafica de barras',
        sub = 'subtitulo',
        xlab = 'cilindros',
        ylab = 'cantidad')


#Graficas con ggplot

ggplot(data = mtcars,
       mapping = aes(x = factor(cyl))) +
  geom_bar() +
  coord_flip()

# guardando grafica en variable
p <- ggplot(data = mtcars,
            mapping = aes(x = factor(cyl),
                          fill = factor(gear)))

# stacked bar chart
p + geom_bar(position = 'stack', stat = 'count')

# dogde bar chart
p + geom_bar(position = 'dodge', stat = 'count')

# stacked + percent barchart
p + geom_bar(position = 'fill', stat = 'count')