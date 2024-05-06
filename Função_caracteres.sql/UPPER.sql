-- upper -- 
-- O comando 'upper' irá retornar todas as cadeia de caracteres minúsculas em maiúsculas:
use world;
select name from country limit 5;
+-------------+
| name        |
+-------------+
| Aruba       |
| Afghanistan |
| Angola      |
| Anguilla    |
| Albania     |
+-------------+
5 rows in set (0.01 sec)
Select name,upper(name)retorno from country limit 10;
+----------------------+----------------------+
| name                 | retorno              |
+----------------------+----------------------+
| Aruba                | ARUBA                |
| Afghanistan          | AFGHANISTAN          |
| Angola               | ANGOLA               |
| Anguilla             | ANGUILLA             |
| Albania              | ALBANIA              |
| Andorra              | ANDORRA              |
| Netherlands Antilles | NETHERLANDS ANTILLES |
| United Arab Emirates | UNITED ARAB EMIRATES |
| Argentina            | ARGENTINA            |
| Armenia              | ARMENIA              |
+----------------------+----------------------+
10 rows in set (0.00 sec)


