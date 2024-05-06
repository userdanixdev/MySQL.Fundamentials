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
