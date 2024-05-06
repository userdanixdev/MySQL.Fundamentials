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
