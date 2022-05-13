
#Creamos un DataFrame
set.seed(61)

empleado_id <- 1:10
empleado_nombre <- c("Andrew", "Susan", "John", "Joe", "Jack",
                     "Jacob", "Mary", "Kate", "Jacqueline", "Ivy")
empleado_salario <- round(rnorm(10, mean = 1500, sd = 200))
empleado_edad <- round(rnorm(10, mean = 50, sd = 8))
empleado_puesto <- c("CTO", "CFO", "Administrativo", rep("Técnico", 7))


df_1 <- data.frame(id = empleado_id[1:8], nombre = empleado_nombre[1:8],
                   salario_mensual = empleado_salario[1:8])
df_2 <- data.frame(id = empleado_id[-5], nombre = empleado_nombre[-5],
                   edad = empleado_edad[-5], position = empleado_puesto[-5])

df_1
df_2

#Inner Join
merge(x = df_1, y = df_2)
merge(x = df_1, y = df_2, by = c("id", "nombre")) # Equivalente

#Full Outer Join
merge(x = df_1, y = df_2, all = TRUE)

#Left outer Join
merge(x = df_1, y = df_2, all.x = TRUE)

#Right Outer Join

merge(x = df_1, y = df_2, all.y = TRUE)

#Cross Join
Merged <- merge(x = df_1, y = df_2, by = NULL)
head(Merged)


#Unificar Filas con Merge###########################################

df1 <- data.frame(var = c("uno", "dos", "tres", "cuatro", "cinco"),
                  datos = c(1, 5, 1, 6, 8))
rownames(df1) <- c("A", "B", "C", "D", "E")
df1

df2 <- data.frame(var = c("tres", "uno", "ocho", "dos", "nueve"),
                  datos = c(1, 5, 1, 6, 8))
rownames(df2) <- c("E", "A", "B", "D", "C")
df2


#Unificacion

merge(df1, df2, by = 0, all = TRUE) 
merge(df1, df2, by = "row.names", all = TRUE) # Equivalente


###########################Unir mas de dos data Frames en R

x <- data.frame(id = 1:4, año = 1995:1998)
x

y <- data.frame(id = c(4, 1, 3, 2),
                año = c(1998, 1995, 1997, 1996),
                edad = c(22, 25, 23, 24))
y

z <- data.frame(id = c(1, 2, 3),
                año = 1995:1997,
                salario = c(1000, 1200, 1599))
z


#Primer metodo
merge(x, merge(y, z))

#Segundo Método

merge(x, merge(y, z, all = TRUE), all = TRUE)

#Tercer Metodo utilizando Reduce

Reduce(function(x, y) merge(x, y), list(x, y, z))


