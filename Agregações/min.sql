-- A função MIN irá retornar o menor valor:
-- Função MIN --
SELECT MIN(a.populacao) as pop_min FROM senso a
WHERE a.ano = 2014;
-- Detalhe, se colocarmos o ALIAS na tabela, temos que colocar em todos os campos --
-- O resultado é 822 -- A cidade co menor população do Brasil em 2014 -- 
-- Para aprofundar mais os detalhes, podemos selecionar a coluna estado da base de dados senso:
SELECT a.estado,MIN(a.populacao) as pop_min_estados FROM senso a where a.ano = 2014 GROUP BY estado ORDER BY 2;  <- -- ORDENADO PELA SEGUNDA COLUNA DA CONSULTA --
-- Ao selecionar mais de uma coluna, obrigatoriamente agrupar com 'GROUP BY' --
+---------------------+-----------------+
| estado              | pop_min_estados |
+---------------------+-----------------+
| Minas Gerais        |             822 |
| São Paulo           |             835 |
| Mato Grosso         |            1000 |
| Tocantins           |            1091 |
| Goiás               |            1093 |
| Piauí               |            1239 |
| Rio Grande do Sul   |            1286 |
| Santa Catarina      |            1389 |
| Paraná              |            1416 |
| Rio Grande do Norte |            1705 |
| Paraíba             |            1767 |
| Sergipe             |            2366 |
| Rondônia            |            2432 |
| Pernambuco          |            2884 |
| Alagoas             |            2958 |
| Mato Grosso do Sul  |            3005 |
| Pará                |            3303 |
| Maranhão            |            3539 |
| Bahia               |            3644 |
| Ceará               |            3812 |
| Amapá               |            4404 |
| Espírito Santo      |            4669 |
| Rio de Janeiro      |            5380 |
| Acre                |            5593 |
| Amazonas            |            5599 |
| Roraima             |            7309 |
| Distrito Federal    |         2852372 |
+---------------------+-----------------+
27 rows in set (0.02 sec)

-- Mínimo da região do Brasil --

SELECT a.regiao, MIN(a.populacao)AS min_pop_reg from senso a WHERE a.ano = 2014 GROUP BY a.regiao ORDER BY a.regiao;

+----------------------------------------------------------------------------------------------------------------+-------------+
| regiao                                                                                                         | min_pop_reg |
+----------------------------------------------------------------------------------------------------------------+-------------+
|                                                                                                                |         822 |
| Aglomeração Urbana de Jundiaí                                                                                  |       26921 |
| Aglomeração Urbana de Piracicaba-AU- Piracicaba                                                                |        3073 |
| Aglomeração Urbana do Litoral Norte - Rio Grande do Sul                                                        |        2613 |
| Aglomeração Urbana do Sul - Rio Grande do Sul                                                                  |        2871 |
| RIDE - Região Integrada de Desenvolvimento do Distrito Federal e Entorno                                       |        2723 |
| RIDE Petrolina/Juazeiro Região Administrativa Integrada de Desenvolvimento do Polo Petrolina/PE e Juazeiro/BA  |       14261 |
| RIDE TERESINA - Região Integrada de Desenvolvimento da Grande Teresina                                         |        1239 |
| RM Agreste                                                                                                     |        5169 |
| RM Aracaju                                                                                                     |       28093 |
| RM Baixada Santista                                                                                            |       51580 |
| RM Belém                                                                                                       |       19197 |
| RM Belo Horizonte                                                                                              |        2872 |
| RM Campina Grande                                                                                              |        4475 |
| RM Campinas                                                                                                    |       12779 |
| RM Carbonífera                                                                                                 |        2079 |
| RM Cariri                                                                                                      |       15048 |
| RM Central                                                                                                     |       10043 |
| RM Chapecó                                                                                                     |        1479 |
| RM Curitiba                                                                                                    |        5822 |
| RM da Capital                                                                                                  |       11632 |
| RM da Serra Gaúcha                                                                                             |        1781 |
| RM da Zona da Mata                                                                                             |        4253 |
| RM de Araruna                                                                                                  |        3490 |
| RM de Barra de Santa Rosa                                                                                      |        2984 |
| RM de Caetés                                                                                                   |        6819 |
| RM de Cajazeiras                                                                                               |        2514 |
| RM de Esperança                                                                                                |        2461 |
| RM de Itabaiana                                                                                                |        4448 |
| RM de Palmeira dos Índios                                                                                      |        4659 |
| RM de Sorocaba                                                                                                 |        3092 |
| RM de Sousa                                                                                                    |        2787 |
| RM de Umuarama                                                                                                 |        1922 |
| RM do Alto Vale do Itajaí                                                                                      |        2312 |
| RM do Contestado                                                                                               |        1670 |
| RM do Extremo Oeste                                                                                            |        1389 |
| RM do Médio Sertão                                                                                             |        8867 |
| RM do Sertão                                                                                                   |        9209 |
| RM do Sul do Estado                                                                                            |        7309 |
| RM do Vale do Mamanguape                                                                                       |        5252 |
| RM do Vale do Paraíba                                                                                          |        2958 |
| RM do Vale do Paraíba e Litoral Norte                                                                          |        2532 |
| RM do Vale do Piancó                                                                                           |        2526 |
| RM Feira de Santana                                                                                            |        8532 |
| RM Florianópolis                                                                                               |        2838 |
| RM Fortaleza                                                                                                   |       12713 |
| RM Foz do Rio Itajaí                                                                                           |       16897 |
| RM Goiânia                                                                                                     |        3485 |
| RM Grande São Luís                                                                                             |       16276 |
| RM Grande Vitória                                                                                              |       19585 |
| RM Guarabira                                                                                                   |        3172 |
| RM Gurupi                                                                                                      |        1666 |
| RM João Pessoa                                                                                                 |       12635 |
| RM Lages                                                                                                       |        2301 |
| RM Londrina                                                                                                    |        1890 |
| RM Macapá                                                                                                      |      110565 |
| RM Maceió                                                                                                      |        5844 |
| RM Manaus                                                                                                      |        8864 |
| RM Maringá                                                                                                     |        2662 |
| RM Natal                                                                                                       |       11628 |
| RM Norte/Nordeste Catarinense                                                                                  |        3606 |
| RM Palmas                                                                                                      |        1091 |
| RM Patos                                                                                                       |        1868 |
| RM Porto Alegre                                                                                                |        5249 |
| RM Recife                                                                                                      |       19579 |
| RM Rio de Janeiro                                                                                              |       32140 |
| RM Salvador                                                                                                    |       19985 |
| RM Santarém                                                                                                    |       15341 |
| RM São Paulo                                                                                                   |       15028 |
| RM Sudoeste Maranhense                                                                                         |        7563 |
| RM Tubarão                                                                                                     |        2122 |
| RM Vale do Aço                                                                                                 |        3065 |
| RM Vale do Itajaí                                                                                              |        3883 |
| RM Vale do Rio Cuiabá                                                                                          |        2665 |
+----------------------------------------------------------------------------------------------------------------+-------------+



