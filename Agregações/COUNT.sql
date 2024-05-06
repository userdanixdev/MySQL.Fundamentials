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


