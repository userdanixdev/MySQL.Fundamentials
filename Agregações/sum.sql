-- Soma da população de todas as cidades separadas por região:
-- uso da base de dados world
-- countryLanguage AS c ( uso da coluna 'countryCode' & 'language')
-- country AS b (coluna 'name' & 'code')
-- city AS a (uso da coluna 'countryCode' & 'population)

USE world;
SELECT a.CountryCode, sum(a.population) as Total_População, b.name FROM city a
INNER JOIN country b ON a.CountryCode=b.code
INNER JOIN countrylanguage c ON a.CountryCode = c.countrycode
WHERE LANGUAGE = 'Spanish' GROUP BY a.countrycode,b.name;

+-------------+------------------+----------------------+
| CountryCode | TOTAL_population | name                 |
+-------------+------------------+----------------------+
| ABW         |            29034 | Aruba                |
| AND         |            21189 | Andorra              |
| ARG         |         19996563 | Argentina            |
| BLZ         |            62915 | Belize               |
| BOL         |          3378644 | Bolivia              |
| CAN         |         12673840 | Canada               |
| CHL         |          9717970 | Chile                |
| COL         |         20250990 | Colombia             |
| CRI         |           339131 | Costa Rica           |
| CUB         |          4629925 | Cuba                 |
| DOM         |          2438276 | Dominican Republic   |
| ECU         |          5744142 | Ecuador              |
| ESP         |         16669189 | Spain                |
| FRA         |          9244494 | France               |
| GTM         |          1225188 | Guatemala            |
| HND         |          1287000 | Honduras             |
| MEX         |         59752521 | Mexico               |
| NIC         |          1269223 | Nicaragua            |
| PAN         |           786755 | Panama               |
| PER         |         12147242 | Peru                 |
| PRI         |          1564174 | Puerto Rico          |
| PRY         |          1020020 | Paraguay             |
| SLV         |          1138231 | El Salvador          |
| SWE         |          2891431 | Sweden               |
| URY         |          1236000 | Uruguay              |
| USA         |         78625774 | United States        |
| VEN         |         12251091 | Venezuela            |
| VIR         |            13000 | Virgin Islands, U.S. |
+-------------+------------------+----------------------+
28 rows in set (0.02 sec)

-- Existe também uma forma sem fazer JOIN, com sub-querys:

SELECT a.CountryCode, sum(a.population) as total_populacao, (SELECT name FROM country b WHERE a.countryCode = b.code) AS Pais
FROM city a 
WHERE a.CountryCode IN (SELECT c.countryCOde FROM countrylanguage c WHERE language = 'Spanish') 
GROUP BY a.CountryCode;

+-------------+-----------+----------------------+
| CountryCode | TOTAL_POP | pais                 |
+-------------+-----------+----------------------+
| ABW         |     29034 | Aruba                |
| AND         |     21189 | Andorra              |
| ARG         |  19996563 | Argentina            |
| BLZ         |     62915 | Belize               |
| BOL         |   3378644 | Bolivia              |
| CAN         |  12673840 | Canada               |
| CHL         |   9717970 | Chile                |
| COL         |  20250990 | Colombia             |
| CRI         |    339131 | Costa Rica           |
| CUB         |   4629925 | Cuba                 |
| DOM         |   2438276 | Dominican Republic   |
| ECU         |   5744142 | Ecuador              |
| ESP         |  16669189 | Spain                |
| FRA         |   9244494 | France               |
| GTM         |   1225188 | Guatemala            |
| HND         |   1287000 | Honduras             |
| MEX         |  59752521 | Mexico               |
| NIC         |   1269223 | Nicaragua            |
| PAN         |    786755 | Panama               |
| PER         |  12147242 | Peru                 |
| PRI         |   1564174 | Puerto Rico          |
| PRY         |   1020020 | Paraguay             |
| SLV         |   1138231 | El Salvador          |
| SWE         |   2891431 | Sweden               |
| URY         |   1236000 | Uruguay              |
| USA         |  78625774 | United States        |
| VEN         |  12251091 | Venezuela            |
| VIR         |     13000 | Virgin Islands, U.S. |
+-------------+-----------+----------------------+
28 rows in set (0.01 sec)

