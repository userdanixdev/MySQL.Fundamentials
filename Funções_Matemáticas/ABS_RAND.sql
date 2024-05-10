-- Funções Matemáticas --
-- abs  retornará o valor absoluto numérico --
-- Exemplo:
select abs(-1.0)val1,
		    abs(0.0)val1,
        abs(-2.0)val1,
        abs(-9.0)val1,
        abs(-5.4)val1,
        abs(5.4)val1

+------+------+-----+------+
| val1 | val2 | va3 | val4 |
+------+------+-----+------+
|  1.0 |  2.0 | 9.0 |  5.4 |
+------+------+-----+------+
1 row in set (0.00 sec)

-- A função Matemática 'rand' irá retornar valores aleatorios entre 0 e 1:	
select rand() 
union
select rand()
union
select rand();
+---------------------+
| rand()              |
+---------------------+
| 0.38611418882954324 |
| 0.07741686429587832 |
| 0.22874178572440687 |
+---------------------+
3 rows in set (0.01 sec)

-- A função ROUND irá arredondar um valor numérico 

