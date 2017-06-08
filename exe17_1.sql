# scriptsSQL
SQL studys

select * from movantigos

1)
select nmcliente, endcliente, telcliente from exclientes

2)
create table cliente17
(cdcliente varchar2(5) not null
,nmcliente varchar2(50)
,endcliente varchar2(50)
,telcliente varchar2(30)
,rgcliente  varchar2(10)
,cpdcliente varchar2(15)
,sexocliente char(1)
,constraint pk_cliente primary key (cdcliente));

insert into cliente17 (cdcliente, nmcliente, endcliente, telcliente, rgcliente, cpdcliente,sexocliente) 
values ('10101','PINDA JOSE','R. Acacias, 247','323-0666','42079088','76876878','M');
insert into cliente17 (cdcliente, nmcliente, endcliente, telcliente, rgcliente, cpdcliente,sexocliente) 
values ('20202','MARIA JOSE','R. BANDIDA, 247','329-0666','44579088','76800878','F');

select nmcliente, endcliente, telcliente from cliente17
union 
select nmcliente, endcliente, telcliente from exclientes

3)
select nmcliente, endcliente, telcliente from cliente17
where sexocliente = 'F'
union
select nmcliente, endcliente, telcliente from exclientes
where sexocliente = 'F'

4)
select nrconta from movsantigos
minus
select nrconta from movimentos

5)
select nrconta from movimentos
intersect
select nrconta from movsantigos
