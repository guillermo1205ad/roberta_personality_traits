# install.packages("dplyr")

# Cargar el paquete dplyr
library(dplyr)

# Filtrar las filas donde schumpeterian es 0
df0 <- world_billionaires_list_2023_muestra_1 %>% filter(schumpeterian == 0)

# Filtrar las filas donde schumpeterian es 1 y seleccionar 20 filas al azar
df1 <- world_billionaires_list_2023_muestra_1 %>% filter(schumpeterian == 1) %>% sample_n(20)

# Combinar los dos dataframes para crear world_billionaires_list_2023_muestra_2
world_billionaires_list_2023_muestra_2 <- rbind(df0, df1)

View(world_billionaires_list_2023_muestra_2)
