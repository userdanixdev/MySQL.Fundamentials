COMO EXECUTAR O MySQL 8.0 NO PROMPT DE COMANDO (CMD)

Se você assim como eu, está tendo dificuldades em conseguir acessar o MySQL no cmd através do comando:

"MySql -u root -p" + ENTER

Se ao utilizar este comando o prompt retorna:

"'mysql' não é reconhecido como um comando interno ou externo, um programa operável ou um arquivo em lotes."

A razão para tal erro pode ser que você não está executando o comando no diretório correto, por exemplo, o diretório onde eu executei o primeiro comando foi o padrão ao abrir o cmd

C:\users\adm_eu>

(adm_eu, é o meu nome de usuário o seu provavelmente será diferente.)

Se você também estiver executando neste mesmo diretório padrão aqui vai a possível solução.

1. Identifique onde encontra-se o MySql no seu computador.

(o meu está em C:\Arquivos de Programas\MySQL)

Uma vez encontrado siga as instruções:

2. Levando em consideração que o seu CMD ainda estará padrão em:

C:\users\adm_eu>

Digite "cd.." e enter, agora o CMD provavelmente estará assim:

C:\users>

Repita o comando novamente e o CMD provavelmente ficará assim:

C:\>

3. Agora que chegamos ao Disco Local C no prompt vamos até a pasta do MySql q você encontrou anteriormente através dos comandos:

"cd Program Files" + ENTER

O prompt deverá mostrar: C:\Program Files>

Prossiga com o comando

"cd MySQL" + ENTER

O prompt deverá mostrar: C:\Program Files\MySQL>

4. Caso você não tenha percebido ainda, estamos dentro da pasta MySQL pelo prompt de comando e prosseguiremos com o comando:

"cd MySQL Server 8.0" + ENTER

O prompt deverá mostrar: C:\Program Files\MySQL\MySQL Server 8.0>

Feito isso acessaremos a bin do servidor MySQL com o comando

"cd bin" + ENTER

O prompt deverá mostrar: C:\Program Files\MySQL\MySQL Server 8.0\bin>

5. Pronto! Se tudo saiu como planejado e o seu prompt está como acima, vc já pode voltar a usar o comando:

"MySql -u root -p" + ENTER


Obrigado.
