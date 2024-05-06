-- Usando a base de dados curso, disponibilizada , iremos fazer uma consulta com todas as funções de agregações da tabela senso:
-- Nível Brasil geral -- 
SELECT AVG(a.populacao)media_pop,
		 MIN (a.populacao)menor_pop,
		 MAX(a.populacao)maior_pop,
		 SUM(a.populacao)total_pop,
		 COUNT(*)qtd_cidades
FROM senso a
WHERE a.ano = 2014;


+------------+-----------+-----------+-----------+-------------+
| media_pop  | menor_pop | maior_pop | total_pop | qtd_cidades |
+------------+-----------+-----------+-----------+-------------+
| 36409.2492 |       822 |  11895893 | 202799518 |        5570 |
+------------+-----------+-----------+-----------+-------------+

-- Agora divida por Estado --
SELECT a.estado, AVG(a.populacao)media_pop,
		 MIN (a.populacao)menor_pop,
		 MAX(a.populacao)maior_pop,
		 SUM(a.populacao)total_pop,
		 COUNT(*)qtd_cidades
FROM senso a
WHERE a.ano = 2014;
GROUP BY a.estado
ORDER BY 2 desc;  

+---------------------+--------------+-----------+-----------+-----------+-------------+
| estado              | media_pop    | menor_pop | maior_pop | total_pop | qtd_cidades |
+---------------------+--------------+-----------+-----------+-----------+-------------+
| Distrito Federal    | 2852372.0000 |   2852372 |   2852372 |   2852372 |           1 |
| Rio de Janeiro      |  178925.7935 |      5380 |   6453682 |  16461173 |          92 |
| São Paulo           |   68271.7891 |       835 |  11895893 |  44035304 |         645 |
| Amazonas            |   62479.7258 |      5599 |   2020301 |   3873743 |          62 |
| Pará                |   56283.8889 |      3303 |   1432844 |   8104880 |         144 |
| Pernambuco          |   50149.8757 |      2884 |   1608488 |   9277727 |         185 |
| Espírito Santo      |   49808.3205 |      4669 |    476428 |   3885049 |          78 |
| Ceará               |   48058.6467 |      3812 |   2571896 |   8842791 |         184 |
| Amapá               |   46932.0000 |      4404 |    446757 |    750912 |          16 |
| Bahia               |   36274.2710 |      3644 |   2902927 |  15126371 |         417 |
| Acre                |   35913.6818 |      5593 |    363928 |    790101 |          22 |
| Rondônia            |   33625.5962 |      2432 |    494013 |   1748531 |          52 |
| Mato Grosso do Sul  |   33160.2152 |      3005 |    843120 |   2619657 |          79 |
| Roraima             |   33129.0667 |      7309 |    314900 |    496936 |          15 |
| Alagoas             |   32565.9804 |      2958 |   1005319 |   3321730 |         102 |
| Maranhão            |   31570.8940 |      3539 |   1064197 |   6850884 |         217 |
| Sergipe             |   29594.3200 |      2366 |    623766 |   2219574 |          75 |
| Paraná              |   27773.6642 |      1416 |   1864416 |  11081692 |         399 |
| Goiás               |   26517.1626 |      1093 |   1412364 |   6523222 |         246 |
| Minas Gerais        |   24307.2649 |       822 |   2491109 |  20734097 |         853 |
| Mato Grosso         |   22867.7801 |      1000 |    575480 |   3224357 |         141 |
| Santa Catarina      |   22803.8915 |      1389 |    554601 |   6727148 |         295 |
| Rio Grande do Sul   |   22549.8471 |      1286 |   1472482 |  11207274 |         497 |
| Rio Grande do Norte |   20410.2395 |      1705 |    862044 |   3408510 |         167 |
| Paraíba             |   17685.5830 |      1767 |    780738 |   3943885 |         223 |
| Piauí               |   14262.1339 |      1239 |    840600 |   3194718 |         224 |
| Tocantins           |   10768.9209 |      1091 |    265409 |   1496880 |         139 |
+---------------------+--------------+-----------+-----------+-----------+-------------+
27 rows in set (0.02 sec)
