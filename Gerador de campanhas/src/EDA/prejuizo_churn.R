# omitindo warnings
options(warn = -1)

# defindo diretório
setwd("Y:/FINANCEIRO/Fagner/Thais/Gerador de campanhas/src/EDA")

# Carregando dados
## Amostra contendo dados dos últimos 30 dias
# definindo log de avisoa
options(warn = -1)

#libraries
library(readr)
library(dplyr)
library(tidyr)
library(ggplot2)
library(lattice)
library(patchwork)

# Carregando dados
## Amostra contendo dados dos últimos 30 dias

amostra_I <- read_csv("y:/FINANCEIRO/Fagner/Thais/Gerador de campanhas/input_data/amostra_mes_todo-1754315308449.csv")
dim(amostra_I)

churn <- amostra_I[!complete.cases(amostra_I), ]

## filtrando parceiros que tiveram produção em janeiro

churn <- churn[!is.na(churn$jan_prod) & is.na(churn$fev_prod) & is.na(churn$mar_prod)& is.na(churn$abr_prod)& is.na(churn$mai_prod)& is.na(churn$jun_prod)& is.na(churn$jul_prod), ]

churn


