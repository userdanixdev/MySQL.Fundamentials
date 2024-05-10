-- Ranking geral e ranking por Estado:
-- Declarar variáveis contadoras :
SET @PREV:= NULL;
SET @pos_geral := 0;
SET @pos_estado := 0;

SELECT 
@pos_geral := @pos_geral + 1 AS Posição_Geral,
if(@PREV <> estado, @pos_estado :=1,@pos_estado := @pos_estado + 1)
AS Posição_Estado,@PREV := estado AS Estado, nome_mun AS Município,populacao AS População FROM senso
ORDER BY estado,populacao DESC

-- A tabela inteira ficaria muito extensa
