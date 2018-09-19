#Transformação de Dados

install.packages('readr') #leitura de arquivos
install.packages('dplyr')#transformação de dados
library(dplyr)
library(readr)

searchpaths()

#Carregando um dataset
df_sono<-read_csv('sono.csv')
head(df_sono)
class(df_sono)
str(df_sono)

glimpse(df_sono) #pacote dplyr, mostra de forma rapida, resumida os dados
glimpse(mutate(df_sono, peso_libras = sono_total / 0.45359237))

count(df_sono, cidade)
hist(df_sono$sono_total)

#mostrasr o autocomplete
?sample_n
sample_n(df_sono, size=10) ##amostra

#função select
sleepdata<- select(df_sono, nome, sono_total)
head(sleepdata)
class(sleepdata)
select(df_sono, nome)
select(df_sono, nome:pais)

#filter()
filter(df_sono, sono_total>=16)
filter(df_sono, sono_total>=16, peso>=80)
filter(df_sono, cidade %in% c('Recife', 'Curitiba'))


#arrange() ---- %>% === serve para contatenar
df_sono%>% arrange(cidade) %>% head

df_sono %>%
  select(nome, cidade, sono_total)%>%
  arrange(cidade, sono_total)%>%
  head

df_sono %>%
  select(nome, cidade, sono_total)%>%
  arrange(cidade, sono_total)%>%
  filter(sono_total>=16)
df_sono %>%
  select(nome, cidade, sono_total)%>%
  arrange(cidade, desc(sono_total))%>%
  filter(sono_total>=16)

#mutate ----alterar o df, adicionar variaveis
head(df_sono)
df_sono%>%
  mutate(novo_indice = sono_total/peso)%>%
  head

df_sono%>%
  mutate(novo_indice = sono_total/peso,
         peso_libras = peso / 0.45359237)%>%
  head
head(df_sono)
#summarize() --- resumo

df_sono%>%
  summarise(media_sono = mean(sono_total))

df_sono%>%
  summarise(media_sono = mean(sono_total),
            min_sono = min(sono_total),
            max_sono = max(sono_total),
            total=n())
#group_by
df_sono%>%
  group_by(cidade)%>%
  summarise(avg_sono = mean(sono_total),
            min_sono = min(sono_total),
            max_sono = max(sono_total),
            total=n())


#instalando o pacote hflights() --- dados de voos do aeroporto de houston
install.packages('hflights')
library(hflights)
#criando um pacote tbl
##tbl_df são melhores de se ler

flights<-tbl_df(hflights)
flights

data.frame(flights)
