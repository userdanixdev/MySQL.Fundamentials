
delimiter //
CREATE PROCEDURE proc_acumula(valor_teto INT)
	main: begin
		DECLARE contador INT DEFAULT 0;
		DECLARE soma INT DEFAULT 0;
	if valor_teto < 1 then
		SELECT 'O valor deve ser maior que zero' AS erro;
	leave main;
	END if;
	repeat
		SET contador=contador+1;
		SET soma=soma+contador;
	until contador = valor_teto
	END repeat;
	SELECT soma;
END//
delimiter ;		
	
CALL proc_acumula(5);							
