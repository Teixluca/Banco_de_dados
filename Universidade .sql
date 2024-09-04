CREATE DATABASE universidade;
USE universidade;

CREATE TABLE alunos(
aluno_id INT AUTO_INCREMENT,
nome_aluno VARCHAR(70) NOT NULL,
data_nasc_aluno DATE NOT NULL,
email_aluno VARCHAR(70),
PRIMARY KEY(aluno_id)
);

INSERT INTO alunos(nome_aluno, data_nasc_aluno, email_aluno) values ('Lucas Alves Teixeira', '1993-08-10', 'lucas.alves@outlook.com');
INSERT INTO alunos(nome_aluno, data_nasc_aluno, email_aluno) values ('Maria Rita do Nascimento', '2000-07-24', 'maria.rita@gmail');

select * from alunos;

CREATE TABLE professores(
professor_id INT AUTO_INCREMENT,
nome_professor VARCHAR(70) NOT NULL,
data_nasc_professor DATE NOT NULL,
email_professor VARCHAR(70),
PRIMARY KEY (professor_id)
);

INSERT INTO professores(nome_professor) VALUES('Margarete');
INSERT INTO professores(nome_professor) VALUES('Luis Cesar');

select * from professores;

CREATE TABLE cursos(
curso_id INT AUTO_INCREMENT,
nome_curso VARCHAR(70),
professor_id INT NOT NULL,
aluno_id INT NOT NULL,
PRIMARY KEY (curso_id),
CONSTRAINT professor_fk FOREIGN KEY (professor_id) REFERENCES professores(professor_id),
CONSTRAINT aluno_fk FOREIGN KEY (aluno_id) REFERENCES alunos(aluno_id)
);

INSERT INTO cursos(nome_curso, professor_id, aluno_id) VALUES ('Banco de Dados', 1, 1);
INSERT INTO cursos(nome_curso, professor_id, aluno_id) VALUES ('Logica de Programação', 2, 1);
INSERT INTO cursos(nome_curso, professor_id, aluno_id) VALUES ('IOT', 2, 2);
INSERT INTO cursos(nome_curso, professor_id, aluno_id) VALUES ('IOT', 1, 2);

select * from cursos;


SELECT nome_aluno AS ALUNO, nome_curso AS CURSO, nome_professor AS PROFESSOR FROM cursos
inner JOIN alunos ON cursos.aluno_id = alunos.aluno_id
inner JOIN professores ON cursos.professor_id = professores.professor_id;

#select nome_curso, professores.nome_professores, alunos.nome_aluno from cursos;

