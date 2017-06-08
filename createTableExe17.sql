# scriptsSQL
SQL studys

CREATE TABLE cliente1(
  codcliente int NOT NULL,
  nome varchar(50) NULL,
  area varchar(3) NULL,
  telefone varchar(30) NULL,
  saldo numeric(8,2) NULL,
 CONSTRAINT pk_cliente1 PRIMARY KEY (codcliente));
 
insert into cliente1 values (10010,'Alfredo Ramas',615,'844-2573',0);
insert into cliente1 values (10011,'Leona Dune',713,'844-2572',0);
insert into cliente1 values (10012,'Kathy Smith',615,'844-2571',345.86);
insert into cliente1 values (10013,'Paul Olowski',615,'844-2570',536.75);
insert into cliente1 values (10014,'Myron Orlando',615,'844-2574',0);
insert into cliente1 values (10015,'Amy Brian',713,'844-2575',0);
insert into cliente1 values (10016,'James Brown',615,'844-2576',221.19);
insert into cliente1 values (10017,'George Willians',615,'844-2577',768.93);
insert into cliente1 values (10018,'Anne Farris',713,'844-2578',216.55);
insert into cliente1 values (10019,'Olete Smith',615,'844-2579',0);

CREATE TABLE cliente_antigo(
	codcliente int NOT NULL,
	nome varchar(50) NULL,
	area varchar(3) NULL,
	telefone varchar(30) NULL,
	saldo numeric(8,2) NULL,
 CONSTRAINT pk_cliente_ant PRIMARY KEY (codcliente));
 
 insert into cliente_antigo values (10020,'Eduardo Ramas',615,'844-2573',0);
insert into cliente_antigo values (10021,'Mary Dune',713,'844-2572',0);
insert into cliente_antigo values (10022,'Marina Smith',615,'844-2571',345.86);
insert into cliente_antigo values (10023,'Paul da Silva Sauro',615,'844-2570',536.75);
insert into cliente_antigo values (10024,'Orlando Reis',615,'844-2574',0);
insert into cliente_antigo values (10025,'Brian da Silva',713,'844-2575',0);
insert into cliente_antigo values (10026,'James Bond',615,'844-2576',221.19);
insert into cliente_antigo values (10027,'George Willians',615,'844-2577',768.93);
insert into cliente_antigo values (10028,'Anne Farris',713,'844-2578',216.55);
insert into cliente_antigo values (10029,'Olete Smith',615,'844-2579',0);
