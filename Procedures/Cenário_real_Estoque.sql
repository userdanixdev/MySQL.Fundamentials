-- Cenário Real : Controle de Estoque - Procedure SQL --
-- Criando tabelas para procedure atualização de estoque --
-- Vamos criar uma procedure que irá atualizar os movimentos do estoque --
CREATE TABLE estoque
	(
	cod_mat  VARCHAR(20) NOT NULL, -- Não será mais primary key pois foi criado um unique index --
	saldo 	DECIMAL (10,2) NOT null
	);

CREATE TABLE estoque_lote(
	cod_mat INT,
	lote 	  VARCHAR(15) NOT NULL,
	saldo	  DECIMAL (10,2) NULL,
	FOREIGN KEY (cod_mat) REFERENCES material(cod_mat),
	PRIMARY KEY(cod_mat,lote)); -- Chave composta --

CREATE TABLE estoque_movimento(
	transacao INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	movimento VARCHAR(1) NOT NULL	,
	cod_mat   INT NOT NULL,
	lote      VARCHAR(15) NOT NULL,
	qtd 	    DECIMAL (10,2) NOT NULL,
	usuario   VARCHAR (30) NOT NULL,
	dt_hr_mov DATETIME NOT NULL, 
	FOREIGN KEY (cod_mat) REFERENCES material(cod_mat));
	
	
CREATE UNIQUE INDEX ind_estoque ON estoque(cod_mat);

-- Vamos criar uma procedure que irá atualizar os movimentos do estoque --
-- Objetivo principal : Atualizar e inserir dados nas tabelas estoque e estoque_lote e gravar os dados --
-- A tabela estoque_movimento vai gerar histórico de transações --

delimiter //
CREATE PROCEDURE procedure_atualizacao_estoque(tipo_mov VARCHAR(1),
															  p_cod_mat VARCHAR(50),
															  p_lote VARCHAR (15),
															  p_qtd_mov DECIMAL(10,2))

main:BEGIN 
		DECLARE cod_erro CHAR(5) DEFAULT '00000';
		DECLARE msg TEXT;
		DECLARE affected_rows INT;
		DECLARE result TEXT;
		DECLARE saldo_estoque DECIMAL(10,2) DEFAULT 0;
		DECLARE saldo_lote DECIMAL(10,2) DEFAULT 0;
		DECLARE reg_estoque INT DEFAULT 0; -- Registros de estoque
		DECLARE reg_estoque_lote INT DEFAULT 0; -- Registros do lote
		
		-- Capturar os erros:
		DECLARE CONTINUE handler FOR SQLEXCEPTION 
		BEGIN 
				GET DIAGNOSTICS CONDITION 1
				cod_erro = RETURNED_SQLSTATE,msg= MESSAGE_TEXT;  -- Retornos do SGBD
		END;	
		-- Verificação de erros na entrada:									
		if tipo_mov NOT IN ('E','S') OR p_qtd_mov < 1 then 
		SELECT 'Operação inválida ou valor menor que 1' AS ERRO;
		leave main;
		END if;
		-- Verificação se o material existe:
		if (SELECT COUNT(*) FROM material WHERE cod_mat=p_cod_mat)=0 then 
		SELECT  'Material não existe!' AS erro;
		leave main;
		END if;
		-- Passando pelas duas condições acima , atribuimos abaixo saldo para o estoque de material na variável saldo_estoque:
		SELECT SALDO INTO saldo_estoque FROM estoque WHERE cod_mat=p_cod_mat;
		-- Atribuir também saldo de estoque lote de material na variável saldo_lote:
		SELECT saldo INTO saldo_lote FROM estoque_lote WHERE cod_mat=p_cod_mat AND lote=p_lote;
		-- Verificações condicionais 2: Estoque não pode ficar NEGATIVO
			if tipo_mov='S' AND saldo_estoque < p_qtd_mov then SELECT 'Estoque negativo,operação cancelada' AS erro;
			leave main;
			END if;
		-- Verificação condicional 2: Estoque lote também não pode ficar NEGATIVO
		if tipo_mov='S' AND saldo_lote < p_qtd_mov then SELECT 'Estoque negativo,operação cancelada' AS erro;
		leave main;
		END if;
		-- Controle de transações: Atribuições de valores e verificações no controle
		START TRANSACTION;
		-- Verificando se o material possui registros na tabela estoque:
		SELECT SQL_CALC_FOUND_ROWS cod_mat FROM estoque WHERE cod_mat=p_cod_mat;
		SELECT FOUND_ROWS() INTO reg_estoque;
		-- Verificando se o material possui registros na tabela estoque_lote:
		SELECT SQL_CALC_FOUND_ROWS cod_mat FROM estoque_lote WHERE cod_mat=p_cod_mat AND lote=p_lote;
		SELECT FOUND_ROWS() INTO reg_estoque_lote;
		-- Verificações de saída: Atualizações na tabela estoque e estoque_lote
		if (tipo_mov='S') then UPDATE estoque SET saldo=saldo-p_qtd_mov WHERE cod_mat=p_cod_mat;
									  UPDATE estoque_lote SET saldo=saldo-p_qtd_mov WHERE cod_mat=p_cod_mat AND lote=p_lote;
									  -- Atualização na tabela de movimentação:
									  INSERT INTO estoque_movimento (movimento,cod_mat,lote,qtd,usuario,dt_hr_mov)
									  								 VALUES (tipo_mov,p_cod_mat,p_lote,p_qtd_mov,USER(),NOW());
		-- Atualizações de Entrada: Saldo em estoque porém não existe em estoque_lote :
		ELSEIF (tipo_mov='E' AND reg_estoque=1 AND reg_estoque_lote=0) then
			UPDATE estoque SET saldo=saldo+p_qtd_mov WHERE cod_mat=p_cod_mat; -- Atualiza estoque --
			INSERT INTO estoque_lote(cod_mat,lote,saldo) VALUES (p_cod_mat,p_lote,p_qtd_mov); -- No estoque_lote apenas insert
			-- E inserir registros de movimentação na tabela de movimento:
			INSERT INTO estoque_movimento(movimento,cod_mat,lote,qtd,usuario,dt_hr_mov) 
      								 VALUES (tipo_mov,p_cod_mat,p_lote,p_qtd_mov,USER(),NOW());
		-- Material que na entrada não tem no estoque e nem no estoque_lote: Apenas INSERT
		ELSEIF (tipo_mov='E' AND reg_estoque=0 AND reg_estoque_lote=0) then INSERT INTO estoque(cod_mat,saldo)
																											VALUES(p_cod_mat,p_qtd_mov);       								 
							       INSERT INTO estoque_lote(cod_mat,lote,saldo) VALUES (p_cod_mat,p_lote,p_qtd_mov);  										
									 INSERT INTO estoque_movimento(movimento,cod_mat,lote,qtd,usuario,dt_hr_mov) 
									 		VALUES (tipo_mov,p_cod_mat,p_lote,p_qtd_mov,USER(),NOW());						
		END if;
		--
		-- Verificações:
		if cod_erro = '00000' then GET DIAGNOSTICS affected_rows = ROW_COUNT;
			SET result = CONCAT('Atualização com sucesso = ',affected_rows);
		else
			SET result = CONCAT('Erro na atualização,erro = ', cod_erro,',message= ',msg);
		END if;
		-- Retorno das mensagens das variáveis --
		SELECT result;
			if cod_erro='00000' then COMMIT;
			else
				ROLLBACK;
			END if;
END//
delimiter ;		

call procedure_atualizacao_estoque('E',2,'XYZ',9);
																							 											
      								 
select * from estoque;
select * from estoque_lote;
select * from estoque_movimento;
-- consultando
select * from material;		

	 									  								 
									  
		
		
		
		
		
		
													  

	




	
