Comandos do terminal do MYSQL essenciais:

*** No caso do TERMINAL, os dados digitados no teclado somente serão computados em letras MINÚSCULAS ***

SHOW DATABASES;   - ponto e vírgula -  Mostra, por padrão, três banco de dados e o banco de dados criado pelo usuário.
Exemplo : 'information_schema', 'mysql' e 'performance_schema' e no meu caso 'cadastro' e 'cadastro2'.
______________________________________________________________________________________________________________________________

STATUS;  -  mostra na tela do terminal entre os principais e relevantes dados, a versão do MYSQL e o atual banco de dados que está em uso.
Assim como também que tipo de conexão, conexão em WEB etc.
_________________________________________________________________________________________________________________________________

Se não tiver nenhum banco de dados para USO ATUAL segue o comando no terminal:

USE nome_basededados;
ou 
USE cadastro2; (no meu caso)
++ Esse comando é necessário para usar o banco de dados atual para poder definir, manipular ou modelar os dados da tabela ++
___________________________________________________________________________________________________________________________________

Comando DESCRIBE na tela do terminal:

DESCRIBE ou DESC nome_tabela; - NÃO ESQUECER O PONTO E VÍRGULA EM NENHUM COMANDO - 

DESC cadastro;
___________________________________________________________________________________________________________________________________

Comandos para ver os dados da tabela no terminal:

SELECT * FROM nome_tabela;

____________________________________________________________________________________________________________________________________

No caso do comando UPDATE no terminal MY SQL seria todo o comando em UMA LINHA TODA, assim por exemplo:

UPDATE nome_tabela SET modelo_carro = 'Corsa' WHERE ano_produção = '1995';

( todos os comandos feitos no WORKBENCH também são afetados, só que no TERMINAL é feito numa linha somente e sempre no final da linha
OBRIGTATORIAMENTE o PONTO E VÍRGULA ( ; )
_____________________________________________________________________________________________________________________________________

irei copiar as imagens do terminal.
-------------------------------------------------------------------------------------------------------------------------------------------








