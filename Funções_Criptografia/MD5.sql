-- Função MD5:
select MD5




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

