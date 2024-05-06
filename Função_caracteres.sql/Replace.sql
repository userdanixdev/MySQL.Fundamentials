-- REPLACE -- 
-- Substitui todas as ocorrências de um valor de cadeia de caracteres especificado por outra cadeia de caracteres:
-- Para um primeiro exemplo do uso do REPLACE vmaos criar uma variável :
SET @palavra:='bala';
select @palavra de,
replace(@palavra,'ba','mo')para
-- Sendo assim o replac irá substituir a sílaba 'ba' por 'mo' -- 
+------+------+
| de   | para |
+------+------+
| bala | mola |
+------+------+
1 row in set (0.00 sec)

-- Uso do replace sem criação de uma variável::
SELECT 'Isto é teste' de,
replace ('Isto é teste','teste','produção')para;

+---------------+--------------------+
| de            | para               |
+---------------+--------------------+
| Isto é teste  | Isto é Produção    |
+---------------+--------------------+
1 row in set (0.00 sec)

