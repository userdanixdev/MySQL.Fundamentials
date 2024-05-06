use world;
SELECT Continent, 
            count(Population)regions_cont, 
	    SUM(Population)total_pop 
	FROM country 
	group BY Continent;

+---------------+--------------+------------+
| Continent     | regioes_cont | total_pop  |
+---------------+--------------+------------+
| North America |           37 |  482993000 |
| Asia          |           51 | 3705025700 |
| Africa        |           58 |  784475000 |
| Europe        |           46 |  730074600 |
| South America |           14 |  345780000 |
| Oceania       |           28 |   30401150 |
| Antarctica    |            5 |          0 |
+---------------+--------------+------------+
7 rows in set (0.00 sec)
-- Assim temos a contagem de regiões por continente e o total da população para cada região e continente.
-- Com a função de agregação 'GROUP CONCAT' podemos concatenar cada região ao seu continente em uma linha:

SELECT Continent,GROUP_CONCAT(Population ORDER BY Population DESC SEPARATOR ';') AS grupos_pop
FROM country GROUP BY Continent;				
+---------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Continent     | grupos_pop                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
+---------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Asia          | 1277558000;1013662000;212107000;156483000;129155000;126714000;79832000;75967000;67702000;66591000;61399000;46844000;45611000;24318000;24039000;23930000;23115000;22720000;22256000;22244000;21607000;18827000;18112000;16223000;16125000;11168000;7734000;6782000;6217000;6188000;5433000;5083000;4968000;4699000;4459000;3567000;3520000;3282000;3101000;2662000;2542000;2441000;2124000;1972000;885000;754700;617000;599000;473000;328000;286000                                   |
| Europe        | 146934000;82164700;59623400;59225700;57680000;50456000;39441700;38653600;22455500;15864000;10640000;10545700;10278100;10239000;10236000;10043200;9997600;8861400;8190900;8091800;7160400;5398700;5330000;5171300;4478500;4473000;4380000;3972000;3775100;3698500;3401200;2424200;2024000;1987800;1439200;435700;380200;279000;78000;43000;34000;32300;27000;25000;3200;1000                                                                                                          |
| North America | 278357000;98881000;31147000;11385000;11201000;8495000;8222000;6485000;6276000;5074000;4023000;3869000;2856000;2583000;1295000;456000;395000;307000;270000;241000;217000;154000;114000;103000;94000;93000;71000;68000;65000;56000;38000;38000;21000;17000;11000;8000;7000                                                                                                                                                                                                             |
| Africa        | 111506000;68470000;62565000;51654000;40377000;33517000;31471000;30080000;29490000;28351000;21778000;20212000;19680000;15942000;15085000;14786000;12878000;11937000;11669000;11234000;10925000;10730000;10097000;9586000;9481000;9169000;7733000;7651000;7430000;6695000;6097000;5605000;4854000;4629000;3850000;3615000;3154000;2943000;2670000;2153000;1726000;1622000;1305000;1226000;1213000;1158000;1008000;699000;638000;578000;453000;428000;293000;149000;147000;77000;6000;0 |
| Oceania       | 18886000;4807000;3862000;817000;444000;235000;214000;190000;180000;168000;119000;99000;83000;78000;68000;64000;20000;19000;15000;12000;12000;2500;2000;2000;2000;600;50;0                                                                                                                                                                                                                                                                                                            |
| Antarctica    | 0;0;0;0;0                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| South America | 170115000;42321000;37032000;25662000;24170000;15211000;12646000;8329000;5496000;3337000;861000;417000;181000;2000                                                                                                                                                                                                                                                                                                                                                                    |
+---------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
7 rows in set (0.00 sec)
-- Dependendo da necessidade do negócio, essa tabela seria útil, como não faz sentido então vamos concatenar por região:

SELECT Continent,GROUP_CONCAT(Region ORDER BY Region DESC SEPARATOR ';') AS grupos_regioes
FROM country GROUP BY Continent;					

+---------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Continent     | grupos_regioes                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
+---------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Asia          | Southern and Central Asia;Southern and Central Asia;Southern and Central Asia;Southern and Central Asia;Southern and Central Asia;Southern and Central Asia;Southern and Central Asia;Southern and Central Asia;Southern and Central Asia;Southern and Central Asia;Southern and Central Asia;Southern and Central Asia;Southern and Central Asia;Southern and Central Asia;Southeast Asia;Southeast Asia;Southeast Asia;Southeast Asia;Southeast Asia;Southeast Asia;Southeast Asia;Southeast Asia;Southeast Asia;Southeast Asia;Southeast Asia;Middle East;Middle East;Middle East;Middle East;Middle East;Middle East;Middle East;Middle East;Middle East;Middle East;Middle East;Middle East;Middle East;Middle East;Middle East;Middle East;Middle East;Middle East;Eastern Asia;Eastern Asia;Eastern Asia;Eastern Asia;Eastern Asia;Eastern Asia;Eastern Asia;Eastern Asia                                  |
| Europe        | Western Europe;Western Europe;Western Europe;Western Europe;Western Europe;Western Europe;Western Europe;Western Europe;Western Europe;Southern Europe;Southern Europe;Southern Europe;Southern Europe;Southern Europe;Southern Europe;Southern Europe;Southern Europe;Southern Europe;Southern Europe;Southern Europe;Southern Europe;Southern Europe;Southern Europe;Southern Europe;Nordic Countries;Nordic Countries;Nordic Countries;Nordic Countries;Nordic Countries;Nordic Countries;Nordic Countries;Eastern Europe;Eastern Europe;Eastern Europe;Eastern Europe;Eastern Europe;Eastern Europe;Eastern Europe;Eastern Europe;Eastern Europe;Eastern Europe;British Islands;British Islands;Baltic Countries;Baltic Countries;Baltic Countries                                                                                                                                                            |
| North America | North America;North America;North America;North America;North America;Central America;Central America;Central America;Central America;Central America;Central America;Central America;Central America;Caribbean;Caribbean;Caribbean;Caribbean;Caribbean;Caribbean;Caribbean;Caribbean;Caribbean;Caribbean;Caribbean;Caribbean;Caribbean;Caribbean;Caribbean;Caribbean;Caribbean;Caribbean;Caribbean;Caribbean;Caribbean;Caribbean;Caribbean;Caribbean                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| Africa        | Western Africa;Western Africa;Western Africa;Western Africa;Western Africa;Western Africa;Western Africa;Western Africa;Western Africa;Western Africa;Western Africa;Western Africa;Western Africa;Western Africa;Western Africa;Western Africa;Western Africa;Southern Africa;Southern Africa;Southern Africa;Southern Africa;Southern Africa;Northern Africa;Northern Africa;Northern Africa;Northern Africa;Northern Africa;Northern Africa;Northern Africa;Eastern Africa;Eastern Africa;Eastern Africa;Eastern Africa;Eastern Africa;Eastern Africa;Eastern Africa;Eastern Africa;Eastern Africa;Eastern Africa;Eastern Africa;Eastern Africa;Eastern Africa;Eastern Africa;Eastern Africa;Eastern Africa;Eastern Africa;Eastern Africa;Eastern Africa;Eastern Africa;Central Africa;Central Africa;Central Africa;Central Africa;Central Africa;Central Africa;Central Africa;Central Africa;Central Africa |
| Oceania       | Polynesia;Polynesia;Polynesia;Polynesia;Polynesia;Polynesia;Polynesia;Polynesia;Polynesia;Polynesia;Micronesia/Caribbean;Micronesia;Micronesia;Micronesia;Micronesia;Micronesia;Micronesia;Micronesia;Melanesia;Melanesia;Melanesia;Melanesia;Melanesia;Australia and New Zealand;Australia and New Zealand;Australia and New Zealand;Australia and New Zealand;Australia and New Zealand                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| Antarctica    | Antarctica;Antarctica;Antarctica;Antarctica;Antarctica                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| South America | South America;South America;South America;South America;South America;South America;South America;South America;South America;South America;South America;South America;South America;South America                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
+---------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
7 rows in set (0.00 sec)



