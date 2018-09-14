###Importando arquivos
#pricipais pacotes, precisam do JAVA como
#XLConnect
#xlsx
#rjava

#Requer Perl
#gdata


# readxl

install.packages('rJava', type = 'source')
install.packages('xlsx')
install.packages('XLConnect', dependencies = TRUE)
install.packages('readxl')
install.packages('gdata')
library(readxl)
library(rJava)
library(xlsx)
library(XLConnect)
library(gdata)

#Pacote readxl

#Lista as worksheet no arquivo Excel
excel_sheets('UrbanPop.xlsx') #mostra as worksheets

#Ler uma planilha do excel
read_excel('UrbanPop.xlsx')
head(read_excel('UrbanPop.xlsx'))
read_excel('UrbanPop.xlsx', sheet = 'Period2')
read_excel('UrbanPop.xlsx', sheet = 3)
read_excel('UrbanPop.xlsx', sheet = 4)

#importar a worksheet para um df

df<-read_excel('UrbanPop.xlsx', sheet = 3)
df

#importar todas de um vez apenas
df_todas<- lapply(excel_sheets('UrbanPop.xlsx'), read_excel, path = 'UrbanPop.xlsx' )
df_todas
class(df_todas)

#Pacote XLConnect

arq1 = XLConnect::loadWorkbook('UrbanPop.xlsx')
df1 = readWorksheet(arq1, sheet = 'Period1', header = TRUE)
df1
class(df)

#Pacote xlsx
df2 <- read.xlsx('UrbanPop.xlsx',
                  sheetIndex = 1)
df2
df3 <- read.xlsx('UrbanPop.xlsx',
                  sheetIndex = 1,
                  startRow = 2,
                  colIndex = 2)             
df3
df4<-readWorksheetFromFile('UrbanPop.xlsx',
                           sheet = 1,
                           startRow = 4,
                           endCol = 2)
df4
write.xlsx(df4, 'df4.xlsx', sheetName = 'Data Frame')
dir()
#Pacote gdata
arq1<- xls2csv('df4.xlsx',
               sheet = 1,
               na.strings = 'EMPTY')
