use curso;
-- group by with rollup -- 
SELECT a.estado, count(*) from senso a 
  WHERE a.ano = 2014 
  group by a.estado with rollup;
-- A função rollup põe no final a soma -- 
+---------------------+----------+
| estado              | count(*) |
+---------------------+----------+
| Acre                |       22 |
| Alagoas             |      102 |
| Amapá               |       16 |
| Amazonas            |       62 |
| Bahia               |      417 |
| Ceará               |      184 |
| Distrito Federal    |        1 |
| Espírito Santo      |       78 |
| Goiás               |      246 |
| Maranhão            |      217 |
| Mato Grosso         |      141 |
| Mato Grosso do Sul  |       79 |
| Minas Gerais        |      853 |
| Pará                |      144 |
| Paraíba             |      223 |
| Paraná              |      399 |
| Pernambuco          |      185 |
| Piauí               |      224 |
| Rio de Janeiro      |       92 |
| Rio Grande do Norte |      167 |
| Rio Grande do Sul   |      497 |
| Rondônia            |       52 |
| Roraima             |       15 |
| Santa Catarina      |      295 |
| São Paulo           |      645 |
| Sergipe             |       75 |
| Tocantins           |      139 |
| NULL                |     5570 |
+---------------------+----------+
28 rows in set (0.10 sec)
-- Ele cria uma linha no final com o total da contagem de municípios --

