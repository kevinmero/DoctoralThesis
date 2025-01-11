# Instalar y cargar el paquete tseries 
install.packages("tseries") 
library(tseries)
# Leer el dataset desempleo.csv
datos <- read.csv("C:/desempleo.csv", header = TRUE, sep = ";") 
# Convertir los datos de la tasa de desempleo en una serie temporal mensual 
desempleo_ts <- ts(datos$Desempleo, start = c(2002, 1), frequency = 12)
# Realizar la prueba ADF (Dickey-Fuller aumentada)
adf_result <- adf.test(desempleo_ts) 
print(adf_result)
