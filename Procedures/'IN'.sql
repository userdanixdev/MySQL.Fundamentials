-- Exemplo de procedure IN --
-- Vamos fazer uma procedure para trazer o nome do município e a população --
-- Procedure 'IN' recebe somente parâmetro de entrada :

use curso;  -- Nesta base de dados temos a tabela 'senso'

delimiter //
CREATE PROCEDURE proc_cidades_uf (IN p_uf VARCHAR(2))
  begin
      SELECT DISTINCT nome_mun,populacao,cod_uf FROM senso WHERE cod_uf=p_uf LIMIT 10;
  end //
delimiter ;

-- Invocando a procedure --

CALL proc_cidades_uf(35);   -- Só informar o código da região que a procedure retornará o munícipio, populacao e o código.

-- Como a tabela senso tem mais de 20.000 registros , criei uma procedure limitada a 10 registros pra mostrar aqui:
call proc_cidades_uf_(35);
+--------------------------+-----------+--------+
| nome_mun                 | populacao | cod_uf |
+--------------------------+-----------+--------+
| Adamantina               |     33797 | 35     |
| Adolfo                   |      3557 | 35     |
| Aguaí                    |     32168 | 35     |
| Águas da Prata           |      7580 | 35     |
| Águas de Lindóia         |     17261 | 35     |
| Águas de Santa Bárbara   |      5598 | 35     |
| Águas de São Pedro       |      2703 | 35     |
| Agudos                   |     34532 | 35     |
| Alambari                 |      4886 | 35     |
| Alfredo Marcondes        |      3891 | 35     |
+--------------------------+-----------+--------+
10 rows in set (0.01 sec)

Query OK, 0 rows affected (0.01 sec)

-- Podemos também, da mesma forma, declarando uma varíavel --
SET @var_uf='13';
CALL proc_cidades_uf(@var_uf);
+-------------------+-----------+--------+
| nome_mun          | populacao | cod_uf |
+-------------------+-----------+--------+
| Alvarães          |     14080 | 13     |
| Amaturá           |      9657 | 13     |
| Anamã             |     10193 | 13     |
| Anori             |     16289 | 13     |
| Apuí              |     18059 | 13     |
| Atalaia do Norte  |     15149 | 13     |
| Autazes           |     31876 | 13     |
| Barcelos          |     25715 | 13     |
| Barreirinha       |     27361 | 13     |
| Benjamin Constant |     33391 | 13     |
+-------------------+-----------+--------+
10 rows in set (0.01 sec)

-- Para dropar uma procedure :  DROP PROCEDURE proc_cidades_uf --








