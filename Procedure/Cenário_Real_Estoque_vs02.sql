
CREATE TABLE ztok 
  ( 
     cod_mat VARCHAR (20) NOT NULL, 
     saldo   DECIMAL (10, 2) NOT NULL 
  ) ;

CREATE TABLE ztok_lote 
  ( 
     cod_mat int, 
     lote    VARCHAR (15) NOT NULL, 
     saldo   DECIMAL (10, 2) NULL, 
     FOREIGN KEY (cod_mat) REFERENCES material(cod_mat), 
	  PRIMARY KEY (cod_mat,lote) 
  ) ;
  
  
CREATE TABLE mov_ztok 
  ( 
     transacao  INT PRIMARY KEY NOT NULL auto_increment, 
     mov        VARCHAR (1) NOT NULL, 
     cod_mat    int NOT NULL, 
     lote       VARCHAR (15) NOT NULL, 
     qtd        DECIMAL (10, 2) NOT NULL, 
     usuario    VARCHAR (30) NOT NULL, 
     dt_hor_mov DATETIME NOT NULL 
  ) ;

CREATE UNIQUE INDEX  ix_ztok1 on ztok(cod_mat);

ALTER TABLE mov_ztok 
  ADD FOREIGN KEY (cod_mat) REFERENCES material(cod_mat); 

DELIMITER //

CREATE PROCEDURE proc_atualiza_estoque (tipo_mov VARCHAR(1),
                                        p_cod_mat  VARCHAR(50),
                                        p_lote     VARCHAR(15), 
                                        p_qtd_mov  DECIMAL(10, 2))  

main: BEGIN
      
      DECLARE cod_erro CHAR(5) DEFAULT '00000';
      DECLARE msg TEXT;
      DECLARE affected_rows INT;
      DECLARE result TEXT;
      DECLARE saldo_estoque DECIMAL(10,2) DEFAULT 0;
      DECLARE saldo_lote DECIMAL(10,2) DEFAULT 0;
      DECLARE reg_z INT DEFAULT 0; -- variavel de registros em estoque
      DECLARE reg_zl INT DEFAULT 0; -- variavel de registros em estoque lote
      
      DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
      BEGIN
          GET DIAGNOSTICS CONDITION 1
          cod_erro = RETURNED_SQLSTATE, msg = MESSAGE_TEXT;
      END;
      
      -- verificando se operacao permitida e valor >0
      IF tipo_mov NOT IN ('E','S') OR p_qtd_mov < 1 THEN
          SELECT 'Operacao invalida ou valor menor que 1' AS ERRO;
          LEAVE main;
      END IF;

      -- verificando se o material existe cadastro 
      IF (SELECT COUNT(*) FROM material WHERE cod_mat = p_cod_mat) = 0 THEN
          SELECT 'Material nao existe!' AS ERRO;
          LEAVE main;
      END IF;

      -- atribuindo saldo de estoque do material na variavel saldo_estoque
      SELECT SALDO INTO saldo_estoque FROM ZTOK WHERE cod_mat = p_cod_mat;

      -- atribuindo saldo de estoque lote do material na variavel saldo_lote    
      SELECT saldo INTO saldo_lote FROM ZTOK_LOTE WHERE cod_mat = p_cod_mat AND lote = p_lote;

      -- verificando se estoque ficara negativo
      IF tipo_mov = 'S' AND saldo_estoque < p_qtd_mov THEN
          SELECT 'Estoque Negativo, operacao Cancelada' AS ERRO;
          LEAVE main;
      END IF;

      -- verificando se estoque lote ficara negativo 
      IF tipo_mov = 'S' AND saldo_lote < p_qtd_mov THEN
          SELECT 'Estoque Negativo, operacao Cancelada' AS ERRO;
          LEAVE main;
      END IF;
      
      START TRANSACTION;

      -- verifcando se o material ja tem registro na tabela ztok
      SELECT COUNT(*) INTO reg_z FROM ZTOK WHERE cod_mat = p_cod_mat;

      -- verifcando se o material ja tem registro na tabela ztok_lote
      SELECT COUNT(*) INTO reg_zl FROM ZTOK_LOTE WHERE cod_mat = p_cod_mat AND lote = p_lote;

      -- VERIFICACOES
      IF tipo_mov = 'S' THEN 
          -- ATUALIZAR
          UPDATE ZTOK SET saldo = saldo - p_qtd_mov WHERE cod_mat = p_cod_mat;
          UPDATE ZTOK_LOTE SET saldo = saldo - p_qtd_mov WHERE cod_mat = p_cod_mat AND lote = p_lote;
          INSERT INTO mov_ztok (mov, cod_mat, lote, qtd, usuario, dt_hor_mov) 
          VALUES (tipo_mov, p_cod_mat, p_lote, p_qtd_mov, USER(), NOW());
          
      ELSEIF tipo_mov = 'E' AND reg_z = 1 AND reg_zl = 1 THEN
          -- atualiza saldo ztok
          UPDATE ZTOK SET saldo = saldo + p_qtd_mov WHERE cod_mat = p_cod_mat;
          -- atualiza saldo ztok_lote
          UPDATE ZTOK_LOTE SET saldo = saldo + p_qtd_mov WHERE cod_mat = p_cod_mat AND lote = p_lote;
          -- insere valores na mov ztok
          INSERT INTO mov_ztok (mov, cod_mat, lote, qtd, usuario, dt_hor_mov) 
          VALUES (tipo_mov, p_cod_mat, p_lote, p_qtd_mov, USER(), NOW());

      ELSEIF tipo_mov = 'E' AND reg_z = 1 AND reg_zl = 0 THEN
          -- atualiza saldo ztok
          UPDATE ZTOK SET saldo = saldo + p_qtd_mov WHERE cod_mat = p_cod_mat;
          -- insere novo registro na ztok_lote
          INSERT INTO ZTOK_LOTE (cod_mat, lote, saldo) VALUES (p_cod_mat, p_lote, p_qtd_mov);
          -- insere valores na mov ztok
          INSERT INTO mov_ztok (mov, cod_mat, lote, qtd, usuario, dt_hor_mov) 
          VALUES (tipo_mov, p_cod_mat, p_lote, p_qtd_mov, USER(), NOW());

      ELSEIF tipo_mov = 'E' AND reg_z = 0 AND reg_zl = 0 THEN
          -- insere novo registro na ztok
          INSERT INTO ZTOK (cod_mat, saldo) VALUES (p_cod_mat, p_qtd_mov);
          -- insere novo registro na ztok_lote
          INSERT INTO ZTOK_LOTE (cod_mat, lote, saldo) VALUES (p_cod_mat, p_lote, p_qtd_mov);
          -- insere valores na mov ztok
          INSERT INTO mov_ztok (mov, cod_mat, lote, qtd, usuario, dt_hor_mov) 
          VALUES (tipo_mov, p_cod_mat, p_lote, p_qtd_mov, USER(), NOW());
      END IF;

      IF cod_erro = '00000' THEN
          GET DIAGNOSTICS affected_rows = ROW_COUNT;
          SET result = CONCAT('Atualizacao com Sucesso = ', affected_rows);
      ELSE
          SET result = CONCAT('Erro na atualizacao, error = ', cod_erro, ', message = ', msg);
      END IF;

      -- retorno do que aconteceu
      SELECT result;

      IF cod_erro = '00000' THEN 
          COMMIT;
      ELSE
          ROLLBACK;
      END IF;

END //

DELIMITER ;


call proc_atualiza_estoque('E',2,'XYZ',9);

select * from ztok;
select * from ztok_lote;
select * from mov_ztok;
-- consultando
select * from material;
      								 
