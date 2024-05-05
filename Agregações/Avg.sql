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

-- AVG, média por região do Brasil --
-- Média por estado com sigla estado:
-- Tabela a = senso
-- Tabela b = uf
SELECT a.cod_uf,b.sigla_uf,AVG(a.populacao) FROM senso a
INNER JOIN uf b
	ON 	a.cod_uf = b.cod_uf
	WHERE a.ano = 2014
GROUP BY a.cod_uf,b.sigla_uf
ORDER BY 3 desc;  --<-- Ordernado pelo 3 tabela

+--------+----------+--------------+
| cod_uf | sigla_uf | media_pop_UF |
+--------+----------+--------------+
| 53     | DF       | 2852372.0000 |
| 33     | RJ       |  178925.7935 |
| 35     | SP       |   68271.7891 |
| 13     | AM       |   62479.7258 |
| 15     | PA       |   56283.8889 |
| 26     | PE       |   50149.8757 |
| 32     | ES       |   49808.3205 |
| 23     | CE       |   48058.6467 |
| 16     | AP       |   46932.0000 |
| 29     | BA       |   36274.2710 |
| 12     | AC       |   35913.6818 |
| 11     | RO       |   33625.5962 |
| 50     | MS       |   33160.2152 |
| 14     | RR       |   33129.0667 |
| 27     | AL       |   32565.9804 |
| 21     | MA       |   31570.8940 |
| 28     | SE       |   29594.3200 |
| 41     | PR       |   27773.6642 |
| 52     | GO       |   26517.1626 |
| 31     | MG       |   24307.2649 |
| 51     | MT       |   22867.7801 |
| 42     | SC       |   22803.8915 |
| 43     | RS       |   22549.8471 |
| 24     | RN       |   20410.2395 |
| 25     | PB       |   17685.5830 |
| 22     | PI       |   14262.1339 |
| 17     | TO       |   10768.9209 |
+--------+----------+--------------+

-- Agora média (AVG) de populacao por região:
 select a.regiao,avg(a.populacao) as media_pop_regiao 
	from senso a
	where a.ano=2014
	group by a.regiao;
+----------------------------------------------------------------------------------------------------------------+------------------+
| regiao                                                                                                         | media_pop_regiao |
+----------------------------------------------------------------------------------------------------------------+------------------+
|                                                                                                                |       21085.5109 |
| RM Manaus                                                                                                      |      190622.1538 |
| RM da Capital                                                                                                  |       74948.8000 |
| RM Central                                                                                                     |       15012.0000 |
| RM do Sul do Estado                                                                                            |       12629.5000 |
| RM Belém                                                                                                       |      340237.2857 |
| RM Santarém                                                                                                    |      107595.3333 |
| RM Macapá                                                                                                      |      278661.0000 |
| RM Gurupi                                                                                                      |       10566.1111 |
| RM Palmas                                                                                                      |       27921.0625 |
| RM Grande São Luís                                                                                             |      169148.8889 |
| RM Sudoeste Maranhense                                                                                         |       43956.6250 |
| RIDE TERESINA - Região Integrada de Desenvolvimento da Grande Teresina                                         |       84947.1429 |
| RM Fortaleza                                                                                                   |      207893.3684 |
| RM Cariri                                                                                                      |       65578.7778 |
| RM Natal                                                                                                       |      135045.9091 |
| RM do Vale do Piancó                                                                                           |        8420.2353 |
| RM de Esperança                                                                                                |       15508.4444 |
| RM Guarabira                                                                                                   |       11062.3529 |
| RM Campina Grande                                                                                              |       33198.7895 |
| RM João Pessoa                                                                                                 |      103242.8333 |
| RM de Cajazeiras                                                                                               |       11644.7333 |
| RM de Sousa                                                                                                    |       12899.2222 |
| RM de Araruna                                                                                                  |       11154.1667 |
| RM Patos                                                                                                       |        9950.2609 |
| RM do Vale do Mamanguape                                                                                       |       13227.6667 |
| RM de Barra de Santa Rosa                                                                                      |       10049.6250 |
| RM de Itabaiana                                                                                                |       11290.5833 |
| RM Recife                                                                                                      |      277661.5000 |
| RIDE Petrolina/Juazeiro Região Administrativa Integrada de Desenvolvimento do Polo Petrolina/PE e Juazeiro/BA  |       94054.1250 |
| RM do Sertão                                                                                                   |       22971.4286 |
| RM do Vale do Paraíba                                                                                          |       13641.5833 |
| RM Agreste                                                                                                     |       33871.5333 |
| RM Maceió                                                                                                      |      107789.4167 |
| RM de Palmeira dos Índios                                                                                      |       22687.4286 |
| RM da Zona da Mata                                                                                             |       20714.8125 |
| RM de Caetés                                                                                                   |       44502.2000 |
| RM do Médio Sertão                                                                                             |       16737.5556 |
| RM Aracaju                                                                                                     |      228161.7500 |
| RM Feira de Santana                                                                                            |       57601.1250 |
| RM Salvador                                                                                                    |      301528.0000 |
| RM Vale do Aço                                                                                                 |       27012.6071 |
| RM Belo Horizonte                                                                                              |      115675.4600 |
| RIDE - Região Integrada de Desenvolvimento do Distrito Federal e Entorno                                       |      187188.8182 |
| RM Grande Vitória                                                                                              |      269156.5714 |
| RM Rio de Janeiro                                                                                              |      582374.6190 |
| Aglomeração Urbana de Piracicaba-AU- Piracicaba                                                                |       63641.5000 |
| RM de Sorocaba                                                                                                 |       71817.6923 |
| RM Campinas                                                                                                    |      152799.8000 |
| RM do Vale do Paraíba e Litoral Norte                                                                          |       62317.7436 |
| RM São Paulo                                                                                                   |      536800.1026 |
| RM Baixada Santista                                                                                            |      197957.7778 |
| Aglomeração Urbana de Jundiaí                                                                                  |      108789.1429 |
| RM Curitiba                                                                                                    |      119551.0690 |
| RM de Umuarama                                                                                                 |       13022.3750 |
| RM Londrina                                                                                                    |       42688.5600 |
| RM Maringá                                                                                                     |       29762.8846 |
| RM do Contestado                                                                                               |       11593.5778 |
| RM do Extremo Oeste                                                                                            |        6999.4583 |
| RM do Alto Vale do Itajaí                                                                                      |       10181.2500 |
| RM Chapecó                                                                                                     |       14436.4375 |
| RM Florianópolis                                                                                               |       50531.9091 |
| RM Lages                                                                                                       |       15511.7391 |
| RM Vale do Itajaí                                                                                              |       47294.1875 |
| RM Norte/Nordeste Catarinense                                                                                  |       50929.7308 |
| RM Carbonífera                                                                                                 |       22555.5000 |
| RM Tubarão                                                                                                     |       19805.2632 |
| RM Foz do Rio Itajaí                                                                                           |       67575.2222 |
| RM Porto Alegre                                                                                                |      124717.2941 |
| RM da Serra Gaúcha                                                                                             |       60791.9231 |
| Aglomeração Urbana do Litoral Norte - Rio Grande do Sul                                                        |       15368.3000 |
| Aglomeração Urbana do Sul - Rio Grande do Sul                                                                  |      120826.8000 |
| RM Vale do Rio Cuiabá                                                                                          |       75558.3077 |
| RM Goiânia                                                                                                     |      119228.0000 |
+----------------------------------------------------------------------------------------------------------------+------------------+
74 rows in set (0.03 sec)

