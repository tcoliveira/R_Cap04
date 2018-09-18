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
