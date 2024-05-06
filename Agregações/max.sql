-- A função de agregação MAX retorna o maior valor da coluna, sendo assim:
use senso;
select a.regiao,max(a.populacao) as max_pop_regiao from senso a where a.ano = 2014  group by a.regiao order by a.regiao;
+----------------------------------------------------------------------------------------------------------------+----------------+
| regiao                                                                                                         | max_pop_regiao |
+----------------------------------------------------------------------------------------------------------------+----------------+
|                                                                                                                |         843120 |
| Aglomeração Urbana de Jundiaí                                                                                  |         397965 |
| Aglomeração Urbana de Piracicaba-AU- Piracicaba                                                                |         388412 |
| Aglomeração Urbana do Litoral Norte - Rio Grande do Sul                                                        |          46467 |
| Aglomeração Urbana do Sul - Rio Grande do Sul                                                                  |         342053 |
| RIDE - Região Integrada de Desenvolvimento do Distrito Federal e Entorno                                       |        2852372 |
| RIDE Petrolina/Juazeiro Região Administrativa Integrada de Desenvolvimento do Polo Petrolina/PE e Juazeiro/BA  |         326017 |
| RIDE TERESINA - Região Integrada de Desenvolvimento da Grande Teresina                                         |         840600 |
| RM Agreste                                                                                                     |         229329 |
| RM Aracaju                                                                                                     |         623766 |
| RM Baixada Santista                                                                                            |         433565 |
| RM Belém                                                                                                       |        1432844 |
| RM Belo Horizonte                                                                                              |        2491109 |
| RM Campina Grande                                                                                              |         402912 |
| RM Campinas                                                                                                    |        1154617 |
| RM Carbonífera                                                                                                 |         204667 |
| RM Cariri                                                                                                      |         263704 |
| RM Central                                                                                                     |          19981 |
| RM Chapecó                                                                                                     |         202009 |
| RM Curitiba                                                                                                    |        1864416 |
| RM da Capital                                                                                                  |         314900 |
| RM da Serra Gaúcha                                                                                             |         470223 |
| RM da Zona da Mata                                                                                             |          65764 |
| RM de Araruna                                                                                                  |          19855 |
| RM de Barra de Santa Rosa                                                                                      |          20312 |
| RM de Caetés                                                                                                   |          59830 |
| RM de Cajazeiras                                                                                               |          61030 |
| RM de Esperança                                                                                                |          32530 |
| RM de Itabaiana                                                                                                |          24613 |
| RM de Palmeira dos Índios                                                                                      |          73725 |
| RM de Sorocaba                                                                                                 |         637187 |
| RM de Sousa                                                                                                    |          68434 |
| RM de Umuarama                                                                                                 |         107319 |
| RM do Alto Vale do Itajaí                                                                                      |          66251 |
| RM do Contestado                                                                                               |          75048 |
| RM do Extremo Oeste                                                                                            |          38575 |
| RM do Médio Sertão                                                                                             |          47593 |
| RM do Sertão                                                                                                   |          51349 |
| RM do Sul do Estado                                                                                            |          26811 |
| RM do Vale do Mamanguape                                                                                       |          44030 |
| RM do Vale do Paraíba                                                                                          |          27185 |
| RM do Vale do Paraíba e Litoral Norte                                                                          |         681036 |
| RM do Vale do Piancó                                                                                           |          24317 |
| RM Feira de Santana                                                                                            |         612000 |
| RM Florianópolis                                                                                               |         461524 |
| RM Fortaleza                                                                                                   |        2571896 |
| RM Foz do Rio Itajaí                                                                                           |         201557 |
| RM Goiânia                                                                                                     |        1412364 |
| RM Grande São Luís                                                                                             |        1064197 |
| RM Grande Vitória                                                                                              |         476428 |
| RM Guarabira                                                                                                   |          57780 |
| RM Gurupi                                                                                                      |          82762 |
| RM João Pessoa                                                                                                 |         780738 |
| RM Lages                                                                                                       |         158846 |
| RM Londrina                                                                                                    |         543003 |
| RM Macapá                                                                                                      |         446757 |
| RM Maceió                                                                                                      |        1005319 |
| RM Manaus                                                                                                      |        2020301 |
| RM Maringá                                                                                                     |         391698 |
| RM Natal                                                                                                       |         862044 |
| RM Norte/Nordeste Catarinense                                                                                  |         554601 |
| RM Palmas                                                                                                      |         265409 |
| RM Patos                                                                                                       |         105531 |
| RM Porto Alegre                                                                                                |        1472482 |
| RM Recife                                                                                                      |        1608488 |
| RM Rio de Janeiro                                                                                              |        6453682 |
| RM Salvador                                                                                                    |        2902927 |
| RM Santarém                                                                                                    |         290521 |
| RM São Paulo                                                                                                   |       11895893 |
| RM Sudoeste Maranhense                                                                                         |         252320 |
| RM Tubarão                                                                                                     |         102087 |
| RM Vale do Aço                                                                                                 |         255266 |
| RM Vale do Itajaí                                                                                              |         334002 |
| RM Vale do Rio Cuiabá                                                                                          |         575480 |
+----------------------------------------------------------------------------------------------------------------+----------------+
74 rows in set (0.01 sec)


-- Agora ordenado pela segunda coluna do select com 'order by 2':
select a.regiao,max(a.populacao) as max_pop_regiao from senso a where a.ano = 2014  group by a.regiao order by 2;

+----------------------------------------------------------------------------------------------------------------+----------------+
| regiao                                                                                                         | max_pop_regiao |
+----------------------------------------------------------------------------------------------------------------+----------------+
| RM de Araruna                                                                                                  |          19855 |
| RM Central                                                                                                     |          19981 |
| RM de Barra de Santa Rosa                                                                                      |          20312 |
| RM do Vale do Piancó                                                                                           |          24317 |
| RM de Itabaiana                                                                                                |          24613 |
| RM do Sul do Estado                                                                                            |          26811 |
| RM do Vale do Paraíba                                                                                          |          27185 |
| RM de Esperança                                                                                                |          32530 |
| RM do Extremo Oeste                                                                                            |          38575 |
| RM do Vale do Mamanguape                                                                                       |          44030 |
| Aglomeração Urbana do Litoral Norte - Rio Grande do Sul                                                        |          46467 |
| RM do Médio Sertão                                                                                             |          47593 |
| RM do Sertão                                                                                                   |          51349 |
| RM Guarabira                                                                                                   |          57780 |
| RM de Caetés                                                                                                   |          59830 |
| RM de Cajazeiras                                                                                               |          61030 |
| RM da Zona da Mata                                                                                             |          65764 |
| RM do Alto Vale do Itajaí                                                                                      |          66251 |
| RM de Sousa                                                                                                    |          68434 |
| RM de Palmeira dos Índios                                                                                      |          73725 |
| RM do Contestado                                                                                               |          75048 |
| RM Gurupi                                                                                                      |          82762 |
| RM Tubarão                                                                                                     |         102087 |
| RM Patos                                                                                                       |         105531 |
| RM de Umuarama                                                                                                 |         107319 |
| RM Lages                                                                                                       |         158846 |
| RM Foz do Rio Itajaí                                                                                           |         201557 |
| RM Chapecó                                                                                                     |         202009 |
| RM Carbonífera                                                                                                 |         204667 |
| RM Agreste                                                                                                     |         229329 |
| RM Sudoeste Maranhense                                                                                         |         252320 |
| RM Vale do Aço                                                                                                 |         255266 |
| RM Cariri                                                                                                      |         263704 |
| RM Palmas                                                                                                      |         265409 |
| RM Santarém                                                                                                    |         290521 |
| RM da Capital                                                                                                  |         314900 |
| RIDE Petrolina/Juazeiro Região Administrativa Integrada de Desenvolvimento do Polo Petrolina/PE e Juazeiro/BA  |         326017 |
| RM Vale do Itajaí                                                                                              |         334002 |
| Aglomeração Urbana do Sul - Rio Grande do Sul                                                                  |         342053 |
| Aglomeração Urbana de Piracicaba-AU- Piracicaba                                                                |         388412 |
| RM Maringá                                                                                                     |         391698 |
| Aglomeração Urbana de Jundiaí                                                                                  |         397965 |
| RM Campina Grande                                                                                              |         402912 |
| RM Baixada Santista                                                                                            |         433565 |
| RM Macapá                                                                                                      |         446757 |
| RM Florianópolis                                                                                               |         461524 |
| RM da Serra Gaúcha                                                                                             |         470223 |
| RM Grande Vitória                                                                                              |         476428 |
| RM Londrina                                                                                                    |         543003 |
| RM Norte/Nordeste Catarinense                                                                                  |         554601 |
| RM Vale do Rio Cuiabá                                                                                          |         575480 |
| RM Feira de Santana                                                                                            |         612000 |
| RM Aracaju                                                                                                     |         623766 |
| RM de Sorocaba                                                                                                 |         637187 |
| RM do Vale do Paraíba e Litoral Norte                                                                          |         681036 |
| RM João Pessoa                                                                                                 |         780738 |
| RIDE TERESINA - Região Integrada de Desenvolvimento da Grande Teresina                                         |         840600 |
|                                                                                                                |         843120 |
| RM Natal                                                                                                       |         862044 |
| RM Maceió                                                                                                      |        1005319 |
| RM Grande São Luís                                                                                             |        1064197 |
| RM Campinas                                                                                                    |        1154617 |
| RM Goiânia                                                                                                     |        1412364 |
| RM Belém                                                                                                       |        1432844 |
| RM Porto Alegre                                                                                                |        1472482 |
| RM Recife                                                                                                      |        1608488 |
| RM Curitiba                                                                                                    |        1864416 |
| RM Manaus                                                                                                      |        2020301 |
| RM Belo Horizonte                                                                                              |        2491109 |
| RM Fortaleza                                                                                                   |        2571896 |
| RIDE - Região Integrada de Desenvolvimento do Distrito Federal e Entorno                                       |        2852372 |
| RM Salvador                                                                                                    |        2902927 |
| RM Rio de Janeiro                                                                                              |        6453682 |
| RM São Paulo                                                                                                   |       11895893 |
+----------------------------------------------------------------------------------------------------------------+----------------+
74 rows in set (0.01 sec)
-- Máximo da população por estados do Brasil:
SELECT a.estado,max(a.populacao) as pop_max_estados FROM senso a where a.ano = 2014 GROUP BY a.estado ORDER BY 2;
+---------------------+-----------------+
| estado              | pop_max_estados |
+---------------------+-----------------+
| Tocantins           |          265409 |
| Roraima             |          314900 |
| Acre                |          363928 |
| Amapá               |          446757 |
| Espírito Santo      |          476428 |
| Rondônia            |          494013 |
| Santa Catarina      |          554601 |
| Mato Grosso         |          575480 |
| Sergipe             |          623766 |
| Paraíba             |          780738 |
| Piauí               |          840600 |
| Mato Grosso do Sul  |          843120 |
| Rio Grande do Norte |          862044 |
| Alagoas             |         1005319 |
| Maranhão            |         1064197 |
| Goiás               |         1412364 |
| Pará                |         1432844 |
| Rio Grande do Sul   |         1472482 |
| Pernambuco          |         1608488 |
| Paraná              |         1864416 |
| Amazonas            |         2020301 |
| Minas Gerais        |         2491109 |
| Ceará               |         2571896 |
| Distrito Federal    |         2852372 |
| Bahia               |         2902927 |
| Rio de Janeiro      |         6453682 |
| São Paulo           |        11895893 |
+---------------------+-----------------+
27 rows in set (0.02 sec)

-- Utilizando o mesmo script mas ordenado por descendente: 
SELECT a.estado,max(a.populacao) as pop_max_estados FROM senso a where a.ano = 2014 GROUP BY a.estado ORDER BY 2 desc:
+---------------------+-----------------+
| estado              | pop_max_estados |
+---------------------+-----------------+
| São Paulo           |        11895893 |
| Rio de Janeiro      |         6453682 |
| Bahia               |         2902927 |
| Distrito Federal    |         2852372 |
| Ceará               |         2571896 |
| Minas Gerais        |         2491109 |
| Amazonas            |         2020301 |
| Paraná              |         1864416 |
| Pernambuco          |         1608488 |
| Rio Grande do Sul   |         1472482 |
| Pará                |         1432844 |
| Goiás               |         1412364 |
| Maranhão            |         1064197 |
| Alagoas             |         1005319 |
| Rio Grande do Norte |          862044 |
| Mato Grosso do Sul  |          843120 |
| Piauí               |          840600 |
| Paraíba             |          780738 |
| Sergipe             |          623766 |
| Mato Grosso         |          575480 |
| Santa Catarina      |          554601 |
| Rondônia            |          494013 |
| Espírito Santo      |          476428 |
| Amapá               |          446757 |
| Acre                |          363928 |
| Roraima             |          314900 |
| Tocantins           |          265409 |
+---------------------+-----------------+


