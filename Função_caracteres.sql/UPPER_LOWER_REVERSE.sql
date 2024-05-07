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
-- Assim o comando 'lower' irá trazer toda a cadeira de caractere da coluna ou colunas especificadas, minúsculas:
select name,lower(name)retorno from country limit 10;
+----------------------+----------------------+
| name                 | retorno              |
+----------------------+----------------------+
| Aruba                | aruba                |
| Afghanistan          | afghanistan          |
| Angola               | angola               |
| Anguilla             | anguilla             |
| Albania              | albania              |
| Andorra              | andorra              |
| Netherlands Antilles | netherlands antilles |
| United Arab Emirates | united arab emirates |
| Argentina            | argentina            |
| Armenia              | armenia              |
+----------------------+----------------------+
10 rows in set (0.00 sec)
-- O comando REVERSE irá inverter toda a cadeia de caractere especificada, seja uma coluna ou várias, nesse caso, iremos reverter os caracteres da coluna name, da base de dados world,
-- da tabela country;

select name,reverse(name)retorno from country limit 10;
+----------------------+----------------------+
| name                 | retorno              |
+----------------------+----------------------+
| Aruba                | aburA                |
| Afghanistan          | natsinahgfA          |
| Angola               | alognA               |
| Anguilla             | alliugnA             |
| Albania              | ainablA              |
| Andorra              | arrodnA              |
| Netherlands Antilles | sellitnA sdnalrehteN |
| United Arab Emirates | setarimE barA detinU |
| Argentina            | anitnegrA            |
| Armenia              | ainemrA              |
+----------------------+----------------------+
10 rows in set (0.00 sec)





