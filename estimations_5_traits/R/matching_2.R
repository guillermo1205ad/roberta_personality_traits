setwd("C:/Users/guill/OneDrive/Escritorio/RoBERTa-Personality-BigFive/estimaciones_5_rasgos/data")
library(readxl)
df <- read_excel("world_billionaires_list_2023_muestra_2.xlsx")
View(df)

# Cargar las bibliotecas necesarias
library(MatchIt)

#install.packages("cobalt")
library(cobalt)

# Definir la fórmula para el modelo de Propensity Score
fórmula <- schumpeterian ~ developed_country + woman + married + higher_education + x_english

# Realizar el Propensity Score Matching
m.out <- matchit(fórmula, data = df, method = "nearest")

# Verificar la calidad del matching
summary(m.out)

# Crear gráficos para visualizar el balance
love.plot(m.out)

# Realizar pruebas de hipótesis para verificar el balance
bal.tab(m.out, un = TRUE)

# Indices del match
matched_indices <- m.out$match.matrix
treatment_indices <- m.out$match.matrix[,1]
treatment_indices


# Indices de tratamiento

tratamiento <- c(62,63,64,65,66,67,68,69,70,71,72,73,
                 74,75,76,77,78,79,80,81)


# Indices de control
control <- c(61,57,40,55,56,58,44,47,54,41,33,59,31,29,
              60,34,18,11,52,27)

# Asegurar que los vectores de tratamiento y control tienen la misma longitud
if (length(tratamiento) == length(control)) {
  # Crear un dataframe con los nombres emparejados
  df_pareado <- data.frame(Tratamiento = df$name[tratamiento], Control = df$name[control])
  print(df_pareado)
} else {
  print("Los vectores de tratamiento y control no tienen la misma longitud.")
}

View(df_pareado)

# Cargar el paquete writexl
library(writexl)

# Guardar df_pareado como un archivo .xlsx
write_xlsx(df_pareado, "match_psm_2.xlsx")
