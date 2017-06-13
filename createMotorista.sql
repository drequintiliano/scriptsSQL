create table Motorista
(cartHab           number(6)    primary key,
 nomeMot           varchar2(30),
 dataNasc          date,
 dataEmissao       date,
 endereco          varchar2(30),
 tipo_habilitacao  char(1),
 situacao          varchar2(15));
 
 Create table Veiculo
(placaVeic  char(7)  primary key,
 Modelo     varchar2(25),
 marca      varchar2(10),
 ano        int,
 cor        varchar2(15)); 
 
 Create table Multa
(codMulta       number(5)  primary key,
 cartHab        number(6)  references Motorista,
 placaveiculo   char(7)     references Veiculo,
 dataMulta      date,
 tipoMulta      varchar2(15),
 valorMulta     number(6,2),
 pontosMulta     number(3));

 