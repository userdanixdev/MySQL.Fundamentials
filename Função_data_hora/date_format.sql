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






