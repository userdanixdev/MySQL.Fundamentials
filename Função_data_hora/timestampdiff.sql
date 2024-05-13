-- Com a função timestampdiff podemos retornar qualquer hora, segundo ou data como mês, dias colocando como parâmetro a data,a coluna e a data atual para efetuar a função:

select title,last_update,
  timestampdiff(year,last_update,now()) ano_dif,
  timestampdiff(month,last_update,now()) mes_dif,
  timestampdiff(day,last_update,now()) dia_dif,
  timestampdiff(hour,last_update,now())horas_dif,
  timestampdiff(minute,last_update,now()) minutos_dif,
  timestampdiff(week,last_update,now()) semana_dif from film limit 10;
+------------------+---------------------+---------+---------+---------+-----------+-------------+------------+
| title            | last_update         | ano_dif | mes_dif | dia_dif | horas_dif | minutos_dif | semana_dif |
+------------------+---------------------+---------+---------+---------+-----------+-------------+------------+
| ACADEMY DINOSAUR | 2006-02-15 05:03:42 |      18 |     218 |    6661 |    159883 |     9593011 |        951 |
| ACE GOLDFINGER   | 2006-02-15 05:03:42 |      18 |     218 |    6661 |    159883 |     9593011 |        951 |
| ADAPTATION HOLES | 2006-02-15 05:03:42 |      18 |     218 |    6661 |    159883 |     9593011 |        951 |
| AFFAIR PREJUDICE | 2006-02-15 05:03:42 |      18 |     218 |    6661 |    159883 |     9593011 |        951 |
| AFRICAN EGG      | 2006-02-15 05:03:42 |      18 |     218 |    6661 |    159883 |     9593011 |        951 |
| AGENT TRUMAN     | 2006-02-15 05:03:42 |      18 |     218 |    6661 |    159883 |     9593011 |        951 |
| AIRPLANE SIERRA  | 2006-02-15 05:03:42 |      18 |     218 |    6661 |    159883 |     9593011 |        951 |
| AIRPORT POLLOCK  | 2006-02-15 05:03:42 |      18 |     218 |    6661 |    159883 |     9593011 |        951 |
| ALABAMA DEVIL    | 2006-02-15 05:03:42 |      18 |     218 |    6661 |    159883 |     9593011 |        951 |
| ALADDIN CALENDAR | 2006-02-15 05:03:42 |      18 |     218 |    6661 |    159883 |     9593011 |        951 |
+------------------+---------------------+---------+---------+---------+-----------+-------------+------------+
10 rows in set (0.00 sec)
