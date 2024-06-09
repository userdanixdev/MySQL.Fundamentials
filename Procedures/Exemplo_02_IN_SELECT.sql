-- Outro exemplo de procedures language tipo 'IN' criando uma tabela --

CREATE TABLE material(
	cod_mat INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	custo DECIMAL(10,2) NOT NULL );
	
INSERT INTO material (nome,custo) VALUES ('XBOX','1500'),
('Playstation 5','3000'),('XBOX360','2000'),('Play 4','1000'),('Play3','700');

CREATE TABLE estoque(
	cod_mat INT NOT NULL,
	qtd INT NOT NULL,
	FOREIGN KEY (cod_mat) REFERENCES material (cod_mat));
	
	
INSERT INTO estoque (cod_mat,qtd) VALUES (1,12);	
INSERT INTO estoque (cod_mat,qtd) VALUES (2,29);
INSERT INTO estoque (cod_mat,qtd) VALUES (3,33);
INSERT INTO estoque (cod_mat,qtd) VALUES (4,54);
INSERT INTO estoque (cod_mat,qtd) VALUES (5,20);

-- Testando FK --
INSERT INTO estoque (cod_mat,qtd) VALUES (6,8);

-- Criar uma procedure para ajustar o preço de custo em percentual --

delimiter //
CREATE PROCEDURE proc_ajust_custo(IN p_cod_mat INT , taxa DECIMAL (10,2))
	BEGIN 
		UPDATE material SET custo=custo+custo*taxa/100
		WHERE cod_mat=p_cod_mat;
	END //
delimiter ;

SELECT * FROM material;

-- Sabemos que o material com código 2 é o playstation 5 -- Terá uma aumento de 37% :
-- Preço : 3.000,00
-- Preço ajustado: 4.110,00

CALL proc_ajust_custo(2,37); 
 select * from material;
+---------+---------------+---------+
| cod_mat | nome          | custo   |
+---------+---------------+---------+
|       1 | XBOX          | 1500.00 |
|       2 | Playstation 5 | 4110.00 |  -- <---- Preço ajustado
|       3 | XBOX360       | 2000.00 |
|       4 | Play 4        | 1000.00 |
|       5 | Play3         |  700.00 |
+---------+---------------+---------+
5 rows in set (0.00 sec)
-- Fazendo um ajuste de desconto no mesmo produto --
delimiter //
create procedure proc_ajust_custo_3(in p_cod_mat INT,
				     taxa DECIMAL (10,2))
	BEGIN 
		UPDATE material set custo=custo-custo*taxa/100
		where cod_mat=p_cod_mat;
	END //
delimiter //

CALL proc_ajust_custo_3(2,10);

select* from material;
+---------+---------------+---------+
| cod_mat | nome          | custo   |
+---------+---------------+---------+
|       1 | XBOX          | 1500.00 |
|       2 | Playstation 5 | 3699.00 | -- <- 10% de desconto nesse material 
|       3 | XBOX360       | 2000.00 |
|       4 | Play 4        | 1000.00 |
|       5 | Play3         |  686.07 |
+---------+---------------+---------+
5 rows in set (0.00 sec)

-- Usando SELECT nas procedures --
delimiter //
CREATE PROCEDURE proc_qtd_val(p_cod_mat INT)
	begin 
		select a.nome,a.custo,b.qtd,a.custo*b.qtd as total  -- Repare no select aqui custo do material da tabela a X a quantidade de estoque b.
		from material a
		inner join estoque b
		on a.cod_mat=b.cod_mat
		where a.cod_mat=p_cod_mat;
		select 'Consulta realizada com sucesso' as MSG;
end//
delimiter ;

mysql> select * from material;
+---------+---------------+---------+
| cod_mat | nome          | custo   |
+---------+---------------+---------+
|       1 | XBOX          | 1500.00 |
|       2 | Playstation 5 | 3699.00 |
|       3 | XBOX360       | 2000.00 |
|       4 | Play 4        |  900.00 |
|       5 | Play3         |  686.07 |
+---------+---------------+---------+
5 rows in set (0.00 sec)

mysql> select * from estoque;
+---------+-----+
| cod_mat | qtd |
+---------+-----+
|       1 |  12 |
|       2 |  29 |
|       3 |  33 |
|       4 |  54 |
|       5 |  20 |
+---------+-----+
5 rows in set (0.01 sec)

call proc_qtd_val(1);
+------+---------+-----+----------+
| nome | custo   | qtd | total    |
+------+---------+-----+----------+
| XBOX | 1500.00 |  12 | 18000.00 |
+------+---------+-----+----------+
1 row in set (0.00 sec)

+--------------------------------+
| MSG                            |
+--------------------------------+
| Consulta realizada com sucesso |
+--------------------------------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)






