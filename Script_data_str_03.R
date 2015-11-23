#---------------------------------------------------#
#----------    Estructuras de datos en R  ----------#
# MS-PLUS Consultores
# Noviembre 2015
#---------------------------------------------------#


# Estructuras de Datos
x <- 5
x
y <- "SSL"
y

# Vectores atómicos
vec <- c(1, 2)
vec

# Tipos de vectores atómicos
dbl_vec <- c(3.5, 2, -1) 
int_vec <- c(3L, 7L, 1L)
chr_vec <- c("Source", "Stat", "Lab")
log_vec <- c(FALSE, TRUE, F, T)

# Tipos y Tests
vec <- c(3.5, 2, -1)
is.character(vec)
is.double(vec)

vec <- c(TRUE, FALSE, F)
is.integer(vec)
is.logical(vec)

vec <- c(1, 2, -1.2)
is.numeric(vec)

vec <- c(3L, 7L, 1L)
is.numeric(vec)


# Elementos de un vector atómico
vec <- c(6, 1, 3, 6, 10, 5)
vec[5]

vec[c(2, 4)]

vec <- c(6, 1, 3, 6, 10, 5)
vec[-5]
vec[-c(2, 4)]

vec[-c(1, 2, 3)]
vec[-(1:3)]

# Generación de secuencias
1:10
5:-5

seq(from = 1, to = 10, by = 0.5)
seq(from = -4, to = 4, length = 5)

vec <- c(6, 1, 3, 6, 10, 5)
vec[2:5]

vec <- c(6, 1, 3, 6, 10, 5)
vec[-(1:4)]


#------------- Ejercicios vector atómico
## Genere el vector x de elementos 1.5, 3, 6 , -3.7
# Es de tipo entero?
# Es de tipo double?
# Encuentre su longitud? (use función length())
## Genere el vector y de elementos 7.6, 3, 1.6, 4, -3
# Extraer el elemento 3
# Extraer los elementos 1, 2, 3, 4
# Extraer los elementos 2, 4
# Omitir los elementos 1, 3, 5
# Omitir los elementos del 3 al 5

vec <- c(6, 1, 3, 6, 10, 5)
vec[c(FALSE, TRUE, FALSE, TRUE, FALSE, TRUE)]

vec[c(2, 4, 6)]

#------------------- Ejercicios vector atómico
# Genere el vector w de elementos 7.6, 3, 1.6, 4, -3, mediante TRUE, FALSE:
# Extraer el elemento 3
# Extraer los elementos 1, 2, 3
# Extraer los elementos 2, 4
# Extraer los elementos 1, 3, 5

# Operaciones con vectores numéricos
a <- c(2, 2, 1, 1)
b <- c(1, 0, 1, 0)
a+b
a-b

a <- c(2, 2, 1, 1)
b <- c(1, 2, 3, 0)
ab
a/b

a <- c(1, 2, 3, 4)
a^2

b <- c(1, 2, 4, 9)
sqrt(b)

d <- c(1, -2, 0, -3.2)
abs(d)

a <- c(1, 2, 3)
exp(a)
log(a)

b <- exp(log(a))
b


# Operaciones con vectores lógicos
x <- c(TRUE, TRUE, TRUE)
all(x)
y <- c(TRUE, FALSE, TRUE)
all(y)

x <- c(FALSE, FALSE, FALSE)
any(x)
y <- c(FALSE, TRUE, FALSE)
any(y)

x <- c(TRUE, FALSE, TRUE)
!x

x <- c(TRUE, TRUE, FALSE)
y <- c(FALSE, TRUE, TRUE)
x & y
x && y # conjuncion para escalares

x <- c(TRUE, TRUE, FALSE)
y <- c(FALSE, TRUE, TRUE)
x | y
x || y # disyuncion para escalares

x <- c(TRUE, TRUE, FALSE, TRUE, FALSE) 
sum(x) # número total de TRUEs 
mean(x) # porcentaje de TRUEs
sum(x)/length(x)


# Test de igualdad y desigualdad
x <- c(3, 5, 2, 3, 1)
x==3
y <- x==3 # componenetes iguales a 3
z <- x!=3 # componenetes distintas a 3
data.frame(x, y, z)

x[x!=3] # componenetes de x distintas a 3




# Coerción
vec <- c("ssl", 12, TRUE, FALSE)
typeof(vec)

vec <- c(0.5, 2L, TRUE, FALSE)
typeof(vec)


# Coerción - Funciones "as"
vec <- c(1.7, 5, 8.2, 15.1)
vec1 <- as.character(vec)
vec1
typeof(vec1)

vec <- c(FALSE, TRUE, FALSE, TRUE, TRUE) 
vec1 <- as.character(vec)
vec1

vec <- c(FALSE, TRUE, FALSE, TRUE, TRUE) 
vec1 <- as.double(vec)
vec1
sum(vec) ; mean(vec)

vec <- c("15", "Sin Info", "25", "-")
vec1 <- as.double(vec)
vec1

vec <- c("FALSE", "TRUE", "Sin Info", "-", "TRUE") 
vec1 <- as.logical(vec)
vec1

vec <- c(1, 0, 17, 3.5, 0)
vec1 <- as.logical(vec)
vec1

# Vectores anidados
c(c(1, 2), c(3, 4, 5))
c(1, 2, 3, 4, 5)

# Listas
lst <- list(c(1, 2), c(TRUE), c("a", "b", "c"))
lst

lst <- list(1:3, c("Source", "Stat", "Lab"), c(TRUE, FALSE), c(1.3, 4.5))
typeof(lst)
is.atomic(lst)
is.list(lst)

# coerción
lst <- c("ssl", 4, 0.5)
as.list(lst)

lst <- list(1:3, c("Source", "Stat", "Lab"), c(TRUE, FALSE), c(1.3, 4.5))
unlist(lst)


# Elementos de una lista
lst <- list(c(1, 2), c(TRUE), c("a", "b", "c"))
lst[1]
lst[[1]]


lst <- list(v=1:3, w=c("Source", "Stat", "Lab"), x=c(TRUE, FALSE), y=c(1.3, 4.5))
lst$w
lst[[2]]


# Listas vs vectores atómicos
lst <- list(list(c(1,-5), c("a", "b")), list("Source", "Stat"))
str(lst)

c(c(1, 2), c(3,4))  ;  c(1, 2, 3, 4)


# Atributos 
# Vector sin el atributo names
vec <- c(3, 6, -1, 0.5)
attributes(vec)

# Vector con el atributo names
vec <- c(a=3, b=6, c=-1, d=0.5)
attributes(vec)

# Lista sin el atributo names
lst <- list(1:3, c("Source", "Stat", "Lab"), c(TRUE, FALSE))
attributes(lst)

# Lista con el atributo names
lst <- list(nomb1=1:3, nomb2=c("Source", "Stat", "Lab"), nomb3=c(TRUE,FALSE))
attributes(lst)


# Vector con el atributo names
vec <- c(a=3, b=6, c=-1, d=0.5)
is.vector(vec)

# Lista con el atributo names
lst <- list(nomb_obj1=1:3, nomb_obj2=c("Source", "Stat", "Lab"), nomb_obj3=c(TRUE,FALSE))
is.vector(lst)


# Matrices 
mtx <- matrix (1:12,nrow=3, ncol=4, byrow=FALSE)
# se construye por columnas por default (byrow=FALSE)
mtx
attributes(mtx)

mtx <- 1:12
mtx
dim(mtx) <- c(3,4)
mtx

mtx <- matrix (1:12, nrow=3, ncol=4, byrow=FALSE)
dim(mtx)

# Elementos de una matriz 

mtx <- matrix (1:12, nrow=3, ncol=4, byrow=FALSE)
mtx
mtx[1,2] # componente 1, 2
mtx[,3]  # columna 3
mtx[1,]  # fila 1
mtx[,c(2,4)] # columnas 2 y 4
mtx[c(1,3),]  # filas 1 y 3
mtx[,c(FALSE, TRUE, TRUE, FALSE)] # columnas 2 y 4
mtx[c(TRUE, FALSE, TRUE),]  # filas 1 y 3


# Factores
vec <- c(1, 2, 2, 1, 2, 1, 2)
vec

fac <- factor(vec, levels=c(1,2), labels = c("Femenino", "Masculino"))
fac


vec <- c("Femenino","Masculino","Masculino","Femenino","Masculino",
         "Femenino","Masculino")
vec

fac <- factor(vec, levels= c("Femenino", "Masculino"), labels=c("FEM", "MASC"))
fac


vec <- c(1, 2, 2, 1, 2, 1, 2)
fac <- factor(vec, levels=c(1,2), labels = c("Femenino", "Masculino"))
# Atributos de un factor
attributes(fac)

# eliminación del atributo class
unclass(fac)
# frecuencias
table(fac)
# porcentaje
prop.table(table(fac))


# Data Frame
dbl_vec <- c(1, 2, 3)
chr_vec <- c("R", "S", "T")
log_vec <- c(TRUE, FALSE, TRUE)

df <- data.frame(dbl_vec, chr_vec, log_vec)
df
typeof(df) # Tipo de un data frame
class(df)
attributes(df)
names(df)
colnames(df)
rownames(df)
dim(df)
nrow(df)
ncol(df)


# Elementos de un data frame 
nomb <- c("John", "Paul", "George", "Ringo")
nac <- c(1940, 1941, 1943, 1940)
instr <- c("guitar", "bass", "guitar", "drums")

df <- data.frame(nomb, nac, instr)
df
df[2, c(2,3)]
df[2, 2] # componente 2, 2
df[3, 1] # componente 3, 1
df[3, ] # fila 3
df[c(1, 4), ] # filas 1, 4
df[c(TRUE, TRUE, FALSE, TRUE), ] # equivalente a  df[c(1, 2, 4), ]

# Importante: Reciclado
df[c(TRUE, FALSE), ] # equivalente a  df[c(1, 3), ]

# Importante: Filtrado o subsetting

df[ , 3]=="guitar" # columna 3 de df igual a "guitar"
f_guitar <- df[ , 3]=="guitar" 
df[f_guitar, ]

df[ , 2] # columna 2
df[ , c(1, 3)] # columnas 1, 3
df[ , "nac"] # equivalente a df[ , 2]
df[ , c("nomb", "nac")] # equivalente a df[ , c(1, 2)]

df[ , c(TRUE, FALSE, TRUE)] # equivalente a  df[ , c(1, 3)]
df[ , c(TRUE, FALSE)] # equivalente a  df[ , c(1, 3)]


# R Data Frame 
data(mtcars)
View(mtcars)

# n primeras filas
head(mtcars,n = 2)
# n últimas filas
tail(mtcars,n = 2)

attributes(mtcars)
names(mtcars)
colnames(mtcars)
rownames(mtcars)

# Dimensión
dim(mtcars)
# Número columnas
ncol(mtcars)
# Número filas
nrow(mtcars)


# Función structure 
str(mtcars)

# Missing Values
# NA Not Available. Dato pérdido.
x <- c(NA, 3.2, NA, 5, NA)
x

# NaN Not a Number. Resultado de una indeterminación 0/0, Inf/Inf, Inf0.
y <- c(-1, 0/0, 0.8, 5, Inf0)
y

x <- c(0, 3.2, NA, 5, NA)
is.na(x)

y <- c(-1, 0/0, 5, Inf0)
is.nan(y)