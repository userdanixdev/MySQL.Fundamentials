-- Ranking 2 :
-- Ranking dos estados proporcional a quantidade de cidades da tabela senso:
SELECT @posicao := @posicao + 1 AS Posição,
		 prequery.Estado,
		 prequery.Qtd_cidades
		 FROM 
		 (SELECT @posicao := 0)variavel,
		 (SELECT estado,COUNT(cod_mun)Qtd_cidades
		 FROM senso 
		 WHERE ano = 2014
		 GROUP BY estado
		 ORDER BY COUNT(cod_mun) DESC) prequery;

+-----------+---------------------+-------------+
| Posição   | Estado              | Qtd_cidades |
+-----------+---------------------+-------------+
|         1 | Minas Gerais        |         853 |
|         2 | São Paulo           |         645 |
|         3 | Rio Grande do Sul   |         497 |
|         4 | Bahia               |         417 |
|         5 | Paraná              |         399 |
|         6 | Santa Catarina      |         295 |
|         7 | Goiás               |         246 |
|         8 | Piauí               |         224 |
|         9 | Paraíba             |         223 |
|        10 | Maranhão            |         217 |
|        11 | Pernambuco          |         185 |
|        12 | Ceará               |         184 |
|        13 | Rio Grande do Norte |         167 |
|        14 | Pará                |         144 |
|        15 | Mato Grosso         |         141 |
|        16 | Tocantins           |         139 |
|        17 | Alagoas             |         102 |
|        18 | Rio de Janeiro      |          92 |
|        19 | Mato Grosso do Sul  |          79 |
|        20 | Espírito Santo      |          78 |
|        21 | Sergipe             |          75 |
|        22 | Amazonas            |          62 |
|        23 | Rondônia            |          52 |
|        24 | Acre                |          22 |
|        25 | Amapá               |          16 |
|        26 | Roraima             |          15 |
|        27 | Distrito Federal    |           1 |
+-----------+---------------------+-------------+
27 rows in set, 2 warnings (0.02 sec)



