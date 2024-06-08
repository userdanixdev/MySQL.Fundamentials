-- Criando uma função que aumenta o salário --
DELIMITER //
CREATE FUNCTION simula_aumento(salario decimal(10,2),perc decimal(10,2))
RETURNS decimal(10,2)
  BEGIN
    RETURN salario + salario * perc/100;
  END //
DELIMITER ;  -- Delimitador ao estado normal com ';'

-- Invocando a função :
SELECT simula_aumento(1550.50,10);

+----------------------------+
| simula_aumento(1550.50,10) |
+----------------------------+
|                    1705.55 |
+----------------------------+
1 row in set (0.01 sec)
