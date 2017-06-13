A)
select     mu.codmulta, 
           mu.carthab, 
           mo.nomemot
from       multa mu
inner join motorista mo
on         (mu.carthab = mo.carthab)
where      mu.valormulta > 100 
and        mu.valormulta < 900 
order by   mo.nomemot

B)
SELECT     MO.CARTHAB, MO.NOMEMOT, 
           SUM(MU.VALORMULTA) AS "TOTAL MULTAS" 
FROM       MULTA MU
INNER JOIN MOTORISTA MO
ON         (MU.CARTHAB = MO.CARTHAB)
GROUP BY   MO.CARTHAB, MO.NOMEMOT

C)
SELECT  NOMEMOT 
FROM    MOTORISTA
WHERE   ROWNUM <3

D)
SELECT    MO.NOMEMOT, MU.TIPOMULTA
FROM      MOTORISTA MO
LEFT JOIN MULTA MU 
ON        (MU.CARTHAB=MO.CARTHAB
AND       MU.TIPOMULTA <> 'gravíssima')

E)
SELECT     MO.NOMEMOT, 
           SUM(MU.PONTOSMULTA) AS "QTDE PONTOS" 
FROM       MULTA MU
INNER JOIN MOTORISTA MO
ON         (MU.CARTHAB = MO.CARTHAB)
GROUP BY   MO.CARTHAB, MO.NOMEMOT

F)
SELECT     MO.NOMEMOT, 
           SUM(MU.PONTOSMULTA) AS "QTDE PONTOS" 
FROM       MULTA MU
INNER JOIN MOTORISTA MO
ON         (MU.CARTHAB = MO.CARTHAB AND MU.PONTOSMULTA > 6)
GROUP BY   MO.CARTHAB, MO.NOMEMOT

G)
SELECT  V.PLACAVEIC, 
        V.MODELO
FROM    VEICULO V
WHERE NOT EXISTS (SELECT M.PLACAVEICULO
                  FROM MULTA M
                  WHERE V.PLACAVEIC=M.PLACAVEICULO)

H)
SELECT  M.CARTHAB,
        M.NOMEMOT
FROM    MOTORISTA M
WHERE NOT EXISTS (SELECT CARTHAB
                  FROM MULTA MU
                  WHERE M.CARTHAB=MU.CARTHAB)

2A)
SELECT      MU.CODMULTA,
            M.NOMEMOT,
            MU.DATAMULTA,
            V.MARCA
FROM        MULTA MU
INNER JOIN  MOTORISTA M 
ON          (M.CARTHAB=MU.CARTHAB)
INNER JOIN  VEICULO V 
ON          (V.PLACAVEIC=MU.PLACAVEICULO)

3A)
SELECT CODMULTA 
FROM   MULTA
WHERE  VALORMULTA > (SELECT AVG(VALORMULTA)
                     FROM MULTA)


                  
                  
                  
