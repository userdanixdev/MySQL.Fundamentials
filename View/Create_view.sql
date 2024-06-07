-- Usando a base de dados 'Sakila' podemos criar uma view.
-- Na tabela actor temos as colunas: actor_id, first_name,last_name, e last_update.
    -- Não tem informação sobre o nome do filme
-- Já na tabela 'film_actor' temo o mesmo actor_id da tabela 'actor'e film_id. --
-- Na tabela 'film' temos o film_id, o title, descrição e vários outras informações sobre o filme --

use sakila;
-- Alias 'a' para tabela de actor
-- Alias 'b' para tabela de film_actor 
-- alias 'c' para tabela de film
create view v_actor_film   -- prefixo 'v' para dizer que é uma view - BOA PRÁTICA -
AS
SELECT a.first_name,c.title,c.length as duracao
from actor a
inner join film_actor b
on a.actor_id =b.actor_id
inner join film c
on b.film_id=c.film_id limit 10;

select a.first_name,c.title,c.length as duracao from actor a inner join film_actor b on a.actor_id=b.actor_id inner join film c on b.film_id=c.film_id limit 10;
+------------+-----------------------+---------+
| first_name | title                 | duracao |
+------------+-----------------------+---------+
| PENELOPE   | ACADEMY DINOSAUR      |      86 |
| PENELOPE   | ANACONDA CONFESSIONS  |      92 |
| PENELOPE   | ANGELS LIFE           |      74 |
| PENELOPE   | BULWORTH COMMANDMENTS |      61 |
| PENELOPE   | CHEAPER CLYDE         |      87 |
| PENELOPE   | COLOR PHILADELPHIA    |     149 |
| PENELOPE   | ELEPHANT TROJAN       |     126 |
| PENELOPE   | GLEAMING JAWBREAKER   |      89 |
| PENELOPE   | HUMAN GRAFFITI        |      68 |
| PENELOPE   | KING EVOLUTION        |     184 |
+------------+-----------------------+---------+
10 rows in set (0.00 sec)

-- A query acima foi um consulta sem o uso da view:
-- Para consultar a view:

select * from v_actor_film  -- Trará o mesmo resultado da consulta acima --

-- Outro exemplo é separar os filmes por linhas:

create view v_actor_film_concat
as
select a.first_name,
group_concat(a.title SEPARATOR', ') as filmes
from v_actor_film a
group by a.first_name

-- A consulta irá mostrar somente PENELOPE pois a view criada foi limitada até a décima linha:

mysql> select * from v_actor_film_concat;
+------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| first_name | filmes                                                                                                                                                                              |
+------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| PENELOPE   | ACADEMY DINOSAUR, ANACONDA CONFESSIONS, ANGELS LIFE, BULWORTH COMMANDMENTS, CHEAPER CLYDE, COLOR PHILADELPHIA, ELEPHANT TROJAN, GLEAMING JAWBREAKER, HUMAN GRAFFITI, KING EVOLUTION |
+------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

