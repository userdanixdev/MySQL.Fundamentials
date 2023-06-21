Primeiramente, usaremos outra tabela que foi criada por mim sobre dados gerais de carros chamada cadastro2 ( não foi feito dump nenhum):
Obs: Repare que não possui chave primária . ++++
Sendo assim:

USE cadastro2
SELECT * FROM carros;

+-----------+-------------+------+-----------+
| id_modelo | modelo_nome | ano_ | marca_    |
+-----------+-------------+------+-----------+
|         2 | Corsa       | 1995 | GM        |
|         1 | NULL        | NULL | NULL      |
|      NULL | NULL        | NULL | NULL      |
|      NULL | NULL        | 1997 | NULL      |
|         2 | astra       | 2002 | NULL      |
|      NULL | NULL        | NULL | Chevrolet |
|         2 | corsa       | 1995 | GM        |
|         2 | astra       | 1997 | Chevrolet |
|         5 | astra 2.0   | 2002 | Chevrolet |
|         6 | astra 2.0   | 2005 | Chevrolet |
|         7 | Vectra      | 2002 | Chevrolet |
|         8 | Vectra 2.2  | 2002 | Chevrolet |
|         9 | Corsa 1.4   | 2000 | Chevrolet |
+-----------+-------------+------+-----------+

Para adicionar uma coluna DEPOIS de QUALQUER OUTRA é:

ALTER TABLE carros
ADD COLUMN cor_carro VARCHAR(20) AFTER ano_ (que no caso é o nome_coluna); (colocar antes o tipo primitivo antes do parêmetro AFTER, obrigatoriamente no WORKBENCH)
Sendo assim, ficará:
mysql> SELECT * FROM carros;

+-----------+-------------+------+-----------+-----------+
| id_modelo | modelo_nome | ano_ | cor_carro | marca_    |
+-----------+-------------+------+-----------+-----------+
|         2 | Corsa       | 1995 | NULL      | GM        |
|         1 | NULL        | NULL | NULL      | NULL      |
|      NULL | NULL        | NULL | NULL      | NULL      |
|      NULL | NULL        | 1997 | NULL      | NULL      |
|         2 | astra       | 2002 | NULL      | NULL      |
|      NULL | NULL        | NULL | NULL      | Chevrolet |
|         2 | corsa       | 1995 | NULL      | GM        |
|         2 | astra       | 1997 | NULL      | Chevrolet |
|         5 | astra 2.0   | 2002 | NULL      | Chevrolet |
|         6 | astra 2.0   | 2005 | NULL      | Chevrolet |
|         7 | Vectra      | 2002 | NULL      | Chevrolet |
|         8 | Vectra 2.2  | 2002 | NULL      | Chevrolet |
|         9 | Corsa 1.4   | 2000 | NULL      | Chevrolet |
+-----------+-------------+------+-----------+-----------+

** Por padrão, todas as colunas adicionadas vão para a última coluna **
