CREATE DATABASE escola2;
USE escola2;

CREATE TABLE pessoas(
pessoa_id INT AUTO_INCREMENT PRIMARY KEY,
nome_pessoa VARCHAR(100) NOT NULL,
prof_id INT,
aluno_id INT,
funcao VARCHAR(10)
);

insert into pessoas(nome_pessoa, funcao) values ('Lucas Alves', 'Aluno'), ('Maria Rita','Aluno'), ('Meg','Professora'), ('Ketlyn Mariana','Aluno'), ('Larissa Flausino','Aluno'), ('Marceli Matos', 'Professora');


CREATE TABLE alunos(
aluno_id INT,
FOREIGN KEY (aluno_id) REFERENCES pessoas(pessoa_id)
);

insert into alunos(aluno_id) values (1),(2),(4),(5);

select nome_pessoa Pessoa, p.funcao Funcao from alunos
join pessoas p on alunos.aluno_id = p.pessoa_id;


CREATE TABLE professores(
prof_id INT,
FOREIGN KEY (prof_id) REFERENCES pessoas(pessoa_id)
);

insert into professores(prof_id) values (3), (6);

select nome_pessoa NOME, p.funcao Funcao from professores pr
join pessoas p on pr.prof_id = p.pessoa_id;

# MOSTRANDOI TABELA PESSOAS
select nome_pessoa NOME, p.funcao FUNCAO from pessoas p;
