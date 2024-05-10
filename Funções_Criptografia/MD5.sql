-- Função MD5:
select MD5('123456')retorno
+----------------------------------+
| retorno                          |
+----------------------------------+
| e10adc3949ba59abbe56e057f20f883e |
+----------------------------------+
1 row in set (0.00 sec)

 -- Criando tabela para teste:
 CREATE TABLE usuario
 (
 id_usuario INT NOT NULL AUTO_INCREMENT,
 nome VARCHAR (20),
 senha VARCHAR (32),
 PRIMARY KEY (id_usuario)
 );
 INSERT INTO usuario (nome,senha) VALUES ('Andre',MD5('123456'));
 --Senha já está criptograda dentro do banco de dados

select * from usuario;
+------------+-------+----------------------------------+
| id_usuario | nome  | senha                            |
+------------+-------+----------------------------------+
|          1 | Andre | e10adc3949ba59abbe56e057f20f883e |
+------------+-------+----------------------------------+

-- Atualizando a senha do usuário André --
UPDATE usuario set senha = md5('654321abc') WHERE id_usuario = 1
-- Veja o resultado:
select * from usuario;
+------------+-------+----------------------------------+
| id_usuario | nome  | senha                            |
+------------+-------+----------------------------------+
|          1 | Andre | b3ddd238d6184cfd458205957c535457 |
+------------+-------+----------------------------------+
1 row in set (0.00 sec)

