
install.package("ggplot2") 

# para instalar ggplot2
library(ggplot2)

year <- c('2010', '2011', '2012', '2013', '2014', '2015', '2016', '2017', '2018')
disney <- c(11, 13, 11, 8, 12, 11, 12, 8, 10)

# para graficar 
plot(year, disney) 

# hacer dataframe
peliculas <- data.frame(year, 
                        disney)

# graficar utilizando ggplot
ggplot(data = peliculas,
       mapping = aes(x = year,
                     y = disney)) +
  geom_point() +
  labs(title = 'disney')
