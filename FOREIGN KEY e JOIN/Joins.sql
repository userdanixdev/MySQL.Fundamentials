-- Joins: Junções
-- Esta Cláusula é usada para combinar as linhas de duas ou mais tabelas baseado no relacionamento entre elas. -- 
-- Inner Join ou Somente Join : Retorna registros que têm valores correspondentes em ambas as tabelas
-- Left Join : Retornar todos os registros das tabela à esquerda e os registros correspondentes da tabela da direita.
-- Right Join : Retornar todos os registros da tabela da direitas e os registros correspondentes da tabela da esquerda.


-- Para iniciar os exemplos, devemos criar tabelas:
CREATE TABLE `matricula` (
	`id_aluno` INT(10) NOT NULL,
	`id_disciplina` INT(10) NOT NULL,
	`periodo` VARCHAR(10) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	PRIMARY KEY (`id_aluno`, `id_disciplina`) USING BTREE,
	INDEX `id_disciplina` (`id_disciplina`) USING BTREE,
	CONSTRAINT `matricula_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `alunos` (`id_aluno`) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT `matricula_ibfk_2` FOREIGN KEY (`id_disciplina`) REFERENCES `disciplina` (`id_disciplina`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb3_general_ci'
ENGINE=InnoDB
;
CREATE TABLE `alunos` (
	`id_aluno` INT(10) NOT NULL AUTO_INCREMENT,
	`nome` VARCHAR(20) NOT NULL COLLATE 'utf8mb3_general_ci',
	PRIMARY KEY (`id_aluno`) USING BTREE
)
COLLATE='utf8mb3_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=7
;
CREATE TABLE `disciplina` (
	`id_disciplina` INT(10) NOT NULL AUTO_INCREMENT,
	`nome_disc` VARCHAR(20) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	PRIMARY KEY (`id_disciplina`) USING BTREE
)
COLLATE='utf8mb3_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=6
;

-- Agora iremos inserir os dados:
-- Inserção na tabela disciplina:

INSERT INTO disciplina (nome_disc) VALUES
('Fisica'),('Matemática'),('Portugues'),('Quimica'),('Historia');

-- Inserir matriculas dos alunos --
INSERT INTO matricula VALUES ('1','1','Noturno');
INSERT INTO matricula VALUES ('1','2','Vespertino');
INSERT INTO matricula VALUES ('1','3','Matutino');

INSERT INTO matricula VALUES ('2','1','Noturno');
INSERT INTO matricula VALUES ('2','2','Vespertino');
INSERT INTO matricula VALUES ('2','3','Matutino');

INSERT INTO matricula VALUES ('3','1','Noturno');
INSERT INTO matricula VALUES ('3','3','Noturno');
INSERT INTO matricula VALUES ('3','4','Noturno');

INSERT INTO matricula VALUES ('5','1','Matutino');
INSERT INTO matricula VALUES ('5','2','Vespertino');
INSERT INTO matricula VALUES ('5','4','Noturno');

-- Dado uma visão no banco de dados o aluno 4 não está inserido, ou seja, sem matrícula
-- E a disciplina 5 não tem alunos --

-- INNER JOIN --

