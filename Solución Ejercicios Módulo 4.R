install.packages("tidyverse")
library(tidyverse)

Spotify <- read_csv("songs_normalize.csv")

#### PUNTO 1. Gráfico de Dispersión ####

dispersion <- ggplot(Spotify, aes(x = danceability, y = valence)) +
  geom_point(color = "blue", alpha = 0.3)

#### PUNTO 2. Boxplot ####

boxplot <- ggplot(Spotify, aes(x = as.factor(mode), y = energy, color = as.factor(mode))) +
  geom_boxplot(show.legend = FALSE)

#### PUNTO 3. Composición con Patchwork ####

install.packages("patchwork")
library(patchwork)

dispersion + boxplot









