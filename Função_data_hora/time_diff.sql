-- A função timediff tem o propósito de retornar a diferença em horas --
use sakila;
select timediff(now(),now())diferença;  -- Deu zerado pois não tem diferença de tempo -- 
+------------+
| diferença  |
+------------+
| 00:00:00   |
+------------+
1 row in set (0.00 sec)
-- Colocando outra data diferente:
select timediff('2022-12-08 10:00:00',now())diferença;
+------------+
| diferença  |
+------------+
| -838:59:59 |
+------------+
1 row in set, 1 warning (0.01 sec)
