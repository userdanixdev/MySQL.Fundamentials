-- Converte exmpressões de um tipo de dados em outro.
-- Exemplos: Convertendo encoding
set @palavra = binary 'São Paulo';  -- Declaração de uma variável palavra do tipo binário 'São Paulo'
select lower(@palavra)retorno1,
       lower(convert(@palavra using latin1))retorno2,
       lower(convert(@palavra using utf8))retorno3,
       lower(convert(@palavra using ascii))retorno4;

+------------------------+--------------+------------+------------+
| retorno1               | retorno2     | retorno3   | retorno4   |
+------------------------+--------------+------------+------------+
| 0x53C3A36F205061756C6F | sã£o paulo   | são paulo  | s??o paulo |
+------------------------+--------------+------------+------------+
1 row in set, 1 warning (0.00 sec)
-- O mesmo resultado temos em transformar para maiúsculo:
mysql> select upper(@palavra)retorno1,
  upper(convert(@palavra using latin1))retorno2,
  upper(convert(@palavra using utf8))retorno3,
  upper(convert(@palavra using ascii))retorno4;
+------------------------+--------------+------------+------------+
| retorno1               | retorno2     | retorno3   | retorno4   |
+------------------------+--------------+------------+------------+
| 0x53C3A36F205061756C6F | SÃ£O PAULO   | SÃO PAULO  | S??O PAULO |
+------------------------+--------------+------------+------------+
1 row in set, 1 warning (0.00 sec)
-- EXEMPLO 02:
-- USANDO CAST PARA CONVERTER DATAS - NOTE O USO DO PARÂMETRO 'AS' --
SELECT now();
+---------------------+
| now()               |
+---------------------+
| 2024-05-12 15:39:31 |
+---------------------+
1 row in set (0.00 sec)

mysql> select cast(now()as date); -- Converte em date, retorno somente a data sem a hora.
+--------------------+
| cast(now()as date) |
+--------------------+
| 2024-05-12         |
+--------------------+
1 row in set (0.00 sec)

select cast(now()as time) as hora;  -- Somente a hora - 
+----------+
| Hora     |
+----------+
| 15:42:45 |
+----------+
mysql> select cast(now()as char)as charactere; -- Converter a hora em caracter -- 
+---------------------+
| charactere          |
+---------------------+
| 2024-05-12 15:44:11 |
+---------------------+
1 row in set (0.00 sec)

--- RETORNAR SOMENTE OS 4 PRIMEIROS CARACTERES:
mysql> select cast(now()as char(4));
+-----------------------+
| cast(now()as char(4)) |
+-----------------------+
| 2024                  |
+-----------------------+
-- Converter tipos de dados com o uso do CONVERT --
SELECT 'mysql' expressao,
       cast('mysql' as binary)cast1,
       convert('mysql' using binary)convert1;
+-----------+--------------+--------------------+
| expressao | cast1        | convert1           |
+-----------+--------------+--------------------+
| mysql     | 0x6D7973716C | 0x6D7973716C       |
+-----------+--------------+--------------------+
1 row in set (0.01 sec)
--- Convertendo INTEIRO em DECIMAL-- cast -- 
select @expr1:=1 valor,
       cast(@expr1 as decimal(10,2))cast1
+-------+-------+
| valor | cast1 |
+-------+-------+
|     1 |  1.00 |
+-------+-------+



