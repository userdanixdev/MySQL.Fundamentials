-- Função de caractere : LPAD
-- Repete um valor dentro da cadeia de caracteres com um número especificado a esquerda --
use curso; 
CREATE TABLE teste
( c1 VARCHAR(3),
  C2 CHAR(3));

INSERT INTO teste VALUES  ('2','2');
INSERT INTO teste VALUES  ('37','37');
INSERT INTO teste VALUES  ('597','597');

SELECT * FROM teste;
+------+------+
| c1   | C2   |
+------+------+
| 2    | 2    |
| 37   | 37   |
| 597  | 597  |
+------+------+

select C1,C2,lpad(C1,5,'0')lpadC1,lpad(C2,10,'555')lpad_C2 from teste;
+------+------+--------+------------+
| C1   | C2   | lpadC1 | lpad_C2    |
+------+------+--------+------------+
| 2    | 2    | 00002  | 5555555552 |
| 37   | 37   | 00037  | 5555555537 |
| 597  | 597  | 00597  | 5555555597 |
+------+------+--------+------------+
3 rows in set (0.00 sec)

-- O RPAD adiciona casas decimais a esquerda--

select C1,C2,rpad(C1,5,'0')rpadC1,rpad(C2,10,'555')rpad_C2 from teste;

+------+------+--------+------------+
| C1   | C2   | rpadC1 | rpad_C2    |
+------+------+--------+------------+
| 2    | 2    | 20000  | 2555555555 |
| 37   | 37   | 37000  | 3755555555 |
| 597  | 597  | 59700  | 5975555555 |
+------+------+--------+------------+
3 rows in set (0.01 sec)

