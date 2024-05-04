-- É nada mais nada menos que ums instrução SELECT condicionada em outro SELECT podendo utilizar as mesmas cláusulas.

-- Examples:
use sakila  -- Sakila é um banco de dados que é usado no MySQLworkbench como exemplo para estudos

-- Atenção: Tanto a tabela 'film_actor' quanto a 'actor' possuem o mesmo id - Existe as chaves que se relacionam, sendo assim:
SELECT * FROM actor WHERE actor_id IN (SELECT actor_id FROM film_actor WHERE film_id = 1 )
  +----------+------------+-----------+---------------------+
| actor_id | first_name | last_name | last_update         |
+----------+------------+-----------+---------------------+
|        1 | PENELOPE   | GUINESS   | 2006-02-15 04:34:33 |
|       10 | CHRISTIAN  | GABLE     | 2006-02-15 04:34:33 |
|       20 | LUCILLE    | TRACY     | 2006-02-15 04:34:33 |
|       30 | SANDRA     | PECK      | 2006-02-15 04:34:33 |
|       40 | JOHNNY     | CAGE      | 2006-02-15 04:34:33 |
|       53 | MENA       | TEMPLE    | 2006-02-15 04:34:33 |
|      108 | WARREN     | NOLTE     | 2006-02-15 04:34:33 |
|      162 | OPRAH      | KILMER    | 2006-02-15 04:34:33 |
|      188 | ROCK       | DUKAKIS   | 2006-02-15 04:34:33 |
|      198 | MARY       | KEITEL    | 2006-02-15 04:34:33 |
+----------+------------+-----------+---------------------+

-- Teremos assim o resultado de todos os atores que fizeram o film com código ID = 1 --

-- Descobrir qual filme que atriz Penelope Guiness fez, sabendo que o código dela é ID = 1 -- 
-- Boa prática utilizar os campos chaves por questão de performance do que campos texto --
SELECT * FROM film WHERE film_id IN (SELECT film_id FROM film_actor WHERE actor_id = 1);
      -- com todas tabelas selecionadas a tabela irá ficar muito grande, sendo assim irei filtrar somente algumas colunas:
SELECT title,description,release_year,length,rating FROM filme WHERE film_id IN (SELECT film_id FROM film_actor WHERE actor_id = 1);
+-----------------------+-------------------------------------------------------------------------------------------------------------------------+--------------+--------+--------+
| title                 | description                                                                                                             | release_year | length | rating |
+-----------------------+-------------------------------------------------------------------------------------------------------------------------+--------------+--------+--------+
| ACADEMY DINOSAUR      | A Epic Drama of a Feminist And a Mad Scientist who must Battle a Teacher in The Canadian Rockies                        |         2006 |     86 | PG     |
| ANACONDA CONFESSIONS  | A Lacklusture Display of a Dentist And a Dentist who must Fight a Girl in Australia                                     |         2006 |     92 | R      |
| ANGELS LIFE           | A Thoughtful Display of a Woman And a Astronaut who must Battle a Robot in Berlin                                       |         2006 |     74 | G      |
| BULWORTH COMMANDMENTS | A Amazing Display of a Mad Cow And a Pioneer who must Redeem a Sumo Wrestler in The Outback                             |         2006 |     61 | G      |
| CHEAPER CLYDE         | A Emotional Character Study of a Pioneer And a Girl who must Discover a Dog in Ancient Japan                            |         2006 |     87 | G      |
| COLOR PHILADELPHIA    | A Thoughtful Panorama of a Car And a Crocodile who must Sink a Monkey in The Sahara Desert                              |         2006 |    149 | G      |
| ELEPHANT TROJAN       | A Beautiful Panorama of a Lumberjack And a Forensic Psychologist who must Overcome a Frisbee in A Baloon                |         2006 |    126 | PG-13  |
| GLEAMING JAWBREAKER   | A Amazing Display of a Composer And a Forensic Psychologist who must Discover a Car in The Canadian Rockies             |         2006 |     89 | NC-17  |
| HUMAN GRAFFITI        | A Beautiful Reflection of a Womanizer And a Sumo Wrestler who must Chase a Database Administrator in The Gulf of Mexico |         2006 |     68 | NC-17  |
| KING EVOLUTION        | A Action-Packed Tale of a Boy And a Lumberjack who must Chase a Madman in A Baloon                                      |         2006 |    184 | NC-17  |
| LADY STAGE            | A Beautiful Character Study of a Woman And a Man who must Pursue a Explorer in A U-Boat                                 |         2006 |     67 | PG     |
| LANGUAGE COWBOY       | A Epic Yarn of a Cat And a Madman who must Vanquish a Dentist in An Abandoned Amusement Park                            |         2006 |     78 | NC-17  |
| MULHOLLAND BEAST      | A Awe-Inspiring Display of a Husband And a Squirrel who must Battle a Sumo Wrestler in A Jet Boat                       |         2006 |    157 | PG     |
| OKLAHOMA JUMANJI      | A Thoughtful Drama of a Dentist And a Womanizer who must Meet a Husband in The Sahara Desert                            |         2006 |     58 | PG     |
| RULES HUMAN           | A Beautiful Epistle of a Astronaut And a Student who must Confront a Monkey in An Abandoned Fun House                   |         2006 |    153 | R      |
| SPLASH GUMP           | A Taut Saga of a Crocodile And a Boat who must Conquer a Hunter in A Shark Tank                                         |         2006 |    175 | PG     |
| VERTIGO NORTHWEST     | A Unbelieveable Display of a Mad Scientist And a Mad Scientist who must Outgun a Mad Cow in Ancient Japan               |         2006 |     90 | R      |
| WESTWARD SEABISCUIT   | A Lacklusture Tale of a Butler And a Husband who must Face a Boy in Ancient China                                       |         2006 |     52 | NC-17  |
| WIZARD COLDBLOODED    | A Lacklusture Display of a Robot And a Girl who must Defeat a Sumo Wrestler in A MySQL Convention                       |         2006 |     75 | PG     |
+-----------------------+-------------------------------------------------------------------------------------------------------------------------+--------------+--------+--------+
  
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
-- Usando essa linha de código podemos filtrar os filmes da atriz 'Penelope Guiness' que ela fez diferente da classificação PG, utilizando na sub-query o operador '<>':
SELECT title,rating FROM film WHERE film_id IN ( SELECT film_id FROM film_actor WHERE actor_id =1 AND rating <> 'PG');
+-----------------------+--------+
| title                 | rating |
+-----------------------+--------+
| ANACONDA CONFESSIONS  | R      |
| ANGELS LIFE           | G      |
| BULWORTH COMMANDMENTS | G      |
| CHEAPER CLYDE         | G      |
| COLOR PHILADELPHIA    | G      |
| ELEPHANT TROJAN       | PG-13  |
| GLEAMING JAWBREAKER   | NC-17  |
| HUMAN GRAFFITI        | NC-17  |
| KING EVOLUTION        | NC-17  |
| LANGUAGE COWBOY       | NC-17  |
| RULES HUMAN           | R      |
| VERTIGO NORTHWEST     | R      |
| WESTWARD SEABISCUIT   | NC-17  |
+-----------------------+--------+
-- Exemplo 03:
  -- Descobrir quantas cidades tem na região :
SELECT * FROM country;
SELECT * FROM city;
SELECT a.country_id, a.country, (SELECT count(*) FROM city b WHERE a.country_id =  b.country_id) AS qtd_city FROM country a LIMIT 10;
-- O terminal não consegue compreender esse sintaxe. No Workbench consegue. -- 
-- 





