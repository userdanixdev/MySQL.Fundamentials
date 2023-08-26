Abaixo são utilizados todos os comandos possíveis para a criação de uma tabela.
  Lembrando que o CREATE TABLE é um comando DDL(data definition language), ou seja, usado para especificar uma nova relação(tabela),
  incluindo seus atributos e restrições.

create table empregado2(
nome varchar(15) not null,
cod_empregado char(9) not null,
data_nascimento date,
endereço varchar(30),
sexo char,
salario decimal(10,2),
cod_supervisor char(9),
cod_depto int not null default 0,
constraint pk_emp primary key(cod_empregado),
constraint fk_numsup foreign key(cod_supervisor)
references empregado (cod_empregado),
constraint fk_empdep foreign key(cod_depto)
references departamento(cod_depto) on delete cascade
)
