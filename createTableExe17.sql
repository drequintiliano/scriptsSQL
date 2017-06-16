# scriptsSQL
SQL studys

CREATE TABLE cliente1(
  codcliente int NOT NULL,
  nome varchar(50) NULL,
  area varchar(3) NULL,
  telefone varchar(30) NULL,
  saldo numeric(8,2) NULL,
 CONSTRAINT pk_cliente1 PRIMARY KEY (codcliente));
 

CREATE TABLE cliente_antigo(
	codcliente int NOT NULL,
	nome varchar(50) NULL,
	area varchar(3) NULL,
	telefone varchar(30) NULL,
	saldo numeric(8,2) NULL,
 CONSTRAINT pk_cliente_ant PRIMARY KEY (codcliente));
 
