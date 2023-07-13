# MySQL.Fundamentials
### _Tutorials_
***
 
![httpswww mysql com](https://github.com/userdanixdev/MySQL.Fundamentials/assets/132594952/b5848927-614c-4ce7-89cc-e954fa9cd242)
![cursoemvideologo](https://github.com/userdanixdev/MySQL.Fundamentials/assets/132594952/9fa53666-4278-4eb3-ae62-73171d297cba)


 ***

1. Nesse repositório contem os primeiros comandos de banco de dados MySql.
1. Tutorial baseado nas pratico teórico didáticos do tutor Gustavo Guanabara do Curso em vídeo.
2. Tutorial baseado nas práticas teórica didática pelo tutor Fábio dos Reis - Fundador da Bóson Treinamentos.
3. Segue seu canal do Youtube: [Curso em vídeo](https://www.youtube.com/watch?v=Ofktsne-utM)
5. As aulas do tutor Gustavo são bem didáticas e descontraídas. 
6. Todo material encontrado aqui tem como base em seu curso ministrado pelo tutor _Gustavo Guanabara_.

_**Inclusive, seus cursos estão sendo muito úteis para a minha carreira.**_
***

# Aspectos Gerais 

Como o Professor `Josué Correia`, especialista em Concursos Públicos pela `APCON` diz:

> Um banco de dados é um conjunto estruturado de informações armazenadas de forma que possam ser facilmente acessadas,gerenciadas e  atualizadas. Suas características mais importantes são:

> * Consistência
> * Integridade
> * Segurança
> * Eficiência em processamento
> * Recuperação de informações 
> ***

Existem diferentes modelos de banco de dados. O mais comum, tradicional e o primeiro a ser inventado foi o modelo **RELACIONAL** `(RDBMS- relational database management system)`

```
O modelo relacional basea-se em conjunções e tabelas relacionadas. 
Cada tabela é composta por linhas, chamadas de TUPLAS e colunas ATRIBUTOS, 
com as colunas representando os campos de dados e as linhas representando registros individuais.
```

A principal linguagem padrão utilizada para interagir é a `Structured Query Language`ou `Linguagem de consulta estruturada.`

Usada em inúmeros sistemas, como MySQL, SQL Server, Oracle, Sybase, Access, DB2, PostgreSQL, etc.
Cada sistema pode usar um “dialeto específico” do SQL, como T-SQL (SQL Server), PL/SQL (Oracle), JET SQL (Access), etc.

**_Mas é possível integrar outras linguagens de programação._**

Dentro de vários bancos de dados o MySql é popular, gratuito, licenciado, livre (_opensource_) e pertence a ORACLE atualmente.
Muitas empresas utilizam o MySQL para gerenciar sua base de dados.

```
Existe uma versão parecida com o MySql, conhecida como MariaDB.
Outros exemplos de banco de dados gratuitos: Firebird e PostGreSQL.
```
> ***
# Estrutura Geral de um BD.
***

1. DDL (_Data definition language_) - Linguagem de Definição de Dados ( Estrutura ).

Comando |	Descrição
|:---|:---
CREATE	| Cria um novo banco de dados, tabela, visão, índice ou outro objeto no BD.
ALTER |	Modifica um objeto existente no BD, como uma tabela.
DROP |	Exclui uma tabela inteira, uma exibição de uma tabela ou outro objeto, incluindo o próprio banco de dados.
***
```
Comandos que possuem a função de definir a estrutura do banco de dados (esquema). 
Permitem efetuar a criação, alteração e exclusão de objetos, como tabelas, views, 
triggers, procedimentos armazenados e outros.
```
***
3. DML (_Data Manipulation Language_) - Linguagem de Manipulação de dados.
```
Comandos utilizados para gerenciar os dados armazenados no banco, 
permitindo inserir novos dados, alterar dados existentes ou excluir dados armazenados. 
```
Comando |	Descrição
|:---|:---
INSERT	| Cria um novo registro (linha)
UPDATE	| Modifica registros existentes
DELETE	| Exclui um ou mais registros
***
5. DQL (_Data Query Language_) - Linguagem de Consulta de dados como: Solicitações, Leitura, consulta. 

Comando | Descrição
|:--- |:---
SELECT |	Obtém registros especificados de uma ou mais tabelas, ou seja, efetuar consultas em tabelas.

`Comandos utilizados para realizar consultas em um banco, por exemplo para obter dados armazenados.`
***
7. DCL (_Data Control Language_) - Linguagem de Controle para concessão, permissão e controle de acessos.

`Comandos utilizados para controlar o acesso aos dados armazenados no banco, por meio de permissões de acesso.`

Comando |	Descrição
|:---|:---
GRANT	| Fornece privilégios de acesso a um usuário
REVOKE	| Retira os privilégios fornecidos a um usuário
ALTER USER	| Permite modificar contas, como a senha de um usuário

***

9. DTL (_Data Transaction Language_) - Linguagem de Transação de Dados - Realiza diferentes transaçõe ocorridas dentro do BD.

```
As transações seguem os princípios de:
   Durabilidade - _dado autêntico_  
   Isolamento - _sem interferências_
   Consistência - _dados íntegros_ 
   Atomicidade - _tudo ou nada_ 
  ```
  
`Comandos empregados para gerenciar transações no banco de dados. São usados para gerenciar as alterações realizadas por comandos DML executados.`

Comando |	Descrição
|:---|:---
COMMIT	| Salvar transações de forma permanente no banco de dados
ROLLBACK	| Restaurar o banco ao último estado após um commit que teve êxito
SAVEPOINT	| Salvar temporariamente uma transação para que seja possível efetuar rollback àquele ponto se necessário.
  ***
  # WORK BENCH 
  ***
  ## Ferramenta necessária para acessar o ambiente MySQL.
  ### _Evita o uso de linhas de comandos no CMD_.
  #### **_Irá ajudar de forma prática no aprendizado_**
  ***
  É necessária a instalação de pacotes distribuíveis, servidores e interface VISUAL STUDIO CODE ATUAL para uso do `work bench`
  Encontrados nos sites:
  * _https://www.microsoft.com/pt-br/download/developer-tools.aspx_ `Pacotes`
  * _https://dev.mysql.com/downloads/workbench/_ `Workbench`
  * _https://sourceforge.net/projects/wampserver/_  `WAMP Server`
  
   #### Esses sites estão sujeitos a alterações e atualizações sem aviso nenhum.
   ***
   ~Haverá atualizações a serem feitas no curso~
   
