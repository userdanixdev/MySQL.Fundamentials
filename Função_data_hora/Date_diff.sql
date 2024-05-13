-- Calcular diferença em dias -- 
use sakila;
select title,last_update,datediff(now(),last_update) as diferença em dias from film limit 10;
+------------------+---------------------+-----------------+
| title            | last_update         | diferença_dias  |
+------------------+---------------------+-----------------+
| ACADEMY DINOSAUR | 2006-02-15 05:03:42 |            6662 |
| ACE GOLDFINGER   | 2006-02-15 05:03:42 |            6662 |
| ADAPTATION HOLES | 2006-02-15 05:03:42 |            6662 |
| AFFAIR PREJUDICE | 2006-02-15 05:03:42 |            6662 |
| AFRICAN EGG      | 2006-02-15 05:03:42 |            6662 |
| AGENT TRUMAN     | 2006-02-15 05:03:42 |            6662 |
| AIRPLANE SIERRA  | 2006-02-15 05:03:42 |            6662 |
| AIRPORT POLLOCK  | 2006-02-15 05:03:42 |            6662 |
| ALABAMA DEVIL    | 2006-02-15 05:03:42 |            6662 |
| ALADDIN CALENDAR | 2006-02-15 05:03:42 |            6662 |
+------------------+---------------------+-----------------+
10 rows in set (0.00 sec)
-- Repare que são 6662 dias de diferença a partir da data do filme até os dias de hoje -- 
-- Podemos colocar uma coluna com a data atual para melhorar na visualização -- 
select title,last_update,datediff(now(),last_update) as dif_dias, curdate() from filme limit 10; -- curdate() para data
+------------------+---------------------+-----------------+------------+
| title            | last_update         | diferença_dias  | curdate()  |
+------------------+---------------------+-----------------+------------+
| ACADEMY DINOSAUR | 2006-02-15 05:03:42 |            6662 | 2024-05-13 |
| ACE GOLDFINGER   | 2006-02-15 05:03:42 |            6662 | 2024-05-13 |
| ADAPTATION HOLES | 2006-02-15 05:03:42 |            6662 | 2024-05-13 |
| AFFAIR PREJUDICE | 2006-02-15 05:03:42 |            6662 | 2024-05-13 |
| AFRICAN EGG      | 2006-02-15 05:03:42 |            6662 | 2024-05-13 |
| AGENT TRUMAN     | 2006-02-15 05:03:42 |            6662 | 2024-05-13 |
| AIRPLANE SIERRA  | 2006-02-15 05:03:42 |            6662 | 2024-05-13 |
| AIRPORT POLLOCK  | 2006-02-15 05:03:42 |            6662 | 2024-05-13 |
| ALABAMA DEVIL    | 2006-02-15 05:03:42 |            6662 | 2024-05-13 |
| ALADDIN CALENDAR | 2006-02-15 05:03:42 |            6662 | 2024-05-13 |
+------------------+---------------------+-----------------+------------+
10 rows in set (0.00 sec)

select title,last_update,datediff(now(),last_update) as dif_dias, now() from filme limit 10; -- now() para data completa com o horário -- 
+------------------+---------------------+-----------------+---------------------+
| title            | last_update         | diferença_dias  | now()               |
+------------------+---------------------+-----------------+---------------------+
| ACADEMY DINOSAUR | 2006-02-15 05:03:42 |            6662 | 2024-05-13 00:23:31 |
| ACE GOLDFINGER   | 2006-02-15 05:03:42 |            6662 | 2024-05-13 00:23:31 |
| ADAPTATION HOLES | 2006-02-15 05:03:42 |            6662 | 2024-05-13 00:23:31 |
| AFFAIR PREJUDICE | 2006-02-15 05:03:42 |            6662 | 2024-05-13 00:23:31 |
| AFRICAN EGG      | 2006-02-15 05:03:42 |            6662 | 2024-05-13 00:23:31 |
| AGENT TRUMAN     | 2006-02-15 05:03:42 |            6662 | 2024-05-13 00:23:31 |
| AIRPLANE SIERRA  | 2006-02-15 05:03:42 |            6662 | 2024-05-13 00:23:31 |
| AIRPORT POLLOCK  | 2006-02-15 05:03:42 |            6662 | 2024-05-13 00:23:31 |
| ALABAMA DEVIL    | 2006-02-15 05:03:42 |            6662 | 2024-05-13 00:23:31 |
| ALADDIN CALENDAR | 2006-02-15 05:03:42 |            6662 | 2024-05-13 00:23:31 |
+------------------+---------------------+-----------------+---------------------+
10 rows in set (0.00 sec)
