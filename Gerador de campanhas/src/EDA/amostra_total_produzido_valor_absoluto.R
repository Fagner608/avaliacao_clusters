# defindo diretório
setwd("Y:/FINANCEIRO/Fagner/Thais/Gerador de campanhas/src/EDA")

# script com dados
source("./carga.R")

library(tidyr)
library(dplyr)

dados_prod


hist(log(dados_prod$jun_prod))
