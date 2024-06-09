-- Procedures para tratamento de exceções --
-- Criando tabela para teste --
CREATE TABLE cadastro_cliente(
  cod_cliente INT unsigned not null auto_increment,
  nome_cliente varchar(20) not null,
  primary key (cod_cliente));

-- Criando procedure para tratamentos de erros ---
delimiter //
create procedure p_trata_exc(IN var_nome_cliente VARCHAR(100),
                             OUT resposta VARCHAR(50))
SALVAR:BEGIN
            DECLARE excecao SMALLINT DEFAULT 0;
            -- Se exceção for =1 
            DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET excecao = 1;
            START TRANSACTION;
            INSERT INTO cadastro_cliente(cod_cliente,nome_cliente)VALUES(NULL,var_nome_cliente);
            -- Checar a exceção com if --
            IF excecao = 1 THEN
                SET resposta = 'Erro ao gravar';
                ROLLBACK;
                LEAVE SALVAR;
            ELSE
                SET resposta = 'Salvo com sucesso.';
                COMMIT;
            END IF;
END//
delimiter ;

-- Invocar a procedure ---

CALL p_trata_exc('Natan'),@resposta);

mysql> select * from cadastro_cliente;
+-------------+--------------+
| cod_cliente | nome_cliente |
+-------------+--------------+
|           1 | Daniel       |
|           2 | Samuel       |
|           3 | Natan        |
+-------------+--------------+
3 rows in set (0.00 sec)
-- Check da transação --
mysql> select @resposta;
+-------------------+
| @resposta         |
+-------------------+
| Salvo com sucesso |
+-------------------+
1 row in set (0.00 sec)

-- Se eu colocar um dado maior que 20 caracteres, vai dar erro ao gravar --
call p_trata_exc('Pedro Vaz De Alcantara de Souza Neves Antunes Curvelo',@resposta);

 call p_trata_exc('Pedro Vaz De Alcantara de Souza Neves Antunes Curvelo',@resposta);
Query OK, 0 rows affected (0.00 sec)

mysql> select @resposta;
+--------------------+
| @resposta          |
+--------------------+
| Erro de gravação   |
+--------------------+
1 row in set (0.01 sec)


    
