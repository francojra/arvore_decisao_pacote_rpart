
# Árvore de decisão - Pacote rpart ---------------------------------------------------------------------------------------------------------
# Autoria do script: Jeanne Franco ---------------------------------------------------------------------------------------------------------
# Data: 03/08/22 ---------------------------------------------------------------------------------------------------------------------------
# Referência: https://www.youtube.com/watch?v=Lf_EUSKt1R4 ----------------------------------------------------------------------------------

# Pacotes necessários ----------------------------------------------------------------------------------------------------------------------

library(readxl)
library(rpart)
library(rpart.plot)
library(tidyverse)

# Carregar dados ---------------------------------------------------------------------------------------------------------------------------

titanic <- "https://gitlab.com/dados/open/raw/master/titanic.csv" %>%
  read_csv %>% 
  select(survived, embarked, sex, 
         sibsp, parch, fare) %>%  
  mutate(
    survived = as.factor(survived),
    embarked = as.factor(embarked),
    sex = as.factor(sex)) 
head(titanic)
