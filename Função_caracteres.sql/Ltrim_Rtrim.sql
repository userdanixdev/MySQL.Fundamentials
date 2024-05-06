-- A função para caracter 'ltrim' elimina os espaços do lado esquerdo --
-- Para declarar uma variável é necessário inserir o 'SET' logo em seguida o '@':
SET @variavel_1_ltrim='   Três espacos no início.';
SELECT CONCAT('Texto sem espaço:',LTRIM(@variavel_1_ltrim))AS retorno
UNION ALL
SELECT CONCAT('Texto com espaço:',@variavel_1_ltrim);

+--------------------------------------------------+
| retorno                                          |
+--------------------------------------------------+
| Texto sem espaço: Três espaços no início.        |
| Texto com espaço:    Três espaços no início.     |
+--------------------------------------------------+
-- Com o ltrim, eliminamos os espaços dos caracteres -- 
-- Função Rtrim elimina os espaços do lado direito --
SET @variavel_2_rtrim='Três espaços no fina.   ';
SELECT concat(rtrim(@variavel_2_rtrim),'Texto sem espaços: ') as retorno
UNION ALL
SELECT concat(@variavel_2_rtrim,'Texto com espaços: ');

+-----------------------------------------------+
| retorno                                       |
+-----------------------------------------------+
| Três espaços no fim:Texto sem espaços:        |
| Três espaços no fim:   Texto com espaços:     |
+-----------------------------------------------+
2 rows in set (0.00 sec)

-- TRIM :: Elimina os espaços no início e no fim --
SET @variavel_trim='   Espaços no inico e fim   ';
SELECT concat('Antes sem espaço.',trim(@variavel_trim), 'Depois sem espaço.') as retorno
union all
SELECT concat('Antes sem espaço.',@variavel_trim,'Depois sem espaço. ');

+-------------------------------------------------------+
| retorno                                               |
+-------------------------------------------------------+
| Três espaços no inicio/fimTexto sem espaços.          |
|    Três espaços no inicio/fim   Texto com espaços.    |
+-------------------------------------------------------+
2 rows in set (0.00 sec)

