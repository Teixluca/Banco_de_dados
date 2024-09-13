CREATE DATABASE escola;
use escola;

create table alunos(
aluno_id INT AUTO_INCREMENT PRIMARY KEY,
nome_aluno VARCHAR(100) NOT NULL
);

INSERT INTO alunos (nome_aluno) VALUES ('Ana Silva'), ('Carlos Almeida'), ('Mariana Costa'), ('Roberto Oliveira'), ('Juliana Souza'),  ('Pedro Santos'),
('Fernanda Martins'), ('João Lima'), ('Laura Fernandes'), ('Ricardo Souza');


CREATE TABLE cursos(
curso_id INT AUTO_INCREMENT PRIMARY KEY,
nome_curso VARCHAR(100) NOT NULL,
horas_curso varchar(10) not null
);

INSERT INTO cursos (nome_curso, horas_curso) VALUES ('Programação em Python', '60h'),('Banco de Dados', '50h'), 
('Algoritmos e Estruturas de Dados', '55h'), ('Desenvolvimento Web', '70h');

    

CREATE TABLE aluno_curso(
aluno_id INT,
curso_id INT,
data_inicio DATE NOT NULL,
data_fim DATE,
FOREIGN KEY (aluno_id) REFERENCES alunos(aluno_id),
FOREIGN KEY (curso_id) REFERENCES cursos(curso_id)
);

INSERT INTO aluno_curso (aluno_id, curso_id, data_inicio, data_fim) VALUES(1, 1, '2023-01-15', '2023-03-15'),
(2, 2, '2023-02-01', '2023-04-01'), (3, 3, '2023-03-10', '2023-05-10'), (4, 4, '2023-04-20', '2023-06-20'),
(5, 4, '2023-05-25', '2023-07-25'), (6, 3, '2023-06-30', '2023-08-30'), (7, 2, '2023-07-15', '2023-09-15'),
(8, 1, '2023-08-01', '2023-10-01'),(9, 1, '2023-09-05', '2023-11-05'),(10, 2, '2023-10-10', '2023-12-10'),
(8, 2, '2023-08-01', '2023-10-01'),(9, 2, '2023-09-05', '2023-11-05'),(10, 1, '2023-10-10', '2023-12-10');

SELECT nome_aluno ALUNO, nome_curso CURSO, data_inicio INICIO, data_fim FIM  from aluno_curso ac
join alunos a on ac.aluno_id = a.aluno_id
join cursos c on ac.curso_id = c.curso_id
order by ac.aluno_id;