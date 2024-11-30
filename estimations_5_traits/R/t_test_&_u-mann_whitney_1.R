# PRUEBA T

setwd("C:/Users/guill/OneDrive/Escritorio/RoBERTa-Personality-BigFive/estimaciones_5_rasgos/data")
library(readxl)
t_test <- read_excel("perfiles_tratamiento_control_1.xlsx")
View(t_test)

# Cargar la librería necesaria
library(stats)

# Separar los datos en dos grupos según el valor de Schumpeterian
grupo1 <- t_test[t_test$Schumpeterian == 1,]
grupo2 <- t_test[t_test$Schumpeterian == 0,]

# Realizar la prueba T para cada variable
variables <- c("EXT", "NEU", "AGR", "CON", "OPN")
for (var in variables) {
  t_result <- t.test(grupo1[[var]], grupo2[[var]])
  print(paste("Resultado de la prueba T para", var, ":"))
  print(t_result)
}

# U DE MANN WHITNEY

# Realizar la prueba U de Mann-Whitney para cada variable
variables <- c("EXT", "NEU", "AGR", "CON", "OPN")
for (var in variables) {
  u_result <- wilcox.test(grupo1[[var]], grupo2[[var]])
  print(paste("Resultado de la prueba U de Mann-Whitney para", var, ":"))
  print(u_result)
}

