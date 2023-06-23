No dumb , final do arquivo temos uma informação preciosa:

a ENGINE, por padrão do MYSQL, o InnoDB que é uma máquina, um mecanismo que pertence a ORACLE que permite a criação de tabelas que suportam chaves ESTRANGEIRAS.
myISAM era outra ENGINE, porém, não seguia os princípios ACID. 

A = Atomicidade
C = Consistência
I = Isolamento
D = Durabilidade
** Para transações **
___________________________________________________________________________________________________________________________________________________________
A idéia é LEVAR um atributo da ENTIDADE 'CURSOS' para a ENTIDADE 'GAFANHOTO' = Chave estrangeira 
---------------------------------------------------------------------------------------------------------------------------
**** ATENÇÃO *** : a A chave estrangeira precisa ter o mesmo tipo primitivo e tamanho. Ex: Varchar(10) = Varchar(10)
O campo novo então será adicionado assim:

1- Adicionar um campo novo na tabela 'GAFANHOTOS':

ALTER TABLE gafanhotos
ADD COLUMN cursopreferido int;

+----------------+---------------+------+-----+---------+----------------+
| Field          | Type          | Null | Key | Default | Extra          |
+----------------+---------------+------+-----+---------+----------------+
| id             | int           | NO   | PRI | NULL    | auto_increment |
| nome           | varchar(30)   | NO   |     | NULL    |                |
| profissao      | varchar(20)   | YES  |     | NULL    |                |
| nascimento     | date          | YES  |     | NULL    |                |
| sexo           | enum('M','F') | YES  |     | NULL    |                |
| peso           | decimal(5,2)  | YES  |     | NULL    |                |
| altura         | decimal(3,2)  | YES  |     | NULL    |                |
| nacionalidade  | varchar(20)   | YES  |     | Brasil  |                |
| cursopreferido | int           | YES  |     | NULL    |                |
+----------------+---------------+------+-----+---------+----------------+

2 - Adicionar chave estrangeira:

ALTER TABLE gafanhotos
ADD FOREIGN KEY (cursopreferido)
REFERENCE cursos(idcurso)  - ***Obs: Precisa fazer a ligação entre a chave estrangeira e a chave primária da tabela CURSOS que no caso é 'idcursos'.

+----------------+---------------+------+-----+---------+----------------+
| Field          | Type          | Null | Key | Default | Extra          |
+----------------+---------------+------+-----+---------+----------------+
| id             | int           | NO   | PRI | NULL    | auto_increment |
| nome           | varchar(30)   | NO   |     | NULL    |                |
| profissao      | varchar(20)   | YES  |     | NULL    |                |
| nascimento     | date          | YES  |     | NULL    |                |
| sexo           | enum('M','F') | YES  |     | NULL    |                |
| peso           | decimal(5,2)  | YES  |     | NULL    |                |
| altura         | decimal(3,2)  | YES  |     | NULL    |                |
| nacionalidade  | varchar(20)   | YES  |     | Brasil  |                |
| cursopreferido | int           | YES  | MUL | NULL    |                |
+----------------+---------------+------+-----+---------+----------------+
+++  MUL??  Chave múltiplica, ou seja, uma chave estrangeira, por identificação. +++
__________________________________________________________________________________________________________________________________________________________

3 - Adicionar registros na linha criada 'cursopreferido':

UPDATE gafanhotos SET cursopreferido = '6' WHERE id = '1';
________________________________________________________________________________________________________________________________________________________________________________________________________
Obs: Sendo assim, não irá conseguir deletar por comando, por que a CONSTRANGE é FOREIGN KEY, ou seja, chave estrangeira.
+++++ Só conseguirá apagar se não existir relação nenhuma com a outra tabela ++++
Ou seja: Chama-se INTEGRIDADE REFERENCIAL - Ele não poderá ser apagado, para não afetar a transação. ***
__________________________________________________________________________________________________________________________________________________________________________________________________

4 - SELECT gafanhotos.nome, cursos.cursopreferido,cursos.nome,cursos.ano FROM gafanhotos JOIN cursos;
---- OBS: Irá juntar todas as colunas com o a tabela cursos, porém, precisamos de mais um parâmentro ; o 'ON' para 'juntar' de maneira 'COESA'.
***** Não irei mostar a tela aqui pq a amostra será imensa ******   +++ Execute no terminal ++++

Sendo assim com a 'cláusula' ON, ficará:

SELECT gafanhotos.nome, cursos.cursopreferido,cursos.nome,cursos.ano FROM gafanhotos JOIN cursos
ON cursos.idcurso = gafanhotos.cursopreferido;
Sendo assim:
+-------------------+----------------+------------+------+
| nome              | cursopreferido | nome       | ano  |
+-------------------+----------------+------------+------+
| Daniel Morais     |              1 | HTML5      | 2014 |
| Talita Nascimento |              2 | Algoritmos | 2014 |
+-------------------+----------------+------------+------+

Observe que somente o 'daniel' e 'talita' tem códigos de ligação de 'gafanhotos.cursopreferido' e 'cursos.idcursos'
os outros estão NULOS,ou seja, não foram renomeados ou não foram ligadas conexões de chave primária = 'idcursos' com estrangeira = 'cursopreferido' de gafanhotos.

++++ DE QUALQUER FORMA, SEM O ON, IRÁ FAZER A JUNÇÃO DO MESMO JEITO ++++
-----------------------------------------------------------------------------------------------------------------------------------
Uso de INNER JOIN com três tabelas.
1- A tabela 'cursos' já temos.
2 - A tabela 'gafanhotos' também.
3 - Criar uma terceira tabela, para intermediar as tabelas 'cursos' e 'gafanhotos'.
Sendo assim, criemos a terceira tabela, desta forma:

1- O conceito é, antes de começar, 'gafanhotos' preferem um curso preferido, ou seja, cada, de vários gafanhotos, preferem um curso (n,1).
2 - E um (1) curso pode ser preferido por vários gafanhotos.(1,n).
** Sendo assim, a chave primária (idcurso) de cursos irá se tornar uma chave estrangeira de gafanhotos com o nome 'cursopreferido'(chave estrangeira).
*** Estão acima, nesse arquivo ***

3 - E OS RELACIONAMENTOS MUITOS PARA MUITOS?????
4 -  Gerar um relacionamento de muitos para muitos,ou seja, criar um tabela de relacionamento entre eles.

Para isso é necessário:
     1 - Trazer a chave primária de 'gafanhotos' para a ENTIDADE CENTRAL, relacionamento 'assiste', sendo assim, se tornaria chave estrangeira.
       2 - Trazer a chave primária de 'cursos' para A ENTIDADE CENTRAL, relacionamento 'assiste', sendo assim ela deve se tornar chave estrangeira.
          3 - Nomear a tabela, portanto:
                
CREATE TABLE gafanhoto_assiste_curso (
id int NOT NULL AUTO_INCREMENT,
data date, 
idgafanhoto int,
idcurso int,
PRIMARY KEY (id),
FOREIGN KEY (idgafanhoto) REFERENCES gafanhotos(id)
FOREIGN KEY (idcurso) REFERENCES cursos(idcurso) 
);

+-------------+------+------+-----+---------+----------------+
| Field       | Type | Null | Key | Default | Extra          |
+-------------+------+------+-----+---------+----------------+
| id          | int  | NO   | PRI | NULL    | auto_increment |
| data        | date | YES  |     | NULL    |                |
| idgafanhoto | int  | YES  | MUL | NULL    |                |
| idcurso     | int  | YES  | MUL | NULL    |                |
+-------------+------+------+-----+---------+----------------+
Criada a ENTIDADE 'gafanhoto_assiste_curso'
---------------------------------------------------------------------------------------------------------------------------------------------
Sendo assim, o conceito fica:

GAFANHOTO (1) ------ (n)assistente de relação(n) ------ (1) Curso
_______________________________________________________________________________________________________________________________________________________________________________________________

Inserindo registros na tabela criada 'assiste':

INSERT INTO gafanhotos_assiste_curso VALUES
(DEFAULT, '2014-01-01','1','2');

+----+------------+-------------+---------+
| id | data       | idgafanhoto | idcurso |
+----+------------+-------------+---------+
|  1 | 2014-01-01 |           1 |       2 |
+----+------------+-------------+---------+

Mais alguns registros:

 INSERT INTO gafanhoto_assiste_curso VALUES (DEFAULT, '2016-08-01','15','10'),
    -> (DEFAULT, '2014-06-23','22','12'),
    -> (DEFAULT, '2015-12-22','3','6');

+----+------------+-------------+---------+
| id | data       | idgafanhoto | idcurso |
+----+------------+-------------+---------+
|  1 | 2014-01-01 |           1 |       2 |
|  2 | 2016-08-01 |          15 |      10 |
|  3 | 2014-06-23 |          22 |      12 |
|  4 | 2015-12-22 |           3 |       6 |
+----+------------+-------------+---------+
__________________________________________________________________________________________________________

SELECT * FROM gafanhotos g
JOIN gafanhoto_assiste_curso a
ON g.id = a.idgafanhoto

Result:
SELECT * FROM gafanhotos g JOIN gafanhoto_assiste_curso a ON g.id = a.idgafanhoto;
+----+--------------------+----------------------+------------+------+--------+--------+---------------+----------------+----+------------+-------------+---------+
| id | nome               | profissao            | nascimento | sexo | peso   | altura | nacionalidade | cursopreferido | id | data       | idgafanhoto | idcurso |
+----+--------------------+----------------------+------------+------+--------+--------+---------------+----------------+----+------------+-------------+---------+
|  1 | Daniel Morais      | Auxiliar Administrat | 1984-01-02 | M    |  78.50 |   1.83 | Brasil        |              1 |  1 | 2014-01-01 |           1 |       2 |
| 15 | Josiane Dutra      | Empreendedor         | 1950-01-20 | F    |  98.70 |   1.04 | Portugal      |           NULL |  2 | 2016-08-01 |          15 |      10 |
| 22 | Guilherme de Sousa | Dentista             | 2001-05-18 | M    | 132.70 |   1.97 | Moçambique    |           NULL |  3 | 2014-06-23 |          22 |      12 |
|  3 | Emerson Gabriel    | Programador          | 1920-12-30 | M    |  50.20 |   1.65 | Moçambique    |           NULL |  4 | 2015-12-22 |           3 |       6 |
+----+--------------------+----------------------+------------+------+--------+--------+---------------+----------------+----+------------+-------------+---------+

Simplificando a tabela juntada fica:

SELECT g.id, g.nome, a.idgafanhoto, idcurso FROM gafanhotos g JOIN gafanhoto_assiste_curso a ON g.id = a.idgafanhoto;

+----+--------------------+-------------+---------+
| id | nome               | idgafanhoto | idcurso |
+----+--------------------+-------------+---------+
|  1 | Daniel Morais      |           1 |       2 |
| 15 | Josiane Dutra      |          15 |      10 |
| 22 | Guilherme de Sousa |          22 |      12 |
|  3 | Emerson Gabriel    |           3 |       6 |
+----+--------------------+-------------+---------+

SELECT g.nome, idcurso FROM gafanhotos g JOIN gafanhoto_assiste_curso a
ON g.id = a.idgafanhoto
ORDER BY g.nome;

+--------------------+---------+
| nome               | idcurso |
+--------------------+---------+
| Daniel Morais      |       2 |
| Emerson Gabriel    |       6 |
| Guilherme de Sousa |      12 |
| Josiane Dutra      |      10 |
+--------------------+---------+
________________________________________________________________________________________________________________________________________________________________________________________________________________________

Queremos não mais o código do curso, além disso, o 'NOME' do curso.
O nomes do curso estão na terceira tabela, do curso. Usaremos mais um JOIN.
Sendo assim:

SELECT g.nome, c.nome FROM gafanhotos g 
JOIN gafanhoto_assiste_curso a
ON g.id = a.idgafanhoto
JOIN cursos c 
ON c.idcurso = a.idcurso;

+--------------------+------------+
| nome               | nome       |
+--------------------+------------+
| Daniel Morais      | Algoritmos |
| Josiane Dutra      | Excel      |
| Guilherme de Sousa | C++        |
| Emerson Gabriel    | MySQL      |
+--------------------+------------+
** ESSES SÃO OS NOMES,PORTANTO, DOS CÓDIGOS DOS CURSOS ***

_______________________________________________________________________________________________________________________________________________







