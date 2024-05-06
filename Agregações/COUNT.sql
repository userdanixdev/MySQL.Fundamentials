-- Usando o count para a base de dados curso -- 
-- O count rertorna a contagem do número de cidades por ano:
SELECT a.ano,count(*) as qtd_cidades FROM senso a GROUP BY a.ano;
+------+-------------+
| ano  | qtd_cidades |
+------+-------------+
| 2010 |        5565 |
| 2011 |        5565 |
| 2012 |        5565 |
| 2013 |        5570 |
| 2014 |        5570 |
+------+-------------+
-- Fazer a contagem de códigos de unidade federativa do Brasil:
SELECT COUNT(cod_uf) FROM senso;
-- Irá retornar 27.835 códigos d uf --
SELECT COUNT(DISTINCT cod_uf) FROM senso; <-- REPARE QUE A CONTAGEM É DE VALOREES DISTINTOS, NÃO REPETIDOS <--
-- Irá retornar os códigos sem repetição : 27 Unidades Federativas -- 
-- Contagem por ESTADOS do BRASIL:
SELECT a.estado,count(*) FROM senso a WHERE a.ano = 2014 GROUP BY a.estado ORDER BY 2 DESC;
-- O resultado é o mesmo usando o count para a coluna (a.estado) -- 
SELECT a.estado,count(a.estado) FROM senso a WHERE a.ano = 2014 GROUP BY a.estado ORDER BY 2 DESC;

+---------------------+----------+
| estado              | count(*) |
+---------------------+----------+
| Minas Gerais        |      853 |
| São Paulo           |      645 |
| Rio Grande do Sul   |      497 |
| Bahia               |      417 |
| Paraná              |      399 |
| Santa Catarina      |      295 |
| Goiás               |      246 |
| Piauí               |      224 |
| Paraíba             |      223 |
| Maranhão            |      217 |
| Pernambuco          |      185 |
| Ceará               |      184 |
| Rio Grande do Norte |      167 |
| Pará                |      144 |
| Mato Grosso         |      141 |
| Tocantins           |      139 |
| Alagoas             |      102 |
| Rio de Janeiro      |       92 |
| Mato Grosso do Sul  |       79 |
| Espírito Santo      |       78 |
| Sergipe             |       75 |
| Amazonas            |       62 |
| Rondônia            |       52 |
| Acre                |       22 |
| Amapá               |       16 |
| Roraima             |       15 |
| Distrito Federal    |        1 |
+---------------------+----------+
27 rows in set (0.02 sec)
-- Fazer contagem por região :
SELECT a.regiao,count(*) FROM senso a 
WHERE ano =2014
GROUP BY a.regiao 
ORDER BY 2 desc;

+----------------------------------------------------------------------------------------------------------------+----------+
| regiao                                                                                                         | count(*) |
+----------------------------------------------------------------------------------------------------------------+----------+
|                                                                                                                |     4343 |
| RM Belo Horizonte                                                                                              |       50 |
| RM do Extremo Oeste                                                                                            |       48 |
| RM do Contestado                                                                                               |       45 |
| RM do Vale do Paraíba e Litoral Norte                                                                          |       39 |
| RM São Paulo                                                                                                   |       39 |
| RM Porto Alegre                                                                                                |       34 |
| RM Chapecó                                                                                                     |       32 |
| RM Curitiba                                                                                                    |       29 |
| RM do Alto Vale do Itajaí                                                                                      |       28 |
| RM Vale do Aço                                                                                                 |       28 |
| RM de Sorocaba                                                                                                 |       26 |
| RM Carbonífera                                                                                                 |       26 |
| RM Norte/Nordeste Catarinense                                                                                  |       26 |
| RM Maringá                                                                                                     |       26 |
| RM Londrina                                                                                                    |       25 |
| RM de Umuarama                                                                                                 |       24 |
| RM Patos                                                                                                       |       23 |
| RM Lages                                                                                                       |       23 |
| RM Florianópolis                                                                                               |       22 |
| Aglomeração Urbana de Piracicaba-AU- Piracicaba                                                                |       22 |
| RIDE - Região Integrada de Desenvolvimento do Distrito Federal e Entorno                                       |       22 |
| RM Rio de Janeiro                                                                                              |       21 |
| RM Campinas                                                                                                    |       20 |
| RM Goiânia                                                                                                     |       20 |
| Aglomeração Urbana do Litoral Norte - Rio Grande do Sul                                                        |       20 |
| RM Campina Grande                                                                                              |       19 |
| RM Fortaleza                                                                                                   |       19 |
| RM Tubarão                                                                                                     |       19 |
| RM Gurupi                                                                                                      |       18 |
| RM Guarabira                                                                                                   |       17 |
| RM do Vale do Piancó                                                                                           |       17 |
| RM Vale do Itajaí                                                                                              |       16 |
| RM Palmas                                                                                                      |       16 |
| RM da Zona da Mata                                                                                             |       16 |
| RM Feira de Santana                                                                                            |       16 |
| RM de Cajazeiras                                                                                               |       15 |
| RM Agreste                                                                                                     |       15 |
| RM Recife                                                                                                      |       14 |
| RIDE TERESINA - Região Integrada de Desenvolvimento da Grande Teresina                                         |       14 |
| RM Manaus                                                                                                      |       13 |
| RM da Serra Gaúcha                                                                                             |       13 |
| RM Vale do Rio Cuiabá                                                                                          |       13 |
| RM Salvador                                                                                                    |       13 |
| RM Maceió                                                                                                      |       12 |
| RM do Vale do Paraíba                                                                                          |       12 |
| RM João Pessoa                                                                                                 |       12 |
| RM de Itabaiana                                                                                                |       12 |
| RM Natal                                                                                                       |       11 |
| RM Grande São Luís                                                                                             |        9 |
| RM do Médio Sertão                                                                                             |        9 |
| RM Foz do Rio Itajaí                                                                                           |        9 |
| RM Cariri                                                                                                      |        9 |
| RM Baixada Santista                                                                                            |        9 |
| RM de Esperança                                                                                                |        9 |
| RM de Sousa                                                                                                    |        9 |
| RM do Vale do Mamanguape                                                                                       |        9 |
| RIDE Petrolina/Juazeiro Região Administrativa Integrada de Desenvolvimento do Polo Petrolina/PE e Juazeiro/BA  |        8 |
| RM Sudoeste Maranhense                                                                                         |        8 |
| RM de Barra de Santa Rosa                                                                                      |        8 |
| RM do Sertão                                                                                                   |        7 |
| Aglomeração Urbana de Jundiaí                                                                                  |        7 |
| RM de Palmeira dos Índios                                                                                      |        7 |
| RM Belém                                                                                                       |        7 |
| RM Grande Vitória                                                                                              |        7 |
| RM de Araruna                                                                                                  |        6 |
| RM de Caetés                                                                                                   |        5 |
| Aglomeração Urbana do Sul - Rio Grande do Sul                                                                  |        5 |
| RM da Capital                                                                                                  |        5 |
| RM Aracaju                                                                                                     |        4 |
| RM do Sul do Estado                                                                                            |        4 |
| RM Santarém                                                                                                    |        3 |
| RM Macapá                                                                                                      |        2 |
| RM Central                                                                                                     |        2 |
+----------------------------------------------------------------------------------------------------------------+----------+
74 rows in set (0.02 sec)

      


