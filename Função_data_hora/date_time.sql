-- Funções de data hora obtêm valores de data e hora do sistema -- 
-- Todos os valores de data e hora do sistema são derivados do sistema operacional no qual a instância do mysql está sendo executada -- 
curdate() -- Retorna a data do sistema;
select curdate();
+------------+
| curdate()  |
+------------+
| 2024-05-12 |
+------------+
1 row in set (0.01 sec)
now() -- Retorna a hora e data do sistema - 
+---------------------+
| now()               |
+---------------------+
| 2024-05-12 19:41:37 |
+---------------------+
1 row in set (0.01 sec)

select current_time();
+----------------+
| current_time() |
+----------------+
| 19:42:30       |
+----------------+
1 row in set (0.01 sec)
-- Mais exemplos -- Criar uma tabela para exemplo:
create table audit_log (id int not null auto_increment, acao varchar(50), data date, hora time, primary key(id));
insert into audit_log (acao,data,hora) values ( 'Cadastro',curdate(),current_time());
insert into audit_log (acao,data,hora) values ( 'Atualização',curdate(),current_time());
select * from audit_log
+----+---------------+------------+----------+
| id | acao          | data       | hora     |
+----+---------------+------------+----------+
|  1 | Cadastro      | 2024-05-12 | 19:55:47 |
|  2 | Atualização   | 2024-05-12 | 19:56:02 |
+----+---------------+------------+----------+
2 rows in set (0.01 sec)

-- Agora podemos atualizar a data ou a hora com o UPDATE, assim:
update audit_log set hora=current_time() where id = 1;
select * from audit_log
+----+---------------+------------+----------+
| id | acao          | data       | hora     |
+----+---------------+------------+----------+
|  1 | Cadastro      | 2024-05-12 | 19:59:40 |
|  2 | Atualização   | 2024-05-12 | 19:56:02 |
+----+---------------+------------+----------+
2 rows in set (0.01 sec)
-- Repare que a hora foi atualizada para o id = 1
  -- Agora atualizar as duas linhas com in:
update audit_log set hora=current_time() where id in (1,2);
select * from audit_log;
+----+---------------+------------+----------+
| id | acao          | data       | hora     |
+----+---------------+------------+----------+
|  1 | Cadastro      | 2024-05-12 | 20:02:53 |
|  2 | Atualização   | 2024-05-12 | 20:02:53 |
+----+---------------+------------+----------+
-- REPARE que a coluna foi atualizada -- 
-- Exemplo 03: Retornar dia/mes/ano/hora/minutos/segundos em colunas separadas:
select month(now())mes,
       year(now())ano,
       day(now())dia,
       hour(now())horas,
       minute(now())Minutos,
       second(now())segundo;
+------+------+------+-------+--------+---------+
| mes  | ano  | dia  | horas | minuto | segundo |
+------+------+------+-------+--------+---------+
|    5 | 2024 |   12 |    22 |      4 |      37 |
+------+------+------+-------+--------+---------+
1 row in set (0.01 sec)
-- Usando a base de dados Sakila para outro exemplo, com a tabela film campo last_update -- Última atualização --
select title,last_update as ultima_atualização, 
  year(last_update)as ano,
  month(last_update) as mês,
  day(last_update)as Dia,
  hour(last_update)as Hora,
  minute(last_update)as Minuto,
  second(last_update) as Segundo from film limit 10;
+------------------+----------------------+------+------+------+------+--------+---------+
| title            | ultima_atualização   | ano  | mês  | Dia  | Hora | Minuto | Segundo |
+------------------+----------------------+------+------+------+------+--------+---------+
| ACADEMY DINOSAUR | 2006-02-15 05:03:42  | 2006 |    2 |   15 |    5 |      3 |      42 |
| ACE GOLDFINGER   | 2006-02-15 05:03:42  | 2006 |    2 |   15 |    5 |      3 |      42 |
| ADAPTATION HOLES | 2006-02-15 05:03:42  | 2006 |    2 |   15 |    5 |      3 |      42 |
| AFFAIR PREJUDICE | 2006-02-15 05:03:42  | 2006 |    2 |   15 |    5 |      3 |      42 |
| AFRICAN EGG      | 2006-02-15 05:03:42  | 2006 |    2 |   15 |    5 |      3 |      42 |
| AGENT TRUMAN     | 2006-02-15 05:03:42  | 2006 |    2 |   15 |    5 |      3 |      42 |
| AIRPLANE SIERRA  | 2006-02-15 05:03:42  | 2006 |    2 |   15 |    5 |      3 |      42 |
| AIRPORT POLLOCK  | 2006-02-15 05:03:42  | 2006 |    2 |   15 |    5 |      3 |      42 |
| ALABAMA DEVIL    | 2006-02-15 05:03:42  | 2006 |    2 |   15 |    5 |      3 |      42 |
| ALADDIN CALENDAR | 2006-02-15 05:03:42  | 2006 |    2 |   15 |    5 |      3 |      42 |
+------------------+----------------------+------+------+------+------+--------+---------+
10 rows in set (0.00 sec)





