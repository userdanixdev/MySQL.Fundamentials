-- Procedure para criar uma tabuada --
delimiter //
CREATE PROCEDURE proc_tabuada(tabuada INT)
  BEGIN
      DECLARE contador INT DEFAULT 0;
      DECLARE resultado INT DEFAULT 0;
      CREATE TEMPORARY TABLE temp_tab(res VARCHAR(50));
  repeat
      SET contador=contador +1;
      SET resultado=tabuada*contador;
      INSERT INTO temp_tab
      SELECT CONCAT(tabuada,' x ',contador,' = ',resultado) AS resultado;
  UNTIL contador > 9
  END repeat;
  SELECT * FROM temp_tab;
  DROP TEMPORARY TABLE temp_tab;
END//
delimiter ;

-- Invocar --

CALL proc_tabuada(3):
+-------------+
| res         |
+-------------+
| 3 x 1 = 3   |
| 3 x 2 = 6   |
| 3 x 3 = 9   |
| 3 x 4 = 12  |
| 3 x 5 = 15  |
| 3 x 6 = 18  |
| 3 x 7 = 21  |
| 3 x 8 = 24  |
| 3 x 9 = 27  |
| 3 x 10 = 30 |
+-------------+
10 rows in set (0.02 sec)
