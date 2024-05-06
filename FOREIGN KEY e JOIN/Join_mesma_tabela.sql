-- Usando a base de dados curso, com a tabele senso:
use curso;
-- Comparando crescimento da população das cidades entre os anos de 2010 a 2014:
-- Repare que estamos usando alias diferente para a mesma tabela, assim podemos comparar o crescimento populacional :
-- 
SELECT a.nome_mun,
       a.populacao AS senso_2010,
       b.populacao as senso_2014,
       (100/a.populacao)*(b.populacao)-100 AS percentual
FROM senso a 
INNER JOIN senso b
ON a.cod_mun = b.cod_mun
WHERE a.ano = 2010 AND b.ano = 2014 limit 30;

mysql> select a.nome_mun,a.populacao as senso_2010,b.populacao as senso_2014, (100/a.populacao)*(b.populacao)-100 as percentual from senso a inner join senso b on a.cod_mun = b.cod_mun where a.ano = 2010 and b.ano = 2014 limit 30;
+---------------------------+------------+------------+------------+
| nome_mun                  | senso_2010 | senso_2014 | percentual |
+---------------------------+------------+------------+------------+
| Alta Floresta D'Oeste     |      24422 |      25652 |     5.0364 |
| Ariquemes                 |      90354 |     102860 |    13.8410 |
| Cabixi                    |       6309 |       6424 |     1.8228 |
| Cacoal                    |      78601 |      86556 |    10.1207 |
| Cerejeiras                |      17030 |      18013 |     5.7722 |
| Colorado do Oeste         |      18602 |      19001 |     2.1449 |
| Corumbiara                |       8802 |       8938 |     1.5451 |
| Costa Marques             |      13700 |      16258 |    18.6715 |
| Espigão D'Oeste           |      28741 |      32047 |    11.5027 |
| Guajará-Mirim             |      41646 |      46203 |    10.9422 |
| Jaru                      |      52043 |      55669 |     6.9673 |
| Ji-Paraná                 |     116587 |     129242 |    10.8545 |
| Machadinho D'Oeste        |      31107 |      36412 |    17.0540 |
| Nova Brasilândia D'Oeste  |      19845 |      21511 |     8.3950 |
| Ouro Preto do Oeste       |      37941 |      40010 |     5.4532 |
| Pimenta Bueno             |      33754 |      37230 |    10.2980 |
| Porto Velho               |     426558 |     494013 |    15.8134 |
| Presidente Médici         |      22319 |      22783 |     2.0789 |
| Rio Crespo                |       3316 |       3709 |    11.8516 |
| Rolim de Moura            |      50672 |      55807 |    10.1338 |
| Santa Luzia D'Oeste       |       8886 |       8706 |    -2.0257 |
| Vilhena                   |      76187 |      89797 |    17.8639 |
| São Miguel do Guaporé     |      21824 |      23803 |     9.0680 |
| Nova Mamoré               |      22552 |      26925 |    19.3907 |
| Alvorada D'Oeste          |      16864 |      17228 |     2.1584 |
| Alto Alegre dos Parecis   |      12826 |      13884 |     8.2489 |
| Alto Paraíso              |      17144 |      19841 |    15.7314 |
| Buritis                   |      32385 |      37207 |    14.8896 |
| Novo Horizonte do Oeste   |      10237 |      10393 |     1.5239 |
| Cacaulândia               |       5727 |       6318 |    10.3195 |
+---------------------------+------------+------------+------------+
30 rows in set (0.04 sec)
-- Agora crescimento populacional por estados do Brasil entre 2010 a 2014:
-- Para isso devemos usar a função 'SUM' para somar a populacao e agrupar por estado e ordenado por crescimento do maior para o menor --
  
SELECT a.estado,
       sum(a.populacao) AS senso_2010,
       sum(b.populacao) as senso_2014,
       (100/sum(a.populacao))*(sum(b.populacao))-100 AS percentual
FROM senso a 
INNER JOIN senso b
ON a.cod_mun = b.cod_mun
WHERE a.ano = 2010 AND b.ano = 2014 
GROUP BY a.estado
ORDER BY 4 DESC;

+---------------------+------------+------------+------------+
| estado              | senso_2010 | senso_2014 | percentual |
+---------------------+------------+------------+------------+
| Amapá               |     668689 |     750912 |    12.2959 |
| Rondônia            |    1560501 |    1748531 |    12.0476 |
| Distrito Federal    |    2562963 |    2852372 |    11.2910 |
| Amazonas            |    3480937 |    3873743 |    11.2810 |
| Espírito Santo      |    3512672 |    3885049 |    10.5996 |
| Roraima             |     451227 |     496936 |    10.1295 |
| Goiás               |    6004045 |    6523222 |     8.6443 |
| Tocantins           |    1383453 |    1496880 |     8.1975 |
| Bahia               |   14021432 |   15126371 |     7.8662 |
| Acre                |     732793 |     790101 |     7.8203 |
| Rio Grande do Norte |    3168133 |    3408510 |     7.5862 |
| Sergipe             |    2068031 |    2219574 |     7.3275 |
| Santa Catarina      |    6249682 |    6705563 |     7.2890 |
| Mato Grosso do Sul  |    2449341 |    2614610 |     6.7467 |
| São Paulo           |   41252160 |   44035304 |     6.7416 |
| Alagoas             |    3120922 |    3321730 |     6.4316 |
| Pará                |    7603239 |    8089539 |     6.3936 |
| Mato Grosso         |    3033991 |    3224357 |     6.2716 |
| Paraná              |   10439601 |   11081692 |     6.1404 |
| Minas Gerais        |   19595309 |   20734097 |     5.8061 |
| Pernambuco          |    8796032 |    9277727 |     5.4692 |
| Rio Grande do Sul   |   10695532 |   11204474 |     4.7506 |
| Paraíba             |    3766834 |    3943885 |     4.6983 |
| Ceará               |    8448055 |    8842791 |     4.6721 |
| Maranhão            |    6569683 |    6850884 |     4.2773 |
| Rio de Janeiro      |   15993583 |   16461173 |     2.9153 |
| Piauí               |    3119015 |    3194718 |     2.4259 |
+---------------------+------------+------------+------------+
27 rows in set (0.10 sec)


