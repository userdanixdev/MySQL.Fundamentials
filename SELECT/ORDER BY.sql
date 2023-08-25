Pelo comando ORDER BY nome_coluna +++  Irá selecionar em ordem alfabética de A a Z e DE CIMA para BAIXO os registros da COLUNA DESEJADA.
*** No caso do DUMP dentro da pasta SELECT será:

SELECT * FROM cursos (obs: sem ponto e vírgula)
ORDER BY nome; (com ponto e vírgula no MYSQL WORKBENCH)  
-- Sendo assim irá selecionar em ordem alfabética de A a Z e DE CIMA para BAIXO os registros da COLUNA nome, (do arquivo DUMP como GUIA),
 - INCLUSIVE IRÁ ALTERAR TODA A ESTRUTURA DA TABELA -  +++ pois foi ORDENADO PELA COLUNA NOME +++

** Caso não seja feito isso, irá dar erro. +++ Atenção ao ponto e vírgula por último no COMANDO INTEIRO. **
________________________________________________________________________________________________________________________________

Comando DESC juntamente com o comando inteiro irá, portanto, ter a função DECRESCENTE. Sendo assim:

SELECT * FROM cursos
ORDER BY nome DESC;  (ponto e vírgula no final)

 *** Sendo assim, a coluna NOME primeiro e juntamente com toda a sua estrutura irá começar a ser LIDA de W a Z da coluna NOME.
--- Obs: Esse DESC, nos comandos SELECT é um PARÂMETRO. Não é comando. É DESCENDENTE ou _descending_
Por padrão é ASCENDENTE ou _ascendant_ sendo assim:

SELECT * FROM cursos
ORDER BY nome ASC;

**O comando DESCRIBE irá descrever a tabela toda na tela.** --- Ex: DESC cursos; (comando) - **E o comando feito ISOLADAMENTE -**
 ________________________________________________________________________________________________________________________________
 ____________________________________________________________________________________________________________________________________________





