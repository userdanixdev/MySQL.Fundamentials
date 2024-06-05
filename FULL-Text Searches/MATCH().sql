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


  			




