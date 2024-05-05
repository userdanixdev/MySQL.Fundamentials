-- A função MIN irá retornar o menor valor:
-- Função MIN --
SELECT MIN(a.populacao) as pop_min FROM senso a
WHERE a.ano = 2014;
-- Detalhe, se colocarmos o ALIAS na tabela, temos que colocar em todos os campos --
-- O resultado é 822 -- A cidade co menor população do Brasil em 2014 -- 
-- Para aprofundar mais os detalhes, podemos selecionar a coluna estado da base de dados senso:
SELECT a.estado,MIN(a.populacao) as pop_min_estados FROM senso a where a.ano = 2014 GROUP BY estado;
-- Ao selecionar mais de uma coluna, obrigatoriamente agrupar com 'GROUP BY' --
+---------------------+-----------------+
| estado              | pop_min_estados |
+---------------------+-----------------+
| Rondônia            |            2432 |
| Acre                |            5593 |
| Amazonas            |            5599 |
| Roraima             |            7309 |
| Pará                |            3303 |
| Amapá               |            4404 |
| Tocantins           |            1091 |
| Maranhão            |            3539 |
| Piauí               |            1239 |
| Ceará               |            3812 |
| Rio Grande do Norte |            1705 |
| Paraíba             |            1767 |
| Pernambuco          |            2884 |
| Alagoas             |            2958 |
| Sergipe             |            2366 |
| Bahia               |            3644 |
| Minas Gerais        |             822 |
| Espírito Santo      |            4669 |
| Rio de Janeiro      |            5380 |
| São Paulo           |             835 |
| Paraná              |            1416 |
| Santa Catarina      |            1389 |
| Rio Grande do Sul   |            1286 |
| Mato Grosso do Sul  |            3005 |
| Mato Grosso         |            1000 |
| Goiás               |            1093 |
| Distrito Federal    |         2852372 |
+---------------------+-----------------+
