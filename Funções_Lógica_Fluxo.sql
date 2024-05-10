-- Usando a base de dados World --
use world;
select name,IndepYear from country;
+----------------------+-----------+
| name                 | IndepYear |
+----------------------+-----------+
| Aruba                |      NULL |
| Afghanistan          |      1919 |
| Angola               |      1975 |
| Anguilla             |      NULL |
| Albania              |      1912 |
| Andorra              |      1278 |
| Netherlands Antilles |      NULL |
| United Arab Emirates |      1971 |
| Argentina            |      1816 |
| Armenia              |      1991 |
+----------------------+-----------+
10 rows in set (0.00 sec)
-- Com a função de agregação de lógica IFNULL podemos renomear todas as linhas com null com outro valor:
SELECT name,IFNULL(IndepYear,'Sem independência') FROM country;

+----------------------+---------------------------------------+
| name                 | ifnull(indepYear,'Sem independência') |
+----------------------+---------------------------------------+
| Aruba                | Sem indepedência                      |
| Afghanistan          | 1919                                  |
| Angola               | 1975                                  |
| Anguilla             | Sem indepedência                      |
| Albania              | 1912                                  |
| Andorra              | 1278                                  |
| Netherlands Antilles | Sem indepedência                      |
| United Arab Emirates | 1971                                  |
| Argentina            | 1816                                  |
| Armenia              | 1991                                  |
+----------------------+---------------------------------------+
10 rows in set (0.01 sec)

