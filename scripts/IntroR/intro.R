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
