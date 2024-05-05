-- A cláusula delete apagará os dados existentes:
DELETE  FROM minha_tabela -- Apagará todos os dados da tabela, é boa prática utilizar a cláusula WHERE para definir qual linha ou linhas apagar.
DELETE FROM minha_tabela WHERE id = 1 -- Boa prática --
-- Quanto tem uma tabela auto_increment , deverá depois de apagar os registros alterar a tabela para ela recomeçar a contagem
DELETE FROM minha_tabela
ALTER TABLE minha_tabela auto_increment = 1;
