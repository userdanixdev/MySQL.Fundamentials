O comando OUTER JOIN precisa ter uma preferência: 'right' ligado a alguma chave nomeada ou 'left' ligado a outra chave.
No caso da tabela 'CADASTRO', dump (backup) e nos registro anteriores (arquivos) podemos usar o ' OUTER JOIN' da seguinte forma:

**** O LADO 'left' nesse caso é a chave primária, usada como ligação com a chave estrangeira,múltipla. ****

SELECT gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano FROM gafanhotos LEFTT OUTER JOIN cursos ON cursos.idcurso = gafanhotos.cursopreferido;

+---------------------------+----------------+------------+------+
| nome                      | cursopreferido | nome       | ano  |
+---------------------------+----------------+------------+------+
| Daniel Morais             |              1 | HTML5      | 2014 |
| Talita Nascimento         |              2 | Algoritmos | 2014 |
| Emerson Gabriel           |           NULL | NULL       | NULL |
| Lucas Damasceno           |           NULL | NULL       | NULL |
| Leila Martins             |           NULL | NULL       | NULL |
| Letícia Neves             |           NULL | NULL       | NULL |
| Janaína Couto             |           NULL | NULL       | NULL |
| Carlisson Rosa            |           NULL | NULL       | NULL |
| Jackson Telles            |           NULL | NULL       | NULL |
| Danilo Araujo             |           NULL | NULL       | NULL |
| Andreia Delfino           |           NULL | NULL       | NULL |
| Valter Vilmerson          |           NULL | NULL       | NULL |
| Allan Silva               |           NULL | NULL       | NULL |
| Rosana Kunz               |           NULL | NULL       | NULL |
| Josiane Dutra             |           NULL | NULL       | NULL |
| Elvis Schwarz             |           NULL | NULL       | NULL |
| Paulo Narley              |           NULL | NULL       | NULL |
| Joade Assis               |           NULL | NULL       | NULL |
| Nara Matos                |           NULL | NULL       | NULL |
| Marcos Dissotti           |           NULL | NULL       | NULL |
| Ana Carolina Mendes       |           NULL | NULL       | NULL |
| Guilherme de Sousa        |           NULL | NULL       | NULL |
| Bruno Torres              |           NULL | NULL       | NULL |
| Yuji Homa                 |           NULL | NULL       | NULL |
| Raian Porto               |           NULL | NULL       | NULL |
| Paulo Batista             |           NULL | NULL       | NULL |
| Monique Precivalli        |           NULL | NULL       | NULL |
| Herisson Silva            |           NULL | NULL       | NULL |
| Tiago Ulisses             |           NULL | NULL       | NULL |
| Anderson Rafael           |           NULL | NULL       | NULL |
| Karine Ribeiro            |           NULL | NULL       | NULL |
| Roberto Luiz Debarba      |           NULL | NULL       | NULL |
| Jarismar Andrade          |           NULL | NULL       | NULL |
| Janaina Oliveira          |           NULL | NULL       | NULL |
| Márcio Mello              |           NULL | NULL       | NULL |
| Robson Rodolpho           |           NULL | NULL       | NULL |
| Daniele Moledo            |           NULL | NULL       | NULL |
| Neto Sophiate             |           NULL | NULL       | NULL |
| Neriton Dias              |           NULL | NULL       | NULL |
| André Schmidt             |           NULL | NULL       | NULL |
| Isaias Buscarino          |           NULL | NULL       | NULL |
| Rafael Guimma             |           NULL | NULL       | NULL |
| Ana Carolina Hernandes    |           NULL | NULL       | NULL |
| Luiz Paulo                |           NULL | NULL       | NULL |
| Bruna Teles               |           NULL | NULL       | NULL |
| Diogo Padilha             |           NULL | NULL       | NULL |
| Bruno Miltersteiner       |           NULL | NULL       | NULL |
| Elaine Nunes              |           NULL | NULL       | NULL |
| Silvio Ricardo            |           NULL | NULL       | NULL |
| Denilson Barbosa da Silva |           NULL | NULL       | NULL |
| Jucinei Teixeira          |           NULL | NULL       | NULL |
| Bruna Santos              |           NULL | NULL       | NULL |
| André Vitebo              |           NULL | NULL       | NULL |
| Andre Santini             |           NULL | NULL       | NULL |
| Ruan Valente              |           NULL | NULL       | NULL |
| Nailton Mauricio          |           NULL | NULL       | NULL |
| Rita Pontes               |           NULL | NULL       | NULL |
| Carlos Camargo            |           NULL | NULL       | NULL |
| Philppe Oliveira          |           NULL | NULL       | NULL |
| Dayana Dias               |           NULL | NULL       | NULL |
| Silvana Albuquerque       |           NULL | NULL       | NULL |
+---------------------------+----------------+------------+------+

AGORA SE USAR-MOS O RIGHT OUTER JOIN, DAREMOS PREFERÊNCIA PARA OS CÓDIGOS DA CHAVE DE CURSOS:   **** Sendo assim, os nomes dos alunos 'gafanhotos' ficarão nulos, menos os que renomeamos através da 'chave estrangeira'.

SELECT gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano FROM gafanhotos RIGHT OUTER JOIN cursos ON cursos.idcurso = gafanhotos.cursopreferido;

+-------------------+----------------+--------------------+------+
| nome              | cursopreferido | nome               | ano  |
+-------------------+----------------+--------------------+------+
| Daniel Morais     |              1 | HTML5              | 2014 |
| Talita Nascimento |              2 | Algoritmos         | 2014 |
| NULL              |           NULL | Photoshop5         | 2014 |
| NULL              |           NULL | PHP                | 2015 |
| NULL              |           NULL | Java               | 2015 |
| NULL              |           NULL | MySQL              | 2016 |
| NULL              |           NULL | Word               | 2016 |
| NULL              |           NULL | Python             | 2017 |
| NULL              |           NULL | POO                | 2016 |
| NULL              |           NULL | Excel              | 2017 |
| NULL              |           NULL | Responsividade     | 2018 |
| NULL              |           NULL | C++                | 2017 |
| NULL              |           NULL | C#                 | 2017 |
| NULL              |           NULL | Android            | 2018 |
| NULL              |           NULL | JavaScript         | 2017 |
| NULL              |           NULL | PowerPoint         | 2018 |
| NULL              |           NULL | Swift              | 2019 |
| NULL              |           NULL | Hardware           | 2017 |
| NULL              |           NULL | Redes              | 2016 |
| NULL              |           NULL | Segurança          | 2018 |
| NULL              |           NULL | SEO                | 2017 |
| NULL              |           NULL | Premiere           | 2017 |
| NULL              |           NULL | After Effects      | 2018 |
| NULL              |           NULL | WordPress          | 2019 |
| NULL              |           NULL | Joomla             | 2019 |
| NULL              |           NULL | Magento            | 2019 |
| NULL              |           NULL | Modelagem de Dados | 2020 |
| NULL              |           NULL | HTML4              | 2010 |
| NULL              |           NULL | PHP7               | 2020 |
| NULL              |           NULL | PHP4               | 2010 |
+-------------------+----------------+--------------------+------+

