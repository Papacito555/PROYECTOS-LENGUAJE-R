# Cargando datos de videos anteriores
# informacion peliculas shrek. Ver video --> https://bit.ly/2LaUWbo
nombre <- c("Shrek", "Shrek 2", "Shrek Tercero", "Shrek: Felices por siempre")
puntuacion <- c(7.9, 7.2, 6.1, 6.3)
posterior_2005 <- c(FALSE, FALSE, TRUE, TRUE)
# informacion estrenos de peliculas. Ver video --> https://bit.ly/2KDKCJE
warner <- c(20, 20, 16, 17, 17, 22, 17, 18, 19)
disney <- c(11, 13, 11, 8, 12, 11, 12, 8, 10)
fox <- c(18, 15, 15, 15, 16, 17, 15, 13, 11)

# crear diferentes estructuras de datos en R
vector_titulos <- nombre
matriz_peliculas <- matrix(c(warner, disney, fox),
                           nrow = 9,
                           ncol = 3)
peliculas_df <- data.frame(nombre,
                           puntuacion,
                           posterior_2005)

#Crear lista en R
lista_prueba <- list(vector_titulos, matriz_peliculas)

#mostrar lista

lista_prueba

#Cambiar nombre DF

names(lista_prueba) <- c('VECTOR', 'MATRIZ')

#Mostrando DF Actualizado

lista_prueba

# Seleccionar vector de la lista
lista_prueba[['VECTOR']] # recomiendo usar este
lista_prueba$VECTOR # no recomiendo usar este porque confunde con df

# Seleccionar el tercer elemento del vector de la lista
lista_prueba[['VECTOR']][3]

# Seleccionar fila 5 y columna 3 de la matriz de la lista
lista_prueba[['MATRIZ']][5,3]


# agregar dataframe a lista
lista_curso[['dataframe']] <- peliculas_df

# revisar que está el dataframe
lista_prueba

# eliminar un elemento de lista
lista_prueba[['vector']] <- NULL

# revisar que no está el vector
lista_prueba