# cargando los datos
data("mtcars")

# editando histograma
hist(mtcars$hp,
     breaks = 10,
     # breaks = seq(-50, -350, -50),
     col = "darkgray",
     border = "gray10",
     main = "Titulo del histograma",
     xlab = 'variable x',
     ylab = 'conteo')


#Curva Normal sobre Histogramas en R base
hist(mtcars$hp, freq=FALSE)
curve(dnorm(x, 
            mean=mean(mtcars$hp), 
            sd=sd(mtcars$hp)), 
      add=TRUE, col="red") 

# hacer un histograma en ggplot2
ggplot(data = mtcars,
       mapping = aes(x = hp)) +
  geom_histogram(bins = 9)


# histogramas separados por Colores 
ggplot(data = mtcars,
       mapping = aes(x = hp,
                     fill = factor(vs))) +
  geom_histogram(bins = 9,
                 position = 'identity',
                 alpha = 0.8) +
  labs(title = 'Titulo',
       fill = 'vs motor',
       x = 'caballos de fuerza',
       y = 'conteos',
       subtitle = 'agregar información extra',
       caption = 'esta información es de tal fuente')


# curve normal histograma ggplot2
ggplot(data = mtcars,
       mapping = aes(x = hp)) + 
  geom_histogram(aes(y =..density..),
                 bins = 9,
                 position = 'identity') +
  stat_function(fun = dnorm, 
                args = list(mean = mean(mtcars$hp), 
                            sd = sd(mtcars$hp)))


