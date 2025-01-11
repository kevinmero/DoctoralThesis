# Instalar y Cargar el paquete e1071
install.packages("e1071") 
library(e1071)
# Leer el archivo CSV (ajusta la ruta y el separador si es necesario) 
datos <- read.csv("C:/desempleo.csv", header = TRUE, sep = ";") 
# Calcular el coeficiente de asimetría para el Desempleo
asimetria <- skewness(datos$Desempleo)
# Imprimir el resultado 
print(paste("Coeficiente de asimetría Desempleo:", asimetria))
# Calcular e imprimir el coeficiente de asimetría para las demás variables
asimetria <- skewness(datos$Salario)
print(paste("Coeficiente de asimetría Salario:", asimetria))
asimetria <- skewness(datos$PIB)
print(paste("Coeficiente de asimetría PIB:", asimetria))
