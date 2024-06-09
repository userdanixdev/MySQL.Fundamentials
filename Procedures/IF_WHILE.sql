-- Procedure com IF and WHILE -- :
delimiter //
CREATE PROCEDURE proc_acumula_w(valor_teto INT)
	main: begin
			DECLARE contador INT DEFAULT 0;
			DECLARE soma INT DEFAULT 0;
	if valor_teto < 1 then
		SELECT 'O valor deve ser mais que zero' AS erro;
	leave main;
	END if;
	while contador < valor_teto do
		SET contador=contador +1;
		SET soma = soma + contador;
	END while;
	SELECT soma;
END //
delimiter ;			
	
CALL proc_acumula_w(-1);	

call proc_acumula_w(-1);
+--------------------------------+
| erro                           |
+--------------------------------+
| O valor deve ser mais que zero |
+--------------------------------+
1 row in set (0.00 sec)

call proc_acumula_w(5);
+------+
| soma |
+------+
|   15 |
+------+
1 row in set (0.00 sec)
