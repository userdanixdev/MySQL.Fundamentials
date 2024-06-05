-- Por padrão ou com o modificador IN NATURAL LANGUAGE MODE, a função MATCH() executa a busca do idioma natural --
-- A cadeia de pesquisa é dada como o argumento para AGAINST(). --

-- Criando uma tabela para teste dentro da base de dados 'curso' --
CREATE TABLE artigo (
  id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  titulo VARCHAR(200),
  corpo TEXT,
  FULLTEXT (titulo,corpo))
  ENGINE=InnoDB;





