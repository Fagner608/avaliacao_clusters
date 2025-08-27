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

amostra <- read_csv("y:/FINANCEIRO/Fagner/Thais/Gerador de campanhas/input_data/tendencia.csv")

amostra_limpa <- amostra[complete.cases(amostra), ]
dados_prod <- amostra_limpa[, c('jan_prod', 'fev_prod', 'mar_prod', 'abr_prod', 'mai_prod', 'jun_prod', 'jul_prod')]
dados_prod <- dados_prod %>%
  mutate(
    ret_fev = round(((fev_prod / jan_prod) - 1) * 100, 2),
    ret_mar = round(((mar_prod / fev_prod) - 1) * 100, 2),
    ret_abr = round(((abr_prod / mar_prod) - 1) * 100, 2),
    ret_mai = round(((mai_prod / abr_prod) - 1) * 100, 2),
    ret_jun = round(((jun_prod / mai_prod) - 1) * 100, 2),
    ret_jul = round(((jul_prod / jun_prod) - 1) * 100, 2),
  )

df_retorno <- dados_prod[, c("ret_fev", "ret_mar", "ret_abr", "ret_mai", "ret_jun")]
df_retorno$mean_var <- rowMeans(df_retorno)
index_outliers <- scale(df_retorno$mean_var) > 2
df_retorno <- df_retorno[!index_outliers, ]

# dataset com valores
df_valores <- dados_prod[, c('jan_prod', 'fev_prod', 'mar_prod', 'abr_prod', 'mai_prod', 'jun_prod', 'jul_prod')]
df_valores$mean_var <- rowMeans(df_valores)
index_outliers <- scale(df_valores$mean_var) > 2

df_valores_in <- df_valores[!index_outliers, ]
df_valores_out <- df_valores[index_outliers, ]


## função para retornar o desvio padrão de dados log-transformados
retorno_sd_des_logtransformtation <- function(log_mean, log_deviation){
  
  standart_deviation = sqrt((exp(log_deviation **2) - 1) * 
                              exp(2 * log_mean + log_deviation ** 2))
  
  return(standart_deviation)
  
}



