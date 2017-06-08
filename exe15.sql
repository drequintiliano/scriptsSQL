# scriptsSQL
SQL studys

A)
select          e.ultimo_nome, 
                d.iddepto, 
                d.nomedepto
from            empregado e 
left outer join departamento d
on              (d.IDDEPTO = e.IDDEPTO);
 
B)
select     distinct c.nomecargo
from       cargo1 c 
inner join empregado e
on         (c.idcargo = e.idcargo 
and        e.iddepto = 80);
 
C)
select     (e.primeiro_nome ||' '||e.ultimo_nome) as primeiro_nome, 
           d.nomedepto, 
           l.endereco, 
           l.cidade
from       empregado e
inner join departamento d on (d.IDDEPTO = 80)
inner join localizacao l 
on         (l.IDLOCALIZACAO = d.IDLOCALIZACAO)
where      e.perccomissao is not null 
and        e.iddepto is not null;
 
D)
select          e.ultimo_nome, 
                d.nomedepto
from            empregado e 
left outer join departamento d
on              (e.IDDEPTO = d.IDDEPTO)
where           e.ultimo_nome like '%a%'
order by        e.ultimo_nome;
 
E)
select     (e.primeiro_nome ||' '||e.ultimo_nome) as primeiro_nome, 
           c.nomecargo, 
           d.nomedepto
from       empregado e
inner join cargo1 c 
on         (c.idcargo = e.idcargo)
inner join departamento d 
on         (d.iddepto = e.iddepto)
inner join localizacao l 
on         (l.idlocalizacao = d.idlocalizacao 
and        l.cidade='Sorocaba');
 
F)
select     (em.primeiro_nome ||' '||em.ultimo_nome) as primeiro_nome, 
           em.idgerente, (e.primeiro_nome ||' '||e.ultimo_nome) as primeiro_nome, 
           e.idempregado
from       empregado e
inner join empregado em 
on         (e.idempregado = em.idgerente)
order by   e.primeiro_nome;
 
G) 
select     (em.primeiro_nome ||' '||em.ultimo_nome) as primeiro_nome, 
           em.idgerente, (e.primeiro_nome ||' '||e.ultimo_nome) as primeiro_nome, 
           e.idempregado
from       empregado e
right join empregado em 
on         (e.idempregado = em.idgerente)
order by   e.idempregado;
 
H)
select     d.nomedepto as "Departamento",
           listagg(e.ultimo_nome, ', ') within group (order by d.nomedepto) as "Funcionários"
from       departamento d 
inner join empregado e 
on         (e.iddepto = d.iddepto)
group by   d.nomedepto;

or
 
SELECT    e.ultimo_nome as "Nome", 
          d.nomedepto as "Departamento",
          em.ultimo_nome as "Funcionários do Departamento"
FROM      departamento d
left join empregado e 
on        (e.iddepto = d.iddepto)
left join empregado em 
on        (e.iddepto = em.iddepto);
 
I)
select distinct e.primeiro_nome, 
           e.dtadmissao
from       empregado e 
inner join empregado em
on         (e.dtadmissao > '09/07/98');
 
J)
select     (em.primeiro_nome ||' '||em.ultimo_nome) as primeiro_nome, 
           em.dtadmissao, em.idgerente,
           (e.primeiro_nome ||' '||e.ultimo_nome) as primeiro_nome, 
           e.dtadmissao, 
           e.idempregado
from       empregado em
inner join empregado e 
on         (e.idempregado = em.idgerente 
and        em.dtadmissao < e.dtadmissao)
order by   e.dtadmissao; 
