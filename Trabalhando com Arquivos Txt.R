##Trabalhando com Arquivos Txt

#usando as funções base do R(pacote utils)
search()

#importando arquivo com read.table()
?read.table
getwd()
df1<-read.table('pedidos.txt')
df1
dim(df1)
df1<-read.table('pedidos.txt', header = TRUE, sep = ',')
df1
dim(df1)
df1<-read.table('pedidos.txt', header = TRUE, sep = ',', col.names = c('var1','var2', 'var3'))
df1

df1<-read.table('pedidos.txt', header = TRUE, sep = ',', col.names = c('var1','var2', 'var3')
                , na.strings = c('Zico','Maradona'))
df1
str(df1)
df1<-read.table('pedidos.txt', header = TRUE, sep = ',', col.names = c('var1','var2', 'var3')
                , na.strings = c('Zico','Maradona'), stringsAsFactors = FALSE)
DF1
df1
str(df1)

#importando arquivo com read.csv()
df2<-read.csv('pedidos.txt')
df2
dim(df2)

#importando arquivo com read.csv2(), utiliza o ; como separador
df3<-read.csv2('pedidos.txt')
df3
dim(df3)

df3<-read.csv2('pedidos.txt', sep=',')
df3
dim(df3)

#importando usando read.delim()
df4<-read.delim('pedidos.txt', sep = ',')
df4

#tambem podemos utilizar o write.table para gerar arquivos txt, com separador espaço por padrão.

#gerando o arquivo
write.table(mtcars, file = 'mtcars.txt') #nesse caso, o espaço é o sepador padrão.
dir()
write.csv(mtcars, file = 'mtcars_1.txt') #nesse caso, o espaço é o sepador padrão.
dir()

df_mtcars <-read.table('mtcars.txt')
df_mtcars

write.table(mtcars, file = 'mtcars2.txt', sep='|', col.names = NA,qmethod = 'double')
read.table('mtcars2.txt')

#importando arquivos da internet

df_pedidos<-read.table
