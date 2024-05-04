-- É nada mais nada menos que ums instrução SELECT condicionada em outro SELECT podendo utilizar as mesmas cláusulas.

-- Examples:
use sakila  -- Sakila é um banco de dados que é usado no MySQLworkbench como exemplo para estudos

-- Atenção: Tanto a tabela 'film_actor' quanto a 'actor' possuem o mesmo id - Existe as chaves que se relacionam, sendo assim:
SELECT * FROM actor WHERE actor_id IN (SELECT actor_id FROM film_actor WHERE film_id = 1 )

-- Teremos assim o resultado de todos os atores que fizeram o film com código ID = 1 --

-- Descobrir qual filme que atriz Penelope Guiness fez, sabendo que o código dela é ID = 1 -- 
-- Boa prática utilizar os campos chaves por questão de performance do que campos texto --
SELECT * FROM film WHERE film_id IN (SELECT film_id FROM film_actor WHERE actor_id = 1)
-- Aqui temos mais um exemplo de sub-query utilizando as chaves de relacionanmentos -- 
-- Sendo assim, a consulta irá retornar todos os filmes que o ator com código 1 fez --

-- Exemplo 2:
-- Saber qual filme a atriz Penelope Guiness fez com classificação (hating) PG - Público Geral com restrição Parental -
SELECT * FROM film WHERE film_id IN (SELECT film_id FROM film_actor WHERE actor_id = 1 and rating = 'PG');
-- Resultado = Foram 6 filmes --
-- Fiz a seleção no terminal para obter resultado melhores com algumas mudanças no script: Filtrei somente o título,descrição do filme e se tem algum recurso especial incluso:
mysql> SELECT title,description,rating,special_features FROM filM WHERE film_id IN (SELECT film_id FROM film_actor WHERE actor_id = 1 and rating= 'PG');
+--------------------+---------------------------------------------------------------------------------------------------+--------+--------------------------------------------------------+
| title              | description                                                                                       | rating | special_features                                       |
+--------------------+---------------------------------------------------------------------------------------------------+--------+--------------------------------------------------------+
| ACADEMY DINOSAUR   | A Epic Drama of a Feminist And a Mad Scientist who must Battle a Teacher in The Canadian Rockies  | PG     | Deleted Scenes,Behind the Scenes                       |
| LADY STAGE         | A Beautiful Character Study of a Woman And a Man who must Pursue a Explorer in A U-Boat           | PG     | Trailers,Deleted Scenes,Behind the Scenes              |
| MULHOLLAND BEAST   | A Awe-Inspiring Display of a Husband And a Squirrel who must Battle a Sumo Wrestler in A Jet Boat | PG     | Trailers,Deleted Scenes,Behind the Scenes              |
| OKLAHOMA JUMANJI   | A Thoughtful Drama of a Dentist And a Womanizer who must Meet a Husband in The Sahara Desert      | PG     | Behind the Scenes                                      |
| SPLASH GUMP        | A Taut Saga of a Crocodile And a Boat who must Conquer a Hunter in A Shark Tank                   | PG     | Trailers,Commentaries,Deleted Scenes,Behind the Scenes |
| WIZARD COLDBLOODED | A Lacklusture Display of a Robot And a Girl who must Defeat a Sumo Wrestler in A MySQL Convention | PG     | Commentaries,Deleted Scenes,Behind the Scenes          |
+--------------------+---------------------------------------------------------------------------------------------------+--------+--------------------------------------------------------+






