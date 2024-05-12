-- Para verificar a língua padrão da instalação do MySQL -- 
-- Por default é o inglês americano --
SELECT @@lc_time_names;
+-----------------+
| @@lc_time_names |
+-----------------+
| en_US           |
+-----------------+
-- Para modificar a língua padrão -- 
SET @@lc_time_names =  'PT_br';
Query OK, 0 rows affected (0.02 sec)
SELECT @@lc_time_names;
+-----------------+
| @@lc_time_names |
+-----------------+
| pt_BR           |
+-----------------+
1 row in set (0.00 sec)
