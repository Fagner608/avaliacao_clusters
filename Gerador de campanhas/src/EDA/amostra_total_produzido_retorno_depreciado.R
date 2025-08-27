# defindo diretório
setwd("Y:/FINANCEIRO/Fagner/Thais/Gerador de campanhas/src/EDA")

# script com dados
source("./carga.R")

library(tidyr)
library(dplyr)

#### buscando métricas de total produzido por usuário
head(data_without_outliers)

total_prod <- data_without_outliers[, c("total_prodizido", "total_prodizido_log")]
hist(scale(total_prod$total_prodizido_log))
abline(v = 8.814)
plot(x = total_prod$total_prodizido, y= total_prod$total_prodizido)


summary(total_prod$total_prodizido_log)
exp(8.814)
sd(total_prod$total_prodizido_log)

## claculando desvios
total_prod %>%
  summarise(
    mu = mean(total_prodizido_log),
    sigma = sd(total_prodizido_log),
    media = exp(mu),
    desvio = exp(mu + 0.5 * sigma**2) * sqrt(exp(sigma**2)-1),
    sd_1 = exp(mu + sigma),
    sd_2 = exp(mu + 2 * sigma),
    sd_3 = exp(mu + 3 * sigma)
  )


df_retorno %>% arrange(desc(mean_var))
