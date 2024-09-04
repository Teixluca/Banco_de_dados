CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE autores(
autor_id INT AUTO_INCREMENT,
nome_autor VARCHAR(70) NOT NULL,
PRIMARY KEY (autor_id)
);

INSERT INTO autores(nome_autor) values ('Vinicios de moraes');
INSERT INTO autores(nome_autor) values ('Edgar Allan Poe');

CREATE TABLE livros(
livro_id INT AUTO_INCREMENT,
nome_livro VARCHAR(70) NOT NULL,
data_publi_livro DATE NOT NULL,

autor_id INT,
PRIMARY KEY (livro_id),
CONSTRAINT livros_autores_kf FOREIGN KEY (autor_id) REFERENCES autores(autor_id)
);

INSERT INTO livros(nome_livro, autor_id, data_publi_livro) values ('Soneto da FIdelidade', 1, '1939-08-10');
INSERT INTO livros(nome_livro, autor_id, data_publi_livro) VALUES ('O COrvo', 2, '1845-08-10');
INSERT INTO livros(nome_livro, data_publi_livro, autor_id) VALUES ('A Queda da Casa de Usher', '1839-10-04', 2);

CREATE TABLE usuarios(
usuario_id INT AUTO_INCREMENT,
nome_usuario VARCHAR(70) NOT NULL,
cpf_usuario VARCHAR(15) NOT NULL,
email_usuario VARCHAR(70) NOT NULL,
PRIMARY KEY (usuario_id)
);

INSERT INTO usuarios(nome_usuario, cpf_usuario, email_usuario) 
VALUES ('Lucas Alves Teixeira', '07082964919', 'lucas.alves@outlook.com'),
('Maria Rita do nascimento', '09085964910', 'maria.rita@outlook.com');

#ELECT nome_livro AS LIVRO, nome_autor AS AUTOR, data_publi_livro AS DATA_PUBLICAÇÂO FROM livros
#JOIN autores ON livros.autor_id = autores.autor_id;

CREATE TABLE emprestimos(
emprestimo_id INT AUTO_INCREMENT,
livro_id INT NOT NULL,
usuario_id INT not NULL,
data_emprestimo DATE NOT NULL,
data_devolucao DATE DEFAULT NULL,
PRIMARY KEY (emprestimo_id),
CONSTRAINT livro_empr_fk FOREIGN KEY (livro_id) REFERENCES livros(livro_id),
CONSTRaINT usuario_empr_fk FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)
);

insert into emprestimos(livro_id, usuario_id, data_emprestimo) values (1,2,'2024-04-09');
insert into emprestimos(livro_id, usuario_id, data_emprestimo) values (1,1,'2024-05-20');
insert into emprestimos(livro_id, usuario_id, data_emprestimo) values (2,1,'2024-06-12');
insert into emprestimos(livro_id, usuario_id, data_emprestimo) values (2,2,'2024-04-10');
insert into emprestimos(livro_id, usuario_id, data_emprestimo) values (3,2,'2024-04-10');

update biblioteca.emprestimos SET data_devolucao = '2024-04-20' where emprestimo_id = 1;
update biblioteca.emprestimos SET data_devolucao = '2024-09-20' where emprestimo_id = 2;
update biblioteca.emprestimos SET data_devolucao = '2024-09-20' where emprestimo_id = 3;
update biblioteca.emprestimos SET data_devolucao = '2024-08-16' where emprestimo_id = 4;

select emprestimo_id, livros.nome_livro AS LIVRO, usuarios.nome_usuario AS USUARIO, emprestimos.data_emprestimo, emprestimos.data_devolucao from emprestimos
join usuarios ON emprestimos.usuario_id = usuarios.usuario_id
join livros ON emprestimos.livro_id = livros.livro_id;