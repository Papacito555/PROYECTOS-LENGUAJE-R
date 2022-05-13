#Superposicion de Gráficas
data("iris")
head(iris)


#Grafica de puntos
ggplot(data = iris,
       mapping = aes(x = Sepal.Length,
                     y = Sepal.Width,
                     color = Species)) +
  geom_point() +
  geom_smooth(size = 2)

#Grafica de varias lineas estilo medidor de Pulso

ggplot(data = iris[iris$Species == 'setosa',],
       mapping = aes(x = 1:50,
                     y = Petal.Width)) +
  geom_line()

#superponiendo las lineas
ggplot(data = iris,
       mapping = aes(x = rep(1:50,3),
                     y = Petal.Width,
                     color = Species)) +
  geom_line()

#gráfica Boxplot con puntos
# boxplot con puntos
ggplot(data = iris,
       mapping = aes(x = Species,
                     y = Petal.Width,
                     fill = Species)) +
  geom_boxplot() +
  geom_jitter()


