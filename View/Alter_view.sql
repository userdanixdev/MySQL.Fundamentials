-- Para alterar uma view primeiro temos que criar uma view --
-- Criando uma view com varias tabelas usando UNION ALL --
-- Usando qualquer base de dados iremos criar tabelas --

CREATE TABLE fornec_1(
  id_fornec int not null primary key,
  fornec varchar(50) not null,
  constraint chk_f1 check(id_fornec between 1 and 150)   -- Range de fornecedores
  );

CREATE TABLE fornec_2(
  id_fornec int not null primary key,
  fornec varchar(50) not null,
  constraint chk_f2 check(id_fornec between 151 and 300) -- Range de fornecedores
  );

CREATE TABLE fornec_3(
  id_fornec int not null primary key,
  fornec varchar(50) not null,
  constraint chk_f3 check(id_fornec between 301 and 450) -- Restrição de range de fornecedores --
  );

CREATE TABLE fornec_4(
  id_fornec int not null primary key,
  fornec varchar(50) not null,
  constraint chk_f4 check(id_fornec between 451 and 600)
  );

-- Inserindo os valores --
INSERT fornec_1 values ('150','CalifornianCorp');
INSERT fornec_1 values ('5','BrazilianLtd');

-- Inserindo valores para os fornecedores 2:
INSERT fornec_2 values ('231','FarEast');
INSERT fornec_2 values ('280','NZ');

-- Inserindo valores para os fornecedores 3:
INSERT fornec_3 values ('321','EuroGroup');
INSERT fornec_3 values ('442','UKArchip');

-- Inserindo valores para os fornecedores 4:
INSERT fornec_4 values ('475','India');
INSERT fornec_4 values ('521','Afrique');

-- Usando o UNION all podemos juntar todas as tabelas de fornecedores criando uma view --
CREATE VIEW v_fornec_geral
as 
select id_fornec,fornec from fornec_1
UNION ALL
select id_fornec,fornec from fornec_2
UNION ALL
select id_fornec,fornec from fornec_3
UNION ALL
select id_fornec,fornec from fornec_4

-- Vamos consultar a view, já que ela foi criada --

select * from v_fornec_geral

mysql> select * from v_fornec_geral;
+-----------+-----------------+
| id_fornec | fornec          |
+-----------+-----------------+
|         5 | BrazilianLtd    |
|       150 | CalifornianCorp |
|       231 | FarEast         |
|       280 | NZ              |
|       321 | EuroGroup       |
|       442 | UKArchip        |
|       475 | India           |
|       521 | Afrique         |
+-----------+-----------------+
8 rows in set (0.00 sec)
-- Porém , na tabela unificada não existe uma identificação de cada fornecedor. Podemos deletar a view : 'drop view v_fornec_geral' ou alterar a view:

ALTER VIEW v_fornec_geral
as
SELECT 'fornec_1' as origem, id_fornec,fornec from fornec_1
UNION ALL
SELECT 'fornec_2' as origem, id_fornec,fornec from fornec_2
UNION ALL
SELECT 'fornec_3' as origem, id_fornec,fornec from fornec_3
UNION ALL
SELECT 'fornec_4' as origem, id_fornec,fornec from fornec_4

-- podemos reaproveitar o código e fazer a alteração criando um campo adicional 'origem':

mysql> select * from v_fornec_geral;
+----------+-----------+-----------------+
| origem   | id_fornec | fornec          |
+----------+-----------+-----------------+
| fornec_1 |         5 | BrazilianLtd    |
| fornec_1 |       150 | CalifornianCorp |
| fornec_2 |       231 | FarEast         |
| fornec_2 |       280 | NZ              |
| fornec_3 |       321 | EuroGroup       |
| fornec_3 |       442 | UKArchip        |
| fornec_4 |       475 | India           |
| fornec_4 |       521 | Afrique         |
+----------+-----------+-----------------+
8 rows in set (0.01 sec)

-- Inserindo mais registros --
-- Ao inserir mais registros em quaisquer tabela, a view automaticamente é atualizada também --

insert fornec_4 values ('476','Norway');
insert fornec_4 values ('522','Netherlands');

-- Fazendo a consulta na view novamente, veremos que os novos registros inseridos acima foram computados:
mysql> select * from v_fornec_geral;
+----------+-----------+-----------------+
| origem   | id_fornec | fornec          |
+----------+-----------+-----------------+
| fornec_1 |         5 | BrazilianLtd    |
| fornec_1 |       150 | CalifornianCorp |
| fornec_2 |       231 | FarEast         |
| fornec_2 |       280 | NZ              |
| fornec_3 |       321 | EuroGroup       |
| fornec_3 |       442 | UKArchip        |
| fornec_4 |       475 | India           |
| fornec_4 |       476 | Norway          |
| fornec_4 |       521 | Afrique         |
| fornec_4 |       522 | Netherlands     |
+----------+-----------+-----------------+
10 rows in set (0.00 sec)










