-- Por padrão ou com o modificador IN NATURAL LANGUAGE MODE, a função MATCH() executa a busca do idioma natural --
-- A cadeia de pesquisa é dada como o argumento para AGAINST(). --

-- Criando uma tabela para teste dentro da base de dados 'curso' --
CREATE TABLE artigo (
  id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  titulo VARCHAR(200),
  corpo TEXT,
  FULLTEXT (titulo,corpo))
  ENGINE=InnoDB;

  -- Inserindo dados --
  INSERT INTO artigo (titulo,corpo) VALUES
  			('MySQL Tutorial','SGBD MYSQL do zero...'),
  			('Como utilizar bem o MYSQL','Depois de analisarmos...'),
  			('Otimizando MySQL','Neste tutotiral vamos aprender...'),
  			('1001 Dicas no MYSQL','1.Nunca Inicie o MySQL como root...'),
  			('MySQL vs SQL Server','Nesta comparação vamos...'),
  			('Segurança no MYSQL','Quando configurado corretamente, o MySQL...');


+----+---------------------------+---------------------------------------------+
| id | titulo                    | corpo                                       |
+----+---------------------------+---------------------------------------------+
|  1 | MySQL Tutorial            | SGBD MYSQL do zero...                       |
|  2 | Como utilizar bem o MYSQL | Depois de analisarmos...                    |
|  3 | Otimizando MySQL          | Neste tutotiral vamos aprender...           |
|  4 | 1001 Dicas no MYSQL       | 1.Nunca Inicie o MySQL como root...         |
|  5 | MySQL vs SQL Server       | Nesta comparação vamos...                   |
|  6 | Segurança no MYSQL        | Quando configurado corretamente, o MySQL... |
+----+---------------------------+---------------------------------------------+
6 rows in set (0.00 sec)

  -- Realizando a pesquisa de palavras relevantes dentro da tabela 'artigo'--
  -- Para isso, cria-se a variável @pesquisa com o valor de 'TUTORIAL' - tudo que estiver junto com esse nome será rastreado --
  
SET @pesquisa := 'Tutorial';
SELECT * FROM artigo 
	WHERE MATCH (titulo,corpo) 
	AGAINST (@pesquisa IN NATURAL LANGUAGE MODE);

mysql> set @pesquisa:='Tutorial';
select * from artigo where match (titulo,corpo) against (@pesquisa in natural language mode);
Query OK, 0 rows affected (0.01 sec)

+----+------------------+----------------------------------+
| id | titulo           | corpo                            |
+----+------------------+----------------------------------+
|  1 | MySQL Tutorial   | SGBD MYSQL do zero...            |
|  3 | Otimizando MySQL | Neste tutorial vamos aprender... |
+----+------------------+----------------------------------+
2 rows in set (0.00 sec)

-- PARA TRAZER QUANTOS REGISTROS FORAM ENCONTRADOS PODEMOS USAR A FUNÇÃO DE AGREGAÇÃO --

set @pesquisa:='Tutorial';   -- Não há necessidade de declarar a variável novamente, a não ser que seja outra palavra
select count(*) from artigo where match(titulo,corpo) against (@pesquisa in natural language mode);

+----------+
| count(*) |
+----------+
|        2 |
+----------+
1 row in set (0.01 sec)
-- Foram encontrados dois registros --
-- PODEMOS ENCONTRAR OS REGISTROS COM CONDIÇÃO TAMBÉM --
SELECT COUNT(IF(MATCH(titulo,corpo) AGAINST (@pesquisa IN NATURAL LANGUAGE MODE),1,NULL))AS contagem FROM artigo;

+----------+
| contagem |
+----------+
|        2 |
+----------+
1 row in set (0.00 sec)

-- Colocando a coluna ID em evidência, o SGBD trará o score por relevância da palavra	

mysql> select id, match(titulo,corpo) against (@pesquisa in natural language mode)as score from artigo;
+----+---------------------+
| id | score               |
+----+---------------------+
|  1 | 0.22764469683170319 |
|  2 |                   0 |
|  3 | 0.22764469683170319 |
|  4 |                   0 |
|  5 |                   0 |
|  6 |                   0 |
+----+---------------------+
6 rows in set (0.00 sec)

	
-- Podemos alterar a variável @pesquisa acrescentando outra palavra e utilizando o mesmo script, colocando o ID em evidência, teremos 
-- uma relevância maior --

set @pesquisa:='Tutorial Otimizando';
select id,match(titulo,corpo) against(@pesquisa in natural language mode) as Score from artigo;
+----+---------------------+
| id | Score               |
+----+---------------------+
|  1 | 0.22764469683170319 |
|  2 |                   0 |
|  3 | 0.45528939366340637 |
|  4 |                   0 |
|  5 |                   0 |
|  6 |                   0 |
+----+---------------------+
6 rows in set (0.00 sec)
-- Podemos inferir que foi encontrado uma maior relevância da variável no ID = 3  --
-- Podemos deixar ela completa --
	
mysql> select id,titulo,corpo, match(titulo,corpo) against (@pesquisa in natural language mode)as Score from artigo;
+----+---------------------------+---------------------------------------------+---------------------+
| id | titulo                    | corpo                                       | Score               |
+----+---------------------------+---------------------------------------------+---------------------+
|  1 | MySQL Tutorial            | SGBD MYSQL do zero...                       | 0.22764469683170319 |
|  2 | Como utilizar bem o MYSQL | Depois de analisarmos...                    |                   0 |
|  3 | Otimizando MySQL          | Neste tutorial vamos aprender...            | 0.45528939366340637 |
|  4 | 1001 Dicas no MYSQL       | 1.Nunca Inicie o MySQL como root...         |                   0 |
|  5 | MySQL vs SQL Server       | Nesta comparação vamos...                   |                   0 |
|  6 | Segurança no MYSQL        | Quando configurado corretamente, o MySQL... |                   0 |
+----+---------------------------+---------------------------------------------+---------------------+
6 rows in set (0.00 sec)








