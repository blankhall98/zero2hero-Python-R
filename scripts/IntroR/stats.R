#Informacion Real
num_class <- c(1:8)
views <- c(284,133,108,109,77,39,43,35)
likes <- c(12,6,2,3,2,3,1,1)

datos <- data.frame(
  'class' = num_class,
  'views' = views,
  'likes' = likes
)

#Analisis de los datos

# ---------- Analisis de correlacion
#relacion numero de clase con visualizaciones
plot(num_class,views)

#relacion numero de clase con likes
plot(num_class,likes)

#relacion views con likes
plot(views,likes)

# ---------- Regresion Lineal
pairs(datos)

cor(datos)

#estimar views con numero de clase
modelo <- lm(views ~ class, data = datos)
summary(modelo)

plot(datos$class,datos$views)
abline(modelo)

test.class <- data.frame(class = c(1:16))
pred <- predict(modelo,test.class)
pred

plot(pred)

#regresion con datos exponenciales
log_views <- log(views)

datos['log_views'] <- log_views

plot(num_class,views)
plot(num_class,log_views)

modelo_log <- lm(log_views ~ class, data=datos)
summary(modelo_log)

plot(num_class,log_views)
abline(modelo_log)

predict_views <- function(class){
  y = exp(5.67447)*exp(-0.28219*class)
  return(y)
}

predicciones <- predict_views(c(1:16))
plot(c(1:16),predicciones,col='red')
points(num_class,views)

