-- Procedure para acumular valores --
-- procedure para acumular valores com loop/interate --

DROP PROCEDURE proc_acumula_iterate
delimiter //
CREATE PROCEDURE proc_acumula_iterate(valor_teto INT)
	main:BEGIN 
			DECLARE contador INT DEFAULT 0;
			DECLARE soma INT DEFAULT 0;
			if valor_teto < 1 then 
				SELECT 'O valor deve ser maior que zero' AS erro;
				leave main;
				END if;
	test:loop
		SET contador=contador+1;
		SET soma=soma+contador;
		if contador<valor_teto then
		iterate test;
		END if;
		leave test;
		END loop test;
		SELECT soma;
END//
delimiter ;
-- Chamar a procedure: 
call proc_acumula_iterate(7);
+------+
| soma |
+------+
|   28 |
+------+
1 row in set (0.01 sec)

Query OK, 0 rows affected (0.01 sec)
