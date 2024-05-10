use world;

SELECT a.name,a.population,
	case when a.population < 1000000 then 'pop < 1 M'
		   when a.population >= 1000000 AND a.population < 5000000 then 'pop>=1M e <50M'
		   when a.population < 100000000 then 'pop>=50M e <100M'
		   when a.population >= 100000000 then 'pop >=100M' END dados_demográficos
FROM country a
ORDER BY a.continent,a.population DESC LIMIT 14;

+-------------+------------+---------------------+
| name        | population | dados_demográficos  |
+-------------+------------+---------------------+
| China       | 1277558000 | pop>100M            |
| India       | 1013662000 | pop>100M            |
| Indonesia   |  212107000 | pop>=50M e <=100M   |
| Pakistan    |  156483000 | pop>=50M e <=100M   |
| Bangladesh  |  129155000 | pop>=50M e <=100M   |
| Japan       |  126714000 | pop>=50M e <=100M   |
| Vietnam     |   79832000 | pop>=50M e <=100M   |
| Philippines |   75967000 | pop>=50M e <=100M   |
| Iran        |   67702000 | pop>=50M e <=100M   |
| Turkey      |   66591000 | pop>=50M e <=100M   |
| Thailand    |   61399000 | pop>=50M e <=100M   |
| South Korea |   46844000 | pop>=50M e <=100M   |
| Myanmar     |   45611000 | pop>=50M e <=100M   |
| Uzbekistan  |   24318000 | pop>=50M e <=100M   |
+-------------+------------+---------------------+

