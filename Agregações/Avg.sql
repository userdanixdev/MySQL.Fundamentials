USE curso;
		
SELECT * FROM senso;
-- AVG é uma função de agregação que retorna a média de valores de um grupo. Valores nulos são ignorados:
SELECT AVG(populacao) AS media_pop FROM senso;
-- Sendo assim, vai somar todas as cidadas e retornar a média da população geral da tabela senso é: 35.242,1764
-- Se quiser adicionar uma cláusula filtrada por ano:
SELECT AVG(populacao)AS media_pop_2014 FROM senso WHERE ano = 2014;
-- O resultado é : 36.409,2492 é a média.

-- Média por estado :
SELECT estado,AVG(populacao) AS media_pop_estados FROM senso WHERE ano = 2014 GROUP BY estado ORDER BY 2 desc; -- order by 2 irá ordernar a partir da coluna 2 da consulta, ou seja. 'media_pop_estados'.
+---------------------+-------------------+
| estado              | media_pop_estados |
+---------------------+-------------------+
| Distrito Federal    |      2852372.0000 |
| Rio de Janeiro      |       178925.7935 |
| São Paulo           |        68271.7891 |
| Amazonas            |        62479.7258 |
| Pará                |        56283.8889 |
| Pernambuco          |        50149.8757 |
| Espírito Santo      |        49808.3205 |
| Ceará               |        48058.6467 |
| Amapá               |        46932.0000 |
| Bahia               |        36274.2710 |
| Acre                |        35913.6818 |
| Rondônia            |        33625.5962 |
| Mato Grosso do Sul  |        33160.2152 |
| Roraima             |        33129.0667 |
| Alagoas             |        32565.9804 |
| Maranhão            |        31570.8940 |
| Sergipe             |        29594.3200 |
| Paraná              |        27773.6642 |
| Goiás               |        26517.1626 |
| Minas Gerais        |        24307.2649 |
| Mato Grosso         |        22867.7801 |
| Santa Catarina      |        22803.8915 |
| Rio Grande do Sul   |        22549.8471 |
| Rio Grande do Norte |        20410.2395 |
| Paraíba             |        17685.5830 |
| Piauí               |        14262.1339 |
| Tocantins           |        10768.9209 |
+---------------------+-------------------+
  
