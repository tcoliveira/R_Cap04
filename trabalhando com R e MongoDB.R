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

coll <- 'users.contatos'
coll
#Contando os registros em uma collection
mongo.count(mongo, coll)

#Buscando um registro em uma coleção.
mongo.find.one(mongo, coll)
#Obtendo um vetor de valores distindo das chaves de uma coleção
res<- mongo.distinct(mongo, coll, 'city')
head(res)
#Obeter vetor de valores distintos das chaves de uma coleção
#gerar um histograma
pop<- mongo.distinct(mongo, coll,'pop')
hist(pop)
#Contando os elementos
nr<- mongo.count(mongo, coll, list('pop' = list('$lte' = 2)))
print(nr)

#Buscar todos os elementos
pops<-mongo.find.all(mongo, coll, list('pop' =list('$lte' =2)))
head(pops,2)
#Encerrando a conexão.
mongo.destroy(mongo)
#jsonlite criando e validadno um arquivo json
library(jsonlite)
json_arquivo<-'{"pop":{"$lte":2}, "pop":{"$gte":1}}'
cat(prettify(json_arquivo))
validate(json_arquivo)
