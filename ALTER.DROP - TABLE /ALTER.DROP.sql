CREATE, ALTER e DROP TABLES são comandos DDL (data definition language):
Permitem especificar:
1. Um conjunto de relações;
2. Bem como esquema;
3. Domínio de valores;
4. Restrições de integridade e;
5. Conjunto de índices de cada relação.

O ALTER TABLE é usado para adicionar/remover atributos e restrições de uma relação e para alterar a definição de um atributo.



O Comando DESCRIBE nome_tabela  ou somente DESC nome_tabela (nos mostra a estrutura da tabela).

ALTER TABLE nome_tabela seguido de ADD COLUMN nome_coluna YEAR - COLOQUE O TIPO PRIMITIVO TAMBÉM.
(YEAR é um TIPO PRIMITIVO que temos que colocar, ou qualquer outro, irá depender da natureza do seu banco de dados)
(irá adicionar uma coluna nova)

Exemplo:

ALTER TABLE carros_antigos
ADD COLUMN ano_producao YEAR

select * from carros_antigos;
+-------------+--------------+-------------+-----------+--------------+---------------+
| ident_carro | modelo_carro | marca_carro | ano_carro | ano_producao | apelido_carro |
+-------------+--------------+-------------+-----------+--------------+---------------+
|           1 | Brasília     | volkswagen  |      1980 |         NULL | NULL          |
|           0 | NULL         | NULL        |      NULL |         NULL | NULL          |
|           2 | Corsa        | Chevrolet   |      2002 |         1996 | Corsinha      |
|           3 | Corsa        | Chevrolet   |      2001 |         1995 | Corsinha      |
|           4 | Corsa        | Chevrolet   |      2000 |         1995 | Corsinha      |
|           5 | Corsa        | Chevrolet   |      2000 |         1995 | Corsinha      |
|           6 | Corsa        | Chevrolet   |      1999 |         1995 | Corsinha      |
|           7 | Corsa        | Chevrolet   |      1998 |         1995 | Corsinha      |
|           8 | Corsa        | Chevrolet   |      1997 |         1995 | Corsinha      |
|           9 | Corsa        | Chevrolet   |      1996 |         1995 | Corsinha      |
|          10 | Corsa        | Chevrolet   |      1995 |         1995 | Corsinha      |
|          11 | Corsa        | Chevrolet   |      2002 |         1995 | Corsinha      |
|          12 | Vectra       | Chevrolet   |      2000 |         1994 | NULL          |
|          13 | Vectra       | Chevrolet   |      1999 |         1994 | NULL          |
|          14 | Vectra       | Chevrolet   |      1998 |         1994 | NULL          |
|          15 | Vectra       | Chevrolet   |      1997 |         1994 | NULL          |
|          16 | Vectra       | Chevrolet   |      1996 |         1994 | NULL          |
|          17 | Vectra       | Chevrolet   |      1995 |         1994 | NULL          |
|          18 | Vectra       | Chevrolet   |      2002 |         1994 | NULL          |
+-------------+--------------+-------------+-----------+--------------+---------------+
______________________________________________________________________________________________________________________________________

O comando DROP TABLE exlui a tabela.
Se quiser excluir somente um campo ou coluna é, nesse caso, utilizando outra tabela, de 'carros' somente:

USE cadastro2;
ALTER TABLE carros
DROP COLUMN ou SOMENTE DROP ano_producao;
Sedo assim:

select * from carros;
+-----------+-----------+-------------+--------+------+-----------+-----------+
| ver_sport | id_modelo | modelo_nome | motor_ | ano_ | cor_carro | marca_    |
+-----------+-----------+-------------+--------+------+-----------+-----------+
| NULL      |         2 | Corsa       | NULL   | 1995 | NULL      | GM        |
| NULL      |         1 | NULL        | NULL   | NULL | NULL      | NULL      |
| NULL      |      NULL | NULL        | NULL   | NULL | NULL      | NULL      |
| NULL      |      NULL | NULL        | NULL   | 1997 | NULL      | NULL      |
| NULL      |         2 | astra       | NULL   | 2002 | NULL      | NULL      |
| NULL      |      NULL | NULL        | NULL   | NULL | NULL      | Chevrolet |
| NULL      |         2 | corsa       | NULL   | 1995 | NULL      | GM        |
| NULL      |         2 | astra       | NULL   | 1997 | NULL      | Chevrolet |
| NULL      |         5 | astra 2.0   | NULL   | 2002 | NULL      | Chevrolet |
| NULL      |         6 | astra 2.0   | NULL   | 2005 | NULL      | Chevrolet |
| NULL      |         7 | Vectra      | NULL   | 2002 | NULL      | Chevrolet |
| NULL      |         8 | Vectra 2.2  | NULL   | 2002 | NULL      | Chevrolet |
| NULL      |         9 | Corsa 1.4   | NULL   | 2000 | NULL      | Chevrolet |
+-----------+-----------+-------------+--------+------+-----------+-----------+
13 rows in set (0.00 sec)

mysql> ALTER TABLE carros DROP COLUMN ver_sport;

****FOI DELETADO, portanto, a coluna 'ver_sport' da tabela de dados 'carros' ****

SELECT * FROM carros;
+-----------+-------------+--------+------+-----------+-----------+
| id_modelo | modelo_nome | motor_ | ano_ | cor_carro | marca_    |
+-----------+-------------+--------+------+-----------+-----------+
|         2 | Corsa       | NULL   | 1995 | NULL      | GM        |
|         1 | NULL        | NULL   | NULL | NULL      | NULL      |
|      NULL | NULL        | NULL   | NULL | NULL      | NULL      |
|      NULL | NULL        | NULL   | 1997 | NULL      | NULL      |
|         2 | astra       | NULL   | 2002 | NULL      | NULL      |
|      NULL | NULL        | NULL   | NULL | NULL      | Chevrolet |
|         2 | corsa       | NULL   | 1995 | NULL      | GM        |
|         2 | astra       | NULL   | 1997 | NULL      | Chevrolet |
|         5 | astra 2.0   | NULL   | 2002 | NULL      | Chevrolet |
|         6 | astra 2.0   | NULL   | 2005 | NULL      | Chevrolet |
|         7 | Vectra      | NULL   | 2002 | NULL      | Chevrolet |
|         8 | Vectra 2.2  | NULL   | 2002 | NULL      | Chevrolet |
|         9 | Corsa 1.4   | NULL   | 2000 | NULL      | Chevrolet |
+-----------+-------------+--------+------+-----------+-----------+
Obs: Lembrando que a tabela carros não tem chave primária até o momento presente - 21/06/2023
________________________________________________________________________________________________________________________________________________________________
