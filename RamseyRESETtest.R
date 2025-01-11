# Instalar y cargar el paquete lmtest
install.packages("lmtest")
library(lmtest)
# Leer el dataset desempleo.csv
datos <- read.csv("C:/desempleo.csv", header = TRUE, sep = ";")
head(datos)
str(datos)
# Ajustar el modelo de regresión lineal
modelo <- lm(desempleo ~ Salario + PIB + Inflacion + FBCF, data = datos)
summary(modelo)
# Realizar la prueba general RESET de Ramsey
resultado_reset <- resettest(modelo)
print(resultado_reset)
# Probar términos cuadráticos y cúbicos
resettest(modelo, power = 2) 
resettest(modelo, power = 3)