CREATE SCHEMA escola;
use escola;
		# TABELA ALUNOS
create table alunos(
aluno_id INT AUTO_INCREMENT PRIMARY KEY,
nome_aluno VARCHAR(70) NOT NULL,
data_nasc_aluno DATE NOT NULL,
endereco_aluno VARCHAR(100) NOT NULL,
tel_aluno VARCHAR(20),
email_aluno VARCHAR(100) UNIQUE

);

		# TABELA PROFESSORES
CREATE TABLE professores(
prof_id INT AUTO_INCREMENT PRIMARY KEY,
nome_prof VARCHAR(70) NOT NULL,
especialidade VARCHAR(70) NOT NULL, #MATERIA
endereco_prof VARCHAR(100) NOT NULL,
tel_prof VARCHAR(20) NOT NULL,
email_prof VARCHAR(100)
);

		# TABELA CURSOS
CREATE TABLE cursos(
curso_id INT AUTO_INCREMENT PRIMARY KEY,
nome_curso VARCHAR(70) NOT NULL,
descricao_curso TEXT NOT NULL,
carga_horaria_curso INT NOT NULL
);

		# TABELA MATRICULAS
CREATE TABLE matriculas(
matricula_id INT AUTO_INCREMENT PRIMARY KEY,
aluno_id INT,
curso_id INT,
data_matricula DATE NOT NULL,
FOREIGN KEY (aluno_id) REFERENCES alunos (aluno_id),
FOREIGN KEY (curso_id) REFERENCES cursos(curso_id)
);     

		# TABELA AULAS
CREATE TABLE aulas(
aula_id INT AUTO_INCREMENT PRIMARY KEY,
curso_id INT,
prof_id INT,
data_aula DATE,
horario_aula TIME NOT NULL,
FOREIGN KEY (curso_id) references cursos(curso_id),
FOREIGN KEY (prof_id) REFERENCES professores(prof_id)
);

		# INSERINDO DADOS EM 'ALUNOS'
INSERT INTO alunos(nome_aluno, data_nasc_aluno, endereco_aluno, tel_aluno, email_aluno) VALUES 
('João Silva', '2005-05-15', 'Rua A', '1111-1111', 'JoaoSilva@gmail.com'),
('Maria Oliveira', '2006-07-22', 'Rua B', '2222-2222','MariaOliveira@gmail.com');

		# INSERINDO DADOS EM 'PROFESSORES'
INSERT INTO professores(nome_prof, especialidade, endereco_prof, tel_prof, email_prof) VALUES
('Carlos Pereira', 'Matematica', 'Avenida C, 789', '3333-3333', 'CarlosPereira@gmail.com'),
('Ana Santos', 'Historia', 'Avenida D, 101', '4444-4444', 'AnaSantos@gmail.com');

		# INSERINDO DADOS EM 'CURSOS'
INSERT INTO cursos(nome_curso, descricao_curso, carga_horaria_curso) VALUES
('Matematica Basica', 'Curso de matematica para iniciantes', 60),
('Historia Geral', 'Curso sobre historia geral do mundo', 45);


		# INSERINDO MATRICULAS
INSERT INTO matriculas(aluno_id, curso_id, data_matricula) VALUES 
(1, 1, '2024-08-01'),
(2,2, '2024-08-02');


		# INSERINDO AULAS
INSERT INTO aulas(curso_id, prof_id, data_aula, horario_aula) VALUES 
(1,1, '2024-08-05', '09:00:00'),
(2,2, '2024-08-06', '11:00:00');


		# LISTAR TODOS OS ALUNOS
select * from alunos;

		# listar cursos com professores

select c.nome_curso as curso, p.nome_prof as professor 
from aulas a 
join cursos c  on a.curso_id = c.curso_id 
join professores p on a.prof_id = p.prof_id;

		#listar matriculas de um aluno

select a.nome_aluno as NOME, c.nome_curso as CURSO, data_matricula
from matriculas m 
join alunos a on  m.curso_id = a.aluno_id
join cursos c on m.curso_id = c.curso_id
where a.nome_aluno = 'João Silva';
#ou:
select nome_aluno as NOME, nome_curso as CURSO, data_matricula AS DATA_MATRICULA
from matriculas  
join alunos on  matriculas.curso_id = alunos.aluno_id
join cursos on matriculas.curso_id = cursos.curso_id
where alunos.nome_aluno = 'João Silva'














