#variables
var = 5

var2 = 'hola'

edad <- 10

#operaciones
10*10

10+10

10-10

10/10

10^2
10**2

#condicionales
10 > 5 || 10 < 6

10 > 5 & 10 < 6

name = 'jonatan'

'Jonatan' == name

if(10>5 & 10>100){
  print('Hola')
}

#listas
edades <- c(21,22,22,22,22,22,23,24,24,25,25,25,26,33,44,43,21,56,78,54)

edades[20]

mean(edades)

help("mean")

min(edades)

max(edades)

#comprobar
a = sd(edades)
b = var(edades)
b = sqrt(b)

a == b

#acomodar los elementos
sort(edades)

#Tarea 01 modulo 2:
# 1. crear una funcion que calcule la MODA de un vector
# 2. crear una funcion que calcule la MEDIANA de un vector

#ciclos
salario <- c(8000,8300,6000,18000,17000,35000,24000)
length(salario)
max(salario)


##### metodo 1
maximo <- salario[1]

for(i in 1:length(salario)){
  if(salario[i] > maximo){
    maximo <- salario[i]
  }
}

print(maximo)

#metodo 2
maximo <- salario[1]
indice <- 1

while(indice < length(salario)){
  for(i in indice:length(salario)-1){
    a <- salario[i] - salario[i+1]
    if(a<0){
      maximo <- salario[i+1]
      indice <- i+1
      break
    }
  }
}

print(maximo)

#funciones

sumar <- function(lista){
  total = 0
  for(s in lista){
    total = total + s
  }
  return(total)
}

sumar(salario)

sumar(edades)

####### REPASO
a <- 1

5 > 6

espectadores <- c(100,86,76,67,62,53)

for(e in espectadores){
  print(e)
}

for(i in 1:length(espectadores)){
  print(espectadores[i])
}

#INPUTS
edad <- 17
sexo <- 'M' #M / F

#ALGORITMO
if(sexo == 'M'){
  if(edad >= 18){
    estado <- 'aceptado'
  }else{
    estado <- 'rechazado'
  }
}else{
  if(edad >= 16){
    estado <- 'aceptado'
  }else{
    estado <- 'rechazado'
  }
}
#RETURN / OUTPUT
print(estado)

antro <- function(edad,sexo){
  if(sexo == 'M'){
    if(edad >= 18){
      estado <- 'aceptado'
    }else{
      estado <- 'rechazado'
    }
  }else{
    if(edad >= 16){
      estado <- 'aceptado'
    }else{
      estado <- 'rechazado'
    }
  }
  print(estado)
}

#aplicar una funcion a un conjunto
edades <- c(12,16,24,17)
sexos <- c('F','F','M','M')

datos <- data.frame(
  'edad' = edades,
  'sexo' = sexos
)

for(i in 1:dim(datos)[1]){
  antro(datos[i,1],datos[i,2])
}

#mi primera grafica en R
edades <- c(22,23,25,26,21,17,34,28,23,24,27,76,65,45,87,43,54)

salary <- function(edad){
  s <- 6000 + (edad-18)*500 + rnorm(length(edad),0,1500)
  return(s)
}

salario_model <- salary(edades)

plot(edades,salario_model)

#TAREA

#mi primera simulacion
# 10 personas
# 3 variables correlacionadas a una variable de control
# para cada variable, graficar la correlacion

edades <-seq(0,100,5)
edades
