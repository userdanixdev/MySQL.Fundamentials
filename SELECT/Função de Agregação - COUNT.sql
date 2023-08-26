Operador COUNT - Contador ( Função de agregação )

SELECT * FROM cursos WHERE carga > 40
++ Irá aparecer 6 registros completos com carga maior que 40 horas ++
+---------+-----------+------------------------------------------------------+-------+----------+------+
| idcurso | nome      | descricao                                            | carga | totaulas | ano  |
+---------+-----------+------------------------------------------------------+-------+----------+------+
|       9 | POO       | Curso de Programação Orientada a Objetos             |    60 |       35 | 2016 |
|      14 | Android   | Curso de Desenvolvimento de Aplicativos para Android |    60 |       30 | 2018 |
|      17 | Swift     | Curso de Desenvolvimento de Aplicativos para iOS     |    60 |       30 | 2019 |
|      24 | WordPress | Curso de Criação de Sites com WordPress              |    60 |       30 | 2019 |
|      25 | Joomla    | Curso de Criação de Sites com Joomla                 |    60 |       30 | 2019 |
|      26 | Magento   | Curso de Criação de Lojas Virtuais com Magento       |    50 |       25 | 2019 |
+---------+-----------+------------------------------------------------------+-------+----------+------+

Usando a função COUNT:

SELECT count(*) FROM cursos WHERE carga > 40
+----------+
| count(*) |
+----------+
|        6 |
+----------+

Resultado: Irá aparecer o número 6 em uma coluna de COUNT, mostrando que tem 6 registros com carga maior que 40.
____________________________________________________________________________________________________________________________________

Exemplo02:

use produtos;
select*from produtos;
+--------------+----------------+-----------+-------+------+
| id_categoria | nomes_produtos | categoria | preco | peso |
+--------------+----------------+-----------+-------+------+
|            1 | café           | mercearia |  8.99 |    1 |
|            2 | Açucar         | Mercearia |  10.2 |    5 |
|            3 | Sabão em Pó    | Limpeza   |   9.9 |    1 |
|            4 | Vinho          | Bebida    |  59.9 |  750 |
|            5 | Refrigerante   | Bebida    |   7.9 |    2 |
+--------------+----------------+-----------+-------+------+
E podemos usar na função de agregação count o pseudônimo AS como um nome provisório, sendo assim:

 select count(*) as Total from produtos;
+-------+
| Total |
+-------+
|     5 |
+-------+
=========================================================================================================
