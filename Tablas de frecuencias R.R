
# ___________ tablas de frecuencia____________
# 1.-Importar la matriz iris

data("iris")

# 2.-Exploracion de la matriz
# dimension de la tiene 150 individuos y 5 variables 
dim(iris)

# 3.-nombre de las variables
colnames(iris)

# 4.-tipos de variables
str(iris)

# 5.-visualizacion de una variables especifica
iris$Species

# 6.-en busca de valores perdidos
anyNA(iris)


# -------------------------------------------------
#         Generacion de tablas de frecuencia
# -------------------------------------------------

# 1.-posicion en una variable especifica petal.leght indico que 
# el nombre me lo acorte a PL, lo que resulte de esa indicacion quiero que 
# lo ponga en formato tabla, lo que resulte adquiera un formato de data.frame
# apartir de lo anterior, voy a generar una nueva variable (objeto) llamada
# tabla_PL. 
tabla_PL<-as.data.frame(table(PL=iris$Sepal.Length))

# 2.-frecuencia absoluta
tabla_PL

# 3.- se construye la tabla de frecuencias completas redondeando
# a tres decimales.

transform(tabla_PL, 
          freqAc=cumsum(Freq),
          Rel=round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))


# 4.-agrupacion de variables 8 clases
tabla_Clases<-as.data.frame(table(petal.lenght=factor(cut(iris$Petal.Length,
                                                          breaks = 8))))

# 5.-visualizacion de la tabla
tabla_Clases

# 6.-construccion de la tabla de frecuencias completa redondeado a 3 decimales
tabla<-transform(tabla_Clases,
                 freqAc=cumsum(Freq),
                 Rel=round(prop.table(Freq),3),
                 RelAc=round(cumsum(prop.table(Freq)),3))

# 7.-visualizar la tabla
tabla
