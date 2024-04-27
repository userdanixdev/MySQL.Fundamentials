Comandos DCL :: Data Controle Language:

GRANT :: Atribui privilégios de acesso do usuário a objetos do banco de dados
REVOKE :: Remove privilégios de acesso aos objetos obtidos com o comando GRANT.


Para que ocorra de fato a concessão de privilégios devemos criar um usuário:
  FLUSH PRIVILEGES;
  SHOW COLUMNS FROM mysql.user;
  SELECT user,host,authentication_strings AS password FROM mysql.user;
  CREATE USER 'ALUNO'@'localhost' IDENTIFIED BY 'aluno';
  GRANT USAGE ON *.* TO 'ALUNO'@'localhost';
  GRANT SELECT ON curso.* TO 'ALUNO'@'localhost';




