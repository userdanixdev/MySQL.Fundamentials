Comandos DCL :: Data Controle Language:

GRANT :: Atribui privilégios de acesso do usuário a objetos do banco de dados
REVOKE :: Remove privilégios de acesso aos objetos obtidos com o comando GRANT.


Para que ocorra de fato a concessão de privilégios devemos criar um usuário:
  FLUSH PRIVILEGES;
  SHOW COLUMNS FROM mysql.user;
  SELECT user,host,authentication_strings AS password FROM mysql.user;
  CREATE USER 'ALUNO'@'localhost' IDENTIFIED BY 'aluno';
  GRANT USAGE ON *.* TO 'ALUNO'@'localhost';
  GRANT SELECT ON curso.* TO 'ALUNO'@'localhost';    -- <-- Liberada a função SELECT  para o usuário --
  SHOW GRANTS FOR 'ALUNO'@'localhost';

--  Liberar a função INSERT para o usuário: --
GRANT INSERT ON func_ TO 'ALUNO'@'%';   -- 'func_' é a tabela

-- Concedendo todos os acessos  a todos os objetos:
GRANT  ALL PRIVILEGES ON *.*  TO  'ALUNO'@'%';   -- Dependendo do servidor, não nos permite  liberar o databases somente a tabela.
GRANT ALL PRIVILEGES ON func_ TO 'ALUNO'@'%';  -- Liberando todos os privilégios para o usuário aluno a tabela 'func_'

--  RECARREGA OS PRIVILÉGIOS:
FLUSH PRIVILEGES;

-- Verificar as permissões que algum usuário  possui:
SELECT * FROM  mysql.user WHERE  USER ='ALUNO';

# Mostra na tela todos  os privilégios de determinado usuário:
SHOW GRANTS FOR 'ALUNO'@'%'










