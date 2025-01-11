# Leer el dataset desempleo.csv
datos <- read.csv("C:/desempleo.csv", header = TRUE, sep = ";")
head(datos)
str(datos)
# Convertir la columna 'desempleo' en una serie temporal mensual
desempleo_ts <- ts(datos$Desempleo, start = c(2002, 1), frequency = 12)
head(desempleo_ts)
# Descomposición aditiva
desempleo_descomposicion <- decompose(desempleo_ts, type = "additive")
plot(desempleo_descomposicion)
# Descomposición con stl
desempleo_stl <- stl(desempleo_ts, s.window = "periodic")
plot(desempleo_stl)
