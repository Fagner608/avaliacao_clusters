# omitindo warnings
options(warn = -1)

# defindo diretório
setwd("Y:/FINANCEIRO/Fagner/Thais/Gerador de campanhas/src/EDA")

#libraries
library(readr)
library(dplyr)
library(tidyr)


# Carregando dados
## Amostra contendo dados dos últimos 30 dias

dados <- read_csv("y:/FINANCEIRO/Fagner/Thais/Gerador de campanhas/input_data/tendencia_frequencia_2.csv")

dados %>%
  group_by(cod_master, mes) %>%
  summarise(
    total_freq = sum(frequencia)
  ) %>% arrange(desc(total_freq))

