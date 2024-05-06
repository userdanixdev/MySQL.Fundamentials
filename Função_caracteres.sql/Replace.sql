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

-- Replace em uma tabela --
-- Usando a tabela world --
use world;
SELECT Continent, REPLACE (Continent,'South America','América do Sul')trocado from country where Continent = 'South America';

+---------------+-----------------+
| Continent     | trocado         |
+---------------+-----------------+
| South America | América do Sul  |
| South America | América do Sul  |
| South America | América do Sul  |
| South America | América do Sul  |
| South America | América do Sul  |
| South America | América do Sul  |
| South America | América do Sul  |
| South America | América do Sul  |
| South America | América do Sul  |
| South America | América do Sul  |
| South America | América do Sul  |
| South America | América do Sul  |
| South America | América do Sul  |
| South America | América do Sul  |
+---------------+-----------------+
14 rows in set (0.00 sec)
-- é somente uma consulta, os valores da tabela original não foram alterados, somente para fazer uma tradução para verificar melhor os dados --


