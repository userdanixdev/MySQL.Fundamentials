-- Exemplo do uso do LOOP : Tabuada --
delimiter //
CREATE PROCEDURE proc_tabuada_l(tabuada INT)
	BEGIN 
			DECLARE contador INT DEFAULT 0;
			DECLARE resultado INT DEFAULT 0;
			CREATE TEMPORARY TABLE temp_tab(res VARCHAR(50));
	loop_tabuada:loop 
			SET contador=contador+1;
			SET resultado=tabuada*contador;
			INSERT INTO temp_tab
			SELECT CONCAT(tabuada,' x ',contador,' = ',resultado) AS resultado;
			if contador > 9 then 
			leave loop_tabuada;
			END if;
		END loop loop_tabuada;			
	SELECT * FROM temp_tab;
	DROP TEMPORARY TABLE temp_tab;
END//
delimiter ;	
