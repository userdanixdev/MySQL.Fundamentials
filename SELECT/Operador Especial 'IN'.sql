O operador especial 'in' compara o valor de uma coluna como um conjunto
Exemplo01:

select*from produtos;
+------------+----------------+-----------+-------+------+
| id_categoria| nomes_produtos | categoria | preco | peso |
+------------+----------------+-----------+-------+------+
|          1 | café           | mercearia |  8.99 |    1 |
|          2 | Açucar         | Mercearia |  10.2 |    5 |
|          3 | Sabão em Pó    | Limpeza   |   9.9 |    1 |
|          4 | Vinho          | Bebida    |  59.9 |  750 |
|          5 | Refrigerante   | Bebida    |   7.9 |    2 |
+------------+----------------+-----------+-------+------+

SINTAXE:
select nomes_produtos,preco FROM produtos WHERE id_produto in 
(Select id_produto from produtos WHERE categoria='bebida' or categoria='limpeza'); 
Result:
+----------------+-------+
| nomes_produtos | preco |
+----------------+-------+
| Sabão em Pó    |   9.9 |
| Vinho          |  59.9 |
| Refrigerante   |   7.9 |
+----------------+-------+

Resolução: Com o operador 'in' podemos fazer uma sub-consulta ou consulta aninhada.
===============================================================
Exemplo02:
O operador especial 'in' pode também operar como uma lista de valores de uma coluna como um conjunto:

select*from produtos where id_categoria in(5,4);
+--------------+----------------+-----------+-------+------+
| id_categoria | nomes_produtos | categoria | preco | peso |
+--------------+----------------+-----------+-------+------+
|            4 | Vinho          | Bebida    |  59.9 |  750 |
|            5 | Refrigerante   | Bebida    |   7.9 |    2 |
+--------------+----------------+-----------+-------+------+
