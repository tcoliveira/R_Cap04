#R e MongDB
#Criando collection in MongoDB

## mongoimport --db users --collection contatos --type json --file "C:/Users/BI/Documents/Data Science - Curso/RFundamentos_git/R_Cap04/zips.json"
install.packages('devtools')
library(devtools)
install_github('mongosoup/rmongodb')
library(rmongodb)

#Criando a conexão
help('mongo.create')
mongo<-mongo.create()
mongo
#Checnadk a conexão

mongo.is.connected(mongo)
if(mongo.is.connected(mongo)==TRUE){
  mongo.get.databases(mongo)
}
  