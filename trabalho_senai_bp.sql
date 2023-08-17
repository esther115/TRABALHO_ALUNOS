CREATE DATABASE senai_bp;


USE senai_bp;

CREATE TABLE cursos(
cod_curso INT,
nome_curso VARCHAR(100),
PRIMARY KEY (cod_curso)
);

CREATE TABLE alunos(
cod_aluno INT,
nome VARCHAR(45),
sobrenome VARCHAR(45),
data_nascimento DATE,
cod_curso INT,
PRIMARY KEY(cod_aluno),
FOREIGN KEY (cod_curso) REFERENCES cursos (cod_curso)
);


INSERT INTO cursos VALUES(101, "Introdução ao Desenvolvimento de Projetos");
INSERT INTO cursos VALUES(102, "Inglês Técnico Aplicado ao Desenvolvimento de Sistemas");
INSERT INTO cursos VALUES(103, "Higiene do Alimento:Microbiologia de Alimentos");
INSERT INTO cursos VALUES(104, "Ferramentas Digitais de Gestão");
INSERT INTO cursos VALUES(105, "Introdução a IOT para Manutenção Industrial");
INSERT INTO cursos VALUES(106, "Introdução a Indústria 4.0");
INSERT INTO cursos VALUES(107, "Administrador de Banco de Dados");

select * from cursos;

DROP table alunos;

INSERT INTO alunos VALUES (1100,'Esther','Debora','2005-08-26','107');

SELECT*FROM cursos;

SELECT*FROM alunos where cod_aluno = 1100;

SELECT*FROM alunos where data_nascimento>='1999-01-01';

SELECT count(*) from alunos group by data_nascimento=2005;

 SELECT count(*) from cursos;
 
 select c.cod_curso, c.nome_curso, count(a.cod_curso) as alunos
from alunos a inner join cursos c on c.cod_curso = a.cod_curso
group by c.cod_curso;

 
select a.nome, a.sobrenome,c.nome_curso  from alunos a 
inner join cursos c on c.cod_curso=a.cod_curso where c.cod_curso=106;

 