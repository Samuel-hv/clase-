# Carga de paquetes
library(tidyverse)
library(datos)

# Gráfico pregunta 1

# Analice las siguientes afirmaciones y responda las preguntas.
# 
# i)  El gráfico usado es estadísticamente válido.
# ii) El código no debe de modificarse.
# 
# a. i y ii son verdaderos.
# b. i es verdadero y ii falso.
# c. i es falso y ii verdarero.
# d. Ninguna de las anteriores es correcta.

ggplot(data = diamantes) +
  geom_bar(mapping = aes(x = corte))

# Gráfico pregunta 2

# ¿En qué valores para la variable "y" se encuentran los valores extremos? Responda
# esta pregunta usando el gráfico. Modifique el script de forma que se puedan visualizar

ggplot(diamantes) + 
  geom_histogram(mapping = aes(x = y), binwidth = 0.5) +
  ylim(c(0,50))

# Código pregunta 3

# Filtre los datos de forma que se puedan apreciar los extremos.
# ¿Cúal es el precio de las observaciones que son extremos?

inusual <- diamantes %>% 
  filter(y <  | y > ) %>% # Borrar los valores
  select(precio, x, y, z) %>%
  arrange(y)
inusual

# Gráfico pregunta 4

# Determine si las siguientes son falsas o verdaderas.
# 
# i.  Los diagramas de caja están ordenados según el valor del percentil 50.
# ii. Según el rango intercuartil, el grupo "pickup" es igual al "subcompacto"
# 
# a. i y ii son falsos.
# b. i es verdadero y ii es falso.
# c. i y ii son verdaderos.
# d. Todas las anteriores son incorrectas.

ggplot(data = millas) +
  geom_boxplot(mapping = aes(x = reorder(clase, autopista, FUN = median), y = autopista))