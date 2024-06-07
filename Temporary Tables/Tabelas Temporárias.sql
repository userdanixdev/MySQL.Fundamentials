-- Tabelas Temporárias --
-- Siginifica que ela expira assim que sua sessão no MySQL terminar.
-- Uso da tabela senso do curso da Udemy --
use curso;
CREATE TEMPORARY TABLE tmp_senso1(
  id INT PRIMARY KEY AUTO_INCREMENT,
  cod_mun CHAR(7),
  nome_mun VARCHAR(80))

-- INSERINDO DADOS NA TABELA TEMPORÁRIA:
INSERT INTO tmp_senso1 (cod_mun,nome_mun)
SELECT cod_mun,nome_mun FROM senso;
-- Dessa forma estamos inserindos todos os dados de duas colunas para a tabela temporária --

mysql> select * from tmp_senso1 limit 10;
+----+---------+-----------------------+
| id | cod_mun | nome_mun              |
+----+---------+-----------------------+
|  1 | 1100015 | Alta Floresta D'Oeste |
|  2 | 1100023 | Ariquemes             |
|  3 | 1100031 | Cabixi                |
|  4 | 1100049 | Cacoal                |
|  5 | 1100056 | Cerejeiras            |
|  6 | 1100064 | Colorado do Oeste     |
|  7 | 1100072 | Corumbiara            |
|  8 | 1100080 | Costa Marques         |
|  9 | 1100098 | Espigão D'Oeste       |
| 10 | 1100106 | Guajará-Mirim         |
+----+---------+-----------------------+
10 rows in set (0.00 sec)

-- Podemos inserir todos os registros de uma base de dados para a tabela temporária --

CREATE TEMPORARY TABLE tmp_senso2 
SELECT * FROM senso

SELECT * FROM tmp_senso2 limit 10;

+------+--------+-----------+---------+-----------------------+--------+--------------+-------------------+-------------+-------------------+-------------+-----------+-------------+------+
| ano  | cod_uf | estado    | cod_mun | nome_mun              | regiao | cod_meso_reg | nome_meso_reg     | cod_mic_reg | nome_min_reg      | pib         | populacao | pib_per_cap | ID   |
+------+--------+-----------+---------+-----------------------+--------+--------------+-------------------+-------------+-------------------+-------------+-----------+-------------+------+
| 2010 | 11     | Rondônia  | 1100015 | Alta Floresta D'Oeste |        | 1102         | Leste Rondoniense | 11006       | Cacoal            |  262077.000 |     24422 |   10731.000 | NULL |
| 2010 | 11     | Rondônia  | 1100023 | Ariquemes             |        | 1102         | Leste Rondoniense | 11003       | Ariquemes         | 1364694.000 |     90354 |   15104.000 | NULL |
| 2010 | 11     | Rondônia  | 1100031 | Cabixi                |        | 1102         | Leste Rondoniense | 11008       | Colorado do Oeste |   69611.000 |      6309 |   11034.000 | NULL |
| 2010 | 11     | Rondônia  | 1100049 | Cacoal                |        | 1102         | Leste Rondoniense | 11006       | Cacoal            | 1186494.000 |     78601 |   15095.000 | NULL |
| 2010 | 11     | Rondônia  | 1100056 | Cerejeiras            |        | 1102         | Leste Rondoniense | 11008       | Colorado do Oeste |  222021.000 |     17030 |   13037.000 | NULL |
| 2010 | 11     | Rondônia  | 1100064 | Colorado do Oeste     |        | 1102         | Leste Rondoniense | 11008       | Colorado do Oeste |  193093.000 |     18602 |   10380.000 | NULL |
| 2010 | 11     | Rondônia  | 1100072 | Corumbiara            |        | 1102         | Leste Rondoniense | 11008       | Colorado do Oeste |  114768.000 |      8802 |   13039.000 | NULL |
| 2010 | 11     | Rondônia  | 1100080 | Costa Marques         |        | 1101         | Madeira-Guaporé   | 11002       | Guajará-Mirim     |  107583.000 |     13700 |    7853.000 | NULL |
| 2010 | 11     | Rondônia  | 1100098 | Espigão D'Oeste       |        | 1102         | Leste Rondoniense | 11006       | Cacoal            |  311788.000 |     28741 |   10848.000 | NULL |
| 2010 | 11     | Rondônia  | 1100106 | Guajará-Mirim         |        | 1101         | Madeira-Guaporé   | 11002       | Guajará-Mirim     |  598167.000 |     41646 |   14363.000 | NULL |
+------+--------+-----------+---------+-----------------------+--------+--------------+-------------------+-------------+-------------------+-------------+-----------+-------------+------+

-- O comando EXPLAIN mostra a estrutura de dados de cada tabela --
EXPLAIN tmp_senso1;
mysql> explain tmp_senso1;
+----------+-------------+------+-----+---------+----------------+
| Field    | Type        | Null | Key | Default | Extra          |
+----------+-------------+------+-----+---------+----------------+
| id       | int         | NO   | PRI | NULL    | auto_increment |
| cod_mun  | char(7)     | YES  |     | NULL    | NULL           |
| nome_mun | varchar(80) | YES  |     | NULL    | NULL           |
+----------+-------------+------+-----+---------+----------------+
3 rows in set (0.01 sec)

EXPLAIN tmp_senso2;
+---------------+-----------------+------+-----+---------+--------------------------+
| Field         | Type            | Null | Key | Default | Extra                    |
+---------------+-----------------+------+-----+---------+--------------------------+
| my_row_id     | bigint unsigned | NO   | PRI | NULL    | auto_increment INVISIBLE |
| ano           | int             | NO   |     | NULL    | NULL                     |
| cod_uf        | char(2)         | NO   |     | NULL    | NULL                     |
| estado        | varchar(50)     | NO   |     | NULL    | NULL                     |
| cod_mun       | char(7)         | NO   |     | NULL    | NULL                     |
| nome_mun      | varchar(50)     | NO   |     | NULL    | NULL                     |
| regiao        | varchar(150)    | YES  |     | NULL    | NULL                     |
| cod_meso_reg  | char(4)         | YES  |     | NULL    | NULL                     |
| nome_meso_reg | varchar(100)    | NO   |     | NULL    | NULL                     |
| cod_mic_reg   | char(5)         | NO   |     | NULL    | NULL                     |
| nome_min_reg  | varchar(50)     | NO   |     | NULL    | NULL                     |
| pib           | decimal(12,3)   | NO   |     | NULL    | NULL                     |
| populacao     | int             | NO   |     | NULL    | NULL                     |
| pib_per_cap   | decimal(12,3)   | NO   |     | NULL    | NULL                     |
| ID            | int             | YES  |     | NULL    | NULL                     |
+---------------+-----------------+------+-----+---------+--------------------------+
EXPLAIN senso;
ysql> explain senso;
+---------------+-----------------+------+-----+---------+--------------------------+
| Field         | Type            | Null | Key | Default | Extra                    |
+---------------+-----------------+------+-----+---------+--------------------------+
| my_row_id     | bigint unsigned | NO   | PRI | NULL    | auto_increment INVISIBLE |
| ano           | int             | NO   |     | NULL    |                          |
| cod_uf        | char(2)         | NO   |     | NULL    |                          |
| estado        | varchar(50)     | NO   |     | NULL    |                          |
| cod_mun       | char(7)         | NO   |     | NULL    |                          |
| nome_mun      | varchar(50)     | NO   |     | NULL    |                          |
| regiao        | varchar(150)    | YES  |     | NULL    |                          |
| cod_meso_reg  | char(4)         | YES  |     | NULL    |                          |
| nome_meso_reg | varchar(100)    | NO   |     | NULL    |                          |
| cod_mic_reg   | char(5)         | NO   |     | NULL    |                          |
| nome_min_reg  | varchar(50)     | NO   |     | NULL    |                          |
| pib           | decimal(12,3)   | NO   |     | NULL    |                          |
| populacao     | int             | NO   |     | NULL    |                          |
| pib_per_cap   | decimal(12,3)   | NO   |     | NULL    |                          |
| ID            | int             | YES  |     | NULL    |                          |
+---------------+-----------------+------+-----+---------+--------------------------+
15 rows in set (0.00 sec)

-- REPARE QUE A ESTRUTRA DA TABELA TEMPORÁRIA 'tmp_senso2' É A MESMA QUE DA TABELA 'senso' --


