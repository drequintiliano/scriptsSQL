# scriptsSQL
SQL studys

1)
SELECT      PRIMEIRO_NOME AS "NOME", 
            D.NOMEDEPTO AS "DEPARTAMENTO",
            DTADMISSAO AS "DATA DE ADMISSÃO"           
FROM        EMPREGADO
INNER JOIN  DEPARTAMENTO D
ON          (D.IDDEPTO=EMPREGADO.IDDEPTO) 
WHERE       DTADMISSAO IN (SELECT MAX(DTADMISSAO) 
                           FROM EMPREGADO 
                           GROUP BY IDDEPTO)
ORDER BY    DTADMISSAO

2)
SELECT   E.PRIMEIRO_NOME AS "NOME", 
         E.SALARIO AS "SALÁRIO", 
         E.IDDEPTO 
FROM     EMPREGADO E
WHERE    E.SALARIO > ANY(SELECT AVG(M.SALARIO)
                         FROM EMPREGADO M
                         WHERE E.IDDEPTO=M.IDDEPTO
                         GROUP BY M.IDDEPTO)
ORDER BY E.IDDEPTO
    

3)
SELECT IDDEPTO, NOMEDEPTO
FROM   DEPARTAMENTO 
WHERE  IDDEPTO IN(SELECT IDDEPTO FROM DEPARTAMENTO
                 MINUS
                 SELECT IDDEPTO FROM EMPREGADO) 

or

SELECT      D.NOMEDEPTO  
FROM        DEPARTAMENTO D
LEFT JOIN   EMPREGADO E
ON          (D.IDDEPTO=E.IDDEPTO)
WHERE       E.IDDEPTO IS NULL
                   
4)
SELECT DTADMISSAO AS "ANO", COUNT(*) QTDE
FROM   EMPREGADO
GROUP  BY DTADMISSAO
HAVING COUNT(*) > 1

5)
SELECT  PRIMEIRO_NOME, 
        DTADMISSAO,  
        CASE DTADMISSAO
            WHEN (SELECT MAX(DTADMISSAO) FROM EMPREGADO) THEN '*' 
            ELSE ' ' END AS "MAIS RECENTE"
FROM EMPREGADO
ORDER BY PRIMEIRO_NOME

6)
SELECT PRIMEIRO_NOME, SALARIO FROM EMPREGADO
WHERE SALARIO IN (SELECT SALARIO FROM EMPREGADO WHERE ROWNUM <=3)
 
or
 
SELECT 	PRIMEIRO_NOME, 
        SALARIO 
FROM 	  EMPREGADO
WHERE 	ROWNUM <=3 
