-- Outro exemplo de função --
use curso;
CREATE TABLE avaliacao (
  aluno VARCHAR(10),
  nota1 int,
  nota2 int,
  nota3 int,
  nota4 int);

INSERT INTO avaliacao VALUES ('Paul',10,9,10,10);
INSERT INTO avaliacao VALUES ('Mary',5,2,3,4);

-- Com a tabela de 'avaliação' criada e os valores inseridos, criemos uma função para calcular a média de nota dos dois alunos:
DELIMITER //
CREATE FUNCTION fn_media (nome VARCHAR(10))
RETURNS float
begin 
declare n1,n2,n3,n4 int;
declare med FLOAT;
SELECT nota1,nota2,nota3,nota4 INTO n1,n2,n3,n4 FROM avaliacao WHERE aluno=nome;
set med=(n1+n2+n3+n4)/4;
return med;
end
//
-- Depois é chamar a função e colocar como parâmetro o nome do aluno:
SELECT fn_media('Mary');
+------------------+
| fn_media('Mary') |
+------------------+
|              3.5 |
+------------------+
1 row in set (0.00 sec)

SELECT fn_media('Paul');
+------------------+
| fn_media('Paul') |
+------------------+
|             9.75 |
+------------------+
1 row in set (0.01 sec)



