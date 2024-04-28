-- DCL :: Transaction Control Language ::
-- São usadas para gerenciar as mudanças feitas por instruções DML. Permite que as declarações sejam agrupadas de forma ordenada e lógica.
-- Principais comandos:
    - BEGIN TRANSACTION -- Inicia uma transação
    - COMMIT -- salvar o trabalho feito
    - SAVE TRANSACTION -- Um ponto de salvamento da transação para que mais tarde você possa efetuar um ROLLBACK, caso necessário
    - ROLLBACK -- Restaura banco de dados ao original desde o último commit.

--------------------//---------------------------//----------------------//----------------------//---------------------//---------
-- Exemplo inicial:
-- TCL -  Transaction Control language -- 	
CREATE TABLE cadastro
(
	nome VARCHAR (50) NOT NULL,
	documento VARCHAR(20) NOT null
	)
	
-- Iniciar  TRANSACTION --

START TRANSACTION;

-- INSERIR REGISTROS --
INSERT INTO cadastro VALUES ('andre',789456123);	
INSERT INTO cadastro VALUES ('daniel',789456124);	
INSERT INTO cadastro VALUES ('matheus',789456125);	
INSERT INTO cadastro VALUES ('thiago',789456126);	

-- Se usar 'rollback' não irá retornar nenhum registro --
-- O commit efetiva as informações a serem cadastradas --
COMMIT ;

SELECT * FROM cadastro
--------------------------------//--------------------------//----------------------------//--------------------//-----------------//
-- *** obs: EM PL/SQL é utilizada comandos TCL ***
