-- Para verificar a time_zone, como se fosse o fuso horário --
select @@global.time_zone;
select @@time_zone;
+-------------+
| @@time_zone |
+-------------+
| +00:00      |
+-------------+
-- obs: Para problemas de fuso horário --
-- set @@global.time_zone = '+3:00';

