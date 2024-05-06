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

-- Com a base de dados Sakila podemos usar o concat_ws direto com variáveis já criadas sem a necessidade de concatenar strings feitas:
use sakila;
select concat_ws('--',actor_id,first_name,last_name)retorno from actor limit 10;

+-------------------------+
| retorno                 |
+-------------------------+
| 1--PENELOPE--GUINESS    |
| 2--NICK--WAHLBERG       |
| 3--ED--CHASE            |
| 4--JENNIFER--DAVIS      |
| 5--JOHNNY--LOLLOBRIGIDA |
| 6--BETTE--NICHOLSON     |
| 7--GRACE--MOSTEL        |
| 8--MATTHEW--JOHANSSON   |
| 9--JOE--SWANK           |
| 10--CHRISTIAN--GABLE    |
+-------------------------+
10 rows in set (0.00 sec)
-- REPARE QUE A FUNÇÃO CONCAT_WS INSERI O DELIMITADOR ANTES DE CADA COLUNA '--' --




