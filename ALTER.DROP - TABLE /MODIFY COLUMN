MODIFY COLUMN modifica o tipo primitivo e constraints.
PARA MODIFICAR O TIPO PRIMITIVO e CONSTRAINTS DE UMA COLUNA O COMANDO É:

________________________________
ALTER TABLE carros_velhos
MODIFY COLUMN id_carros INT NOT NULL
             (TIPO PRIMITIVO) e (CONSTRAINTS) por exemplo.
------------------------------------------------------------------------------------------------------------------------------------------------
Exemplo aplicado:

ALTER TABLE carros MODIFY COLUMN ident_carros int not null;
Query OK, 13 rows affected, 13 warnings (0.11 sec)
Records: 13  Duplicates: 0  Warnings: 13

mysql> describe carros;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| ident_carros | int         | NO   |     | NULL    |       |
| modelo_nome  | varchar(10) | YES  |     | NULL    |       |
| motor_       | varchar(20) | YES  |     | NULL    |       |
| ano_         | year        | YES  |     | NULL    |       |
| cor_carro    | varchar(20) | YES  |     | NULL    |       |
| marca_       | varchar(10) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
______________________________________________________________________________________________________________________________________________________________________

Outro exemplo:

ALTER TABLE carros MODIFY COLUMN ident_carros int auto_increment;

+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| ident_carros | int         | NO   | PRI | NULL    | auto_increment |
| modelo_nome  | varchar(10) | YES  |     | NULL    |                |
| motor_       | varchar(20) | YES  |     | NULL    |                |
| ano_         | year        | YES  |     | NULL    |                |
| cor_carro    | varchar(20) | YES  |     | NULL    |                |
| marca_       | varchar(10) | YES  |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
____________________________________________________________________________________________________________________________________________________________________________

