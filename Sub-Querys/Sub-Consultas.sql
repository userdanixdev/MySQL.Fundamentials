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

-- Exemplo 04 : databases 'world'
-- Filtrar a soma da população de cada cidade divididas por sua região:
use world;
select * from countrylanguage;
select * from country;  -- Iremos usar a coluna 'code' e 'population' dessa tabela -- 
select * from city; -- Iremos usar a coluna 'name' & 'countrycode' & 'population' dessa tabela --

-- Soma da população de todas as cidades separadas por região :
-- countrylanguage = c  ( coluna 'CountryCode' & 'language'
-- country = b ( coluna 'name' do pais ' code ')
-- city = a ( usa a coluna CountryCode e a população da cidade )
select a.CountryCode, sum(a.population) as total_populacao, (select name from country b where a.CountryCode = b.code) AS pais
from city a where a.CountryCode in (select c.CountryCode from countrylanguage c where language = 'Spanish') group by a.countrycode;

+-------------+-----------------+----------------------+
| CountryCode | total_populacao | pais                 |
+-------------+-----------------+----------------------+
| ABW         |           29034 | Aruba                |
| AND         |           21189 | Andorra              |
| ARG         |        19996563 | Argentina            |
| BLZ         |           62915 | Belize               |
| BOL         |         3378644 | Bolivia              |
| CAN         |        12673840 | Canada               |
| CHL         |         9717970 | Chile                |
| COL         |        20250990 | Colombia             |
| CRI         |          339131 | Costa Rica           |
| CUB         |         4629925 | Cuba                 |
| DOM         |         2438276 | Dominican Republic   |
| ECU         |         5744142 | Ecuador              |
| ESP         |        16669189 | Spain                |
| FRA         |         9244494 | France               |
| GTM         |         1225188 | Guatemala            |
| HND         |         1287000 | Honduras             |
| MEX         |        59752521 | Mexico               |
| NIC         |         1269223 | Nicaragua            |
| PAN         |          786755 | Panama               |
| PER         |        12147242 | Peru                 |
| PRI         |         1564174 | Puerto Rico          |
| PRY         |         1020020 | Paraguay             |
| SLV         |         1138231 | El Salvador          |
| SWE         |         2891431 | Sweden               |
| URY         |         1236000 | Uruguay              |
| USA         |        78625774 | United States        |
| VEN         |        12251091 | Venezuela            |
| VIR         |           13000 | Virgin Islands, U.S. |
+-------------+-----------------+----------------------+
28 rows in set (0.00 sec)
---//--//-//-//////----
-- Another solution using JOINS:
select a.CountryCode, sum(a.population) as total_populacao, b.name from city a 
inner join country b on a.CountryCode=b.code
inner join countrylanguage c on a.CountryCode = c.countrycode
where language = 'Spanish' group by a.countrycode,b.name;

+-------------+-----------------+----------------------+
| CountryCode | total_populacao | name                 |
+-------------+-----------------+----------------------+
| ABW         |           29034 | Aruba                |
| AND         |           21189 | Andorra              |
| ARG         |        19996563 | Argentina            |
| BLZ         |           62915 | Belize               |
| BOL         |         3378644 | Bolivia              |
| CAN         |        12673840 | Canada               |
| CHL         |         9717970 | Chile                |
| COL         |        20250990 | Colombia             |
| CRI         |          339131 | Costa Rica           |
| CUB         |         4629925 | Cuba                 |
| DOM         |         2438276 | Dominican Republic   |
| ECU         |         5744142 | Ecuador              |
| ESP         |        16669189 | Spain                |
| FRA         |         9244494 | France               |
| GTM         |         1225188 | Guatemala            |
| HND         |         1287000 | Honduras             |
| MEX         |        59752521 | Mexico               |
| NIC         |         1269223 | Nicaragua            |
| PAN         |          786755 | Panama               |
| PER         |        12147242 | Peru                 |
| PRI         |         1564174 | Puerto Rico          |
| PRY         |         1020020 | Paraguay             |
| SLV         |         1138231 | El Salvador          |
| SWE         |         2891431 | Sweden               |
| URY         |         1236000 | Uruguay              |
| USA         |        78625774 | United States        |
| VEN         |        12251091 | Venezuela            |
| VIR         |           13000 | Virgin Islands, U.S. |
+-------------+-----------------+----------------------+
28 rows in set (0.01 sec)





