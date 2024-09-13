CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE autores(
autor_id INT AUTO_INCREMENT,
nome_autor VARCHAR(100) NOT NULL,
PRIMARY KEY (autor_id)
);

INSERT INTO autores (nome_autor) VALUES ('J.K. Rowling'), ('George Orwell'), ('J.R.R. Tolkien'), ('Jane Austen'), ('Mark Twain');

CREATE TABLE livros(
livro_id INT AUTO_INCREMENT,
nome_livro VARCHAR(100) NOT NULL,
data_lancamento DATE NOT NULL,
PRIMARY KEY (livro_id)
);

INSERT INTO livros (nome_livro, data_lancamento) VALUES ('Harry Potter e a Pedra Filosofal', '1997-06-26'), ('1984', '1949-06-08'), 
('O Senhor dos Anéis', '1954-07-29'), ('Orgulho e Preconceito', '1813-01-28'), ('As Aventuras de Tom Sawyer', '1876-06-01');

CREATE TABLE aut_liv(
autor_id INT,
livro_id INT,
FOREIGN KEY (autor_id) REFERENCES autores(autor_id),
FOREIGN KEY (livro_id) REFERENCES livros(livro_id)
);

INSERT INTO aut_liv (autor_id, livro_id) VALUES (1, 1), (2, 2), (3, 3), (4, 4), (5, 5);

select nome_livro LIVRO, nome_autor AUTOR, data_lancamento LANCAMENTO from aut_liv al
join autores a ON al.autor_id = a.autor_id
join livros l on al.livro_id = l.livro_id
order by l.nome_livro;



