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
