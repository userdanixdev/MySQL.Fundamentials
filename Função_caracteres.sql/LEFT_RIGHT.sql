-- As funções de caracteres LEFT E RIGHT retornam a parte esquerda de uma cadeia de caracteres e o RIGHT retorna a parte direita da cadeira de caracteres:
-- Exemplo 
use sakila;
select first_name from actor;
+------------+
| first_name |
+------------+
| PENELOPE   |
| NICK       |
| ED         |
| JENNIFER   |
| JOHNNY     |
+------------+
-- Usando a função LEFT, o SGBD irá retornar quantos caracteres desejar :
select first_name,
        LEFT(first_name,5)5_primeiras_letras 
  FROM actor
  LIMIT 5;

+------------+--------------------+
| first_name | 5_primeiras_letras |
+------------+--------------------+
| PENELOPE   | PENEL              |
| NICK       | NICK               |
| ED         | ED                 |
| JENNIFER   | JENNI              |
| JOHNNY     | JOHNN              |
+------------+--------------------+
5 rows in set (0.00 sec)

-- Agora com o RIGHT -- Extraindo os 4 últimos caracteres da coluna first_name:
select first_name,
        RIGHT(first_name,4)4_ultimos_letras 
FROM actor
LIMIT 5;
+------------+--------------------+
| first_name | 4_ultimas_letras |
+------------+--------------------+
| PENELOPE   | LOPE               |
| NICK       | NICK               |
| ED         | ED                 |
| JENNIFER   | IFER               |
| JOHNNY     | HNNY               |
+------------+--------------------+
5 rows in set (0.00 sec)



