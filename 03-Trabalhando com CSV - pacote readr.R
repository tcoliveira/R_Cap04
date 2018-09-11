#trabalhando com arquivos csv

#usando o readr
install.packages('readr')
library(readr)

#Abre o prompt para escolher o arquivo, função file.choose
meu_arquivo<-read_csv(file.choose())
meu_arquivo<-read_delim(file.choose(), sep = '|')

#importando arquivos
df1<-read_table('temperaturas2.txt',
                col_names= c('DAY','MONTH', 'YEAR', 'TEMP'))
write.table(df1, file = 'temperaturas.txt')
head(df1)
str(df1)
read_lines('temperaturas.txt', skip=0, n_max = 1)
read_file('temperaturas.txt')

#Exportando e Importando
write_csv(iris, 'iris.csv')
dir()

df_iris <-read_csv('iris.csv', col_types = list(
  Sepal.Length = col_double(),
  Sepal.Width = col_double(),
  Petal.Length = col_double(),
  Petal.Width = col_double(),
  Species = col_factor(c('setosa', 'versicolor', 'virginica'))
))
head(iris)
dim(df_iris)
str(df_iris)

#Importando diretamente da internet

df_cad<-read.csv('http://datascienceacademy.com.br/blog/aluno/RFundamentos/Datasets/Parte3/cadastro.csv')
head(df_cad)
install.packages('dplyr')
library(dplyr)

df_cad <- tbl_df(df_cad)
head(df_cad)
View(df_cad)
write.csv(df_cad, 'df_cad_bkp.csv')
getwd()
#importando vários arquivos simultaneamente
list.files()
lista_arquivos <-list.files("C:/Users/BI/Documents/Data Science - Curso/RFundamentos_git/R_Cap04", full.names = TRUE)
class(lista_arquivos)
lista_arquivos
lista_arquivos2 <- lapply(lista_arquivos, read_csv)
problems(lista_arquivos2)
??problems
search()
#Parsing
parse_date('01/02/15', '%m%d%y')
?parse_date
??parse_date
library(readr)
??problems

locale('en')
locale('pt')

install.packages('bigmemory')
library(bigmemory)
?bigmemory
bigdata<-read.big.matrix(filename = 'http://datascienceacademy.com.br/blog/aluno/RFundamentos/Datasets/Parte3/cadastro.csv',
                         sep = ',',
                         header = TRUE,
                         skip = 1)
