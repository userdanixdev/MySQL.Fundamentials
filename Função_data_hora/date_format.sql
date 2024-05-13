-- Formatando datas são combinações que podemos realizar com a função date_format:
-- Formatando a data para o padrão brasileiro:
select date_format(now(), '%d/%m/%Y')retorno -- Note que com o 'y' pequeno irá abreviar o ano atual e o 'Y' maiúsculo irá retornar o ano completo
+------------+
| retorno    |
+------------+
| 13/05/2024 |
+------------+
-- Uso do Y maiúsculo -- 
select date_format(now(), '%d/%m/%y')retorno;
+----------+
| retorno  |
+----------+
| 13/05/24 |
+----------+
1 row in set (0.01 sec)
-- ASSIM VALE PARA O DIA E O MÊS -- Para o mês maiúsculo retorna o mês por extenso.
select date_format(now(), '%D/%M/%y')retorno;
+-------------+
| retorno     |
+-------------+
| 13th/May/24 |
+-------------+
1 row in set (0.00 sec)
-- Note que o retorno da consulta veio 'May', para alterar a linguagem padrão é necessáro modificar:
set @@lc_time_names = 'PT_br';
select @@lc_time_names
 select date_format(now(), '%D/%M/%y')retorno;
+--------------+
| retorno      |
+--------------+
| 13th/maio/24 |
+--------------+
1 row in set (0.02 sec)
-- Assim também é possivel retornar somente o dia, ou mes ou ano. -- e formatar da maneira que quiser.
select date_format(now(), '%Y')retorno;
+---------+
| retorno |
+---------+
| 2024    |
+---------+
1 row in set (0.01 sec)
-- Outro exemplo: 
use sakila;
mysql> select last_update, date_format(last_update, '%M/%Y') from film limit 5;
+---------------------+-----------------------------------+
| last_update         | date_format(last_update, '%M/%Y') |
+---------------------+-----------------------------------+
| 2006-02-15 05:03:42 | fevereiro/2006                    |
| 2006-02-15 05:03:42 | fevereiro/2006                    |
| 2006-02-15 05:03:42 | fevereiro/2006                    |
| 2006-02-15 05:03:42 | fevereiro/2006                    |
| 2006-02-15 05:03:42 | fevereiro/2006                    |
+---------------------+-----------------------------------+
5 rows in set (0.00 sec)
 -- Repare que a função 'monthname' retorna o nome do mês, o formato 'W' como dia da semana, H para horas, 'i' para minutos e 's' para segundos.
select now() as data_hora,monthname(now()) mês, date_format(now(), '%W/%M/%Y')data1,date_format(now(), '%H:%i:%s')hora;
+---------------------+------+-----------------+----------+
| data_hora           | mês  | data1           | hora     |
+---------------------+------+-----------------+----------+
| 2024-05-13 14:02:56 | May  | Monday/May/2024 | 14:02:56 |
+---------------------+------+-----------------+----------+
1 row in set (0.01 sec)
-- Trazendo data e hora por extenso:
 select concat('Hoje é ', date_format(now(),'%d'),' de ',date_format(now(), '%M'),' de ',date_format(now(),'%Y'))data_extenso;
+---------------------------+
| data_extenso              |
+---------------------------+
| Hoje é 13 de May de 2024  |
+---------------------------+
1 row in set (0.00 sec)







