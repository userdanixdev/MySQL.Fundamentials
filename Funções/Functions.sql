-- Funções em MySQL são rotinas que podem retornar valores ou tabelas. Com elas podemos construir visões e construir funções próprias. --
-- Sintaxe de uma Função:
    CREATE FUNCTION nome_da_funcao(parametros)
    returns tipo_dados
    codigo_da_funcao
    return
-- Depois é invocar a função com o select:
select nome_da_funcao(parametros);
------------------------------------------------------------------------------------------------
-- Exemplos:
-- Usemos a base de dados curso do curso da Udemy --
DELIMITER // 
create function fn_teste (a decimal(10,2),b int)
returns int
return a*b;
//
-- Invocando a função --
select fn_teste(12.5,3);
Retorno : 38
----------------------------------------------
-- Criemos uma tabela de produtos para usarmos funções:

create table produtos (
  id int not null primary key auto_increment,
  nome_prod varchar(50) not null,
  preco_unit decimal(10,2));

insert into produtos (nome_prod,preco_unit)
values ('XBOX','800.99'),
  		 ('TV SMART 49','2999.99'),
		   ('NOTEBOOK','3999.99');

-- Por fim, criar uma função de calcular o total de preços x quantidade:

DELIMITER //
CREATE FUNCTION fn_total(preco DECIMAL(10,2),qtd INT)
RETURNS DECIMAL (10,2)
RETURN cast(qtd*preco AS DECIMAL(10,2));
//
-- Invocando a função --
SET @qtd:=3;
SET @id:=1;
SELECT nome_prod,preco_unit,@qtd qtd,fn_total(preco_unit,@qtd) total_compras
FROM produtos
WHERE id=@id;

+-----------+------------+------+---------------+
| nome_prod | preco_unit | qtd  | total_compras |
+-----------+------------+------+---------------+
| XBOX      |     800.99 |    3 |       2402.97 |
+-----------+------------+------+---------------+
1 row in set (0.00 sec)
--- OUTRO EXEMPLO --

  -- Criando outra função para trazer a primeira letra maiúscula e as demais minúsculas:

DELIMITER //
CREATE FUNCTION fn_initcap(nome VARCHAR(50))
RETURNS VARCHAR(50)
RETURN CONCAT(upper(substring(nome,1,1)),LOWER(SUBSTRING(nome,2,50)));
//
-- Função criada acima, por fim abaixo invocar a função para a tabela produtos:

SELECT nome_prod,fn_initcap(nome_prod) FROM produtos;

+-------------+-----------------------+
| nome_prod   | fn_initcap(nome_prod) |
+-------------+-----------------------+
| XBOX        | Xbox                  |
| TV SMART 49 | Tv smart 49           |
| NOTEBOOK    | Notebook              |
+-------------+-----------------------+
3 rows in set (0.00 sec)

-- CRIANDO UMA FUNLÇÃO DE BOAS VINDAS --

DELIMITER //
CREATE FUNCTION fn_boas_vindas (usuario VARCHAR(50))
RETURNS varchar(50)
RETURN concat('Ola ',usuario,' Seja Bem vindo');
//

select fn_boas_vindas (user())as Usuario;
+--------------------------------------------+
| Usuario                                    |
+--------------------------------------------+
| Ola danixdev@20.242.228.191 Seja Bem vindo |
+--------------------------------------------+
1 row in set (0.01 sec)
