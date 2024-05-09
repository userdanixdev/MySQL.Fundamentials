Use 'database'
CREATE TABLE campeonato
(  nometime VARCHAR(30) NOT NULL,
	pontos INT NOT NULL 
);
insert into campeonato values ('Corinthians','53');
insert into campeonato values ('Grêmio','43');
insert into campeonato values ('Santos','41');
insert into campeonato values ('Palmeiras','40');
insert into campeonato values ('Flamengo','38');
insert into campeonato values ('Cruzeiro','37');
insert into campeonato values ('Botafogo','37');
insert into campeonato values ('Atlético-PR','34');
insert into campeonato values ('Vasco','31');
insert into campeonato values ('Atlético-MG','31');
insert into campeonato values ('Fluminense','31');
insert into campeonato values ('Sport','29');
insert into campeonato values ('Avaí','29');
insert into campeonato values ('Chapecoense','28');
insert into campeonato values ('Ponte Preta','28');
insert into campeonato values ('Bahia','27');
insert into campeonato values ('São Paulo','27');
insert into campeonato values ('Coritiba','27');
insert into campeonato values ('Vitória','26');
insert into campeonato values ('Atlético-GO','22');

select * from campeonato;
+--------------+--------+
| nometime     | pontos |
+--------------+--------+
| Corinthians  |     53 |
| Grêmio       |     43 |
| Santos       |     41 |
| Palmeiras    |     40 |
| Flamengo     |     38 |
| Cruzeiro     |     37 |
| Botafogo     |     37 |
| Atlético-PR  |     34 |
| Vasco        |     31 |
| Atlético-MG  |     31 |
| Fluminense   |     31 |
| Sport        |     29 |
| Avaí         |     29 |
| Chapecoense  |     28 |
| Ponte Preta  |     28 |
| Bahia        |     27 |
| São Paulo    |     27 |
| Coritiba     |     27 |
| Vitória      |     26 |
| Atlético-GO  |     22 |
+--------------+--------+
20 rows in set (0.00 sec)

-- Criando a classificação do campeonato:
-- Criar uma  variável com a posição iniciando no zero:
SET @posicao=0;
-- A variável irá receber um incremento '+1' com ':='
SELECT @posicao := @posicao + 1 AS posicao ,nometime,pontos FROM campeonato ORDER BY pontos DESC;

+---------+--------------+--------+
| posicao | nometime     | pontos |
+---------+--------------+--------+
|       1 | Corinthians  |     53 |
|       2 | Grêmio       |     43 |
|       3 | Santos       |     41 |
|       4 | Palmeiras    |     40 |
|       5 | Flamengo     |     38 |
|       6 | Cruzeiro     |     37 |
|       7 | Botafogo     |     37 |
|       8 | Atlético-PR  |     34 |
|       9 | Fluminense   |     31 |
|      10 | Atlético-MG  |     31 |
|      11 | Vasco        |     31 |
|      12 | Sport        |     29 |
|      13 | Avaí         |     29 |
|      14 | Chapecoense  |     28 |
|      15 | Ponte Preta  |     28 |
|      16 | Bahia        |     27 |
|      17 | São Paulo    |     27 |
|      18 | Coritiba     |     27 |
|      19 | Vitória      |     26 |
|      20 | Atlético-GO  |     22 |
+---------+--------------+--------+
20 rows in set, 1 warning (0.01 sec)

