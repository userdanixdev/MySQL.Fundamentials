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
