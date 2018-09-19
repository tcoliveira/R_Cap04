show databases;
create database titanicDB;
use titanicDB;



create database cadastroDB;
use cadastroDB;
show databases;
show tables;
create table FUNCIONARIOS(
	ID INT NOT NULL,
    NOME varchar(20) NOT NULL,
    IDADE INT NOT NULL,
    CIDADE CHAR(25),
    SALARIO DECIMAL(18,2),
    PRIMARY KEY(ID)
);

desc funcionarios;

insert into funcionarios(ID, NOME, IDADE, CIDADE, SALARIO)
VALUES(1,'pele', 32, 'Roma', 200.00);
insert into funcionarios(ID, NOME, IDADE, CIDADE, SALARIO)
VALUES(2,'zico', 25, 'Paris', 1500.00);
insert into funcionarios(ID, NOME, IDADE, CIDADE, SALARIO)
VALUES(3,'Rivelino', 32, 'Santiago', 4000.00);
insert into funcionarios(ID, NOME, IDADE, CIDADE, SALARIO)
VALUES(4,'Garrincha', 25, 'Vienna', 6500.00);
insert into funcionarios(ID, NOME, IDADE, CIDADE, SALARIO)
VALUES(5,'jair', 32, 'Roma', 2000.00);

select * from funcionarios;



update funcionarios
set cidade = 'boston'
where id = 5;

use titanicDB;
show tables;
CREATE TABLE titanic (
	pclass		 char(3),
	survived		 char(1),   
	name		 varchar(100),
	sex			 char(6),
	age			 char(11),
	sibsp		 varchar(16),
	parch		 varchar(16),
	ticket		 varchar(20),		
	fare		 	 varchar(100),
	cabin		 varchar(16),
	embarked	 varchar(12),
	boat			 varchar(50),
	body		 varchar(32),
	home_dest	 varchar(200)
);

SET GLOBAL local_infile = 'ON';
SHOW VARIABLES LIKE 'local_infile';
use titanicDB;
LOAD DATA LOCAL INFILE 'titanic.csv' 
INTO TABLE titanic 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

# Instruções select
select name, age, sex, pclass from titanic where age > 70;
select name, age from titanic where age > 70;
select pclass, survived, avg(age) as media from titanic group by pclass, survived;


# Cria outro banco de dados
CREATE DATABASE cadastroDB;

# Habilita a sessão para o banco de dados
use cadastroDB;

# Cria tabela
CREATE TABLE FUNCIONARIOS(
   ID   INT              NOT NULL,
   NOME VARCHAR (20)     NOT NULL,
   IDADE  INT              NOT NULL,
   CIDADE  CHAR (25) ,
   SALARIO   DECIMAL (18, 2),       
   PRIMARY KEY (ID)
);

# Descreve a tabela
DESC FUNCIONARIOS;

# Instruções insert
INSERT INTO FUNCIONARIOS (ID,NOME,IDADE,CIDADE,SALARIO)
VALUES (1, 'Pele', 32, 'Roma', 2000.00 );

INSERT INTO FUNCIONARIOS (ID,NOME,IDADE,CIDADE,SALARIO)
VALUES (2, 'Zico', 25, 'Paris', 1500.00 );

INSERT INTO FUNCIONA