-- A função 'CONCAT' concatena valores de strings ou caracteres --
SELECT CONCAT('My','S','QL')retorno;
+---------+
| retorno |
+---------+
| MySQL   |
+---------+
1 row in set (0.00 sec)

-- Um pequeno exemplo mais completo usando o CONCAT:
-- current_user() -- Irá imprimir na tela o usuário logado no momento
  -- day, month, year irá mostrar na tela o dia o mês e o ano atualizados
SELECT concat ('Olá ',current_user(),' Seu saldo é R$: ',11.00,' em ',day(now()),'/',month(now()),'/',year(now())) as resultado;
+----------------------------------------------------+
| resultado                                          |
+----------------------------------------------------+
| Olá danixdev@% Seu saldo é R$: 11.00 em 6/5/2024   |
+----------------------------------------------------+
1 row in set (0.00 sec)

-- Usando o concat e o concatws --
-- Concat e concat_WS	
  -- O concat_ws Utiliza-se o separador primeiro - 
	SELECT concat('BEM-VINDO ',CONCAT_WS(' - ','Guns','N´','Roses'))retorno;

+----------------------------+
| retorno                    |
+----------------------------+
| Bem-vindo Guns - N - Roses |
+----------------------------+
1 row in set (0.00 sec)


