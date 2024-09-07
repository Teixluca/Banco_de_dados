	#CRIAÇÃO E USO DO BD
create database biblioteca;
use biblioteca;

	#CRIAÇÃO DA TABELA AUTORES
CREATE TABLE autores(
autor_id INT AUTO_INCREMENT,
nome_autor VARCHAR(70) NOT NULL,
PRIMARY KEY (autor_id)
);

	#CRIAÇÃO DA TABELA LIVROS
CREATE TABLE livros(
livro_id INT AUTO_INCREMENT,
nome_livro VARCHAR(70) NOT NULL,
autor_id INT not null,
PRIMARY KEY (livro_id),
CONSTRAINT livro_autor_fk FOREIGN KEY (autor_id) REFERENCES autores(autor_id)
);

	#INSERINDO AUTORES
insert into autores(nome_autor) values ('J.K. Rowling');
insert into autores(nome_autor) values ('J.R.R. Tolkien');

	#INSERINDO LIVROS
insert into livros(nome_livro, autor_id) values ('Harry Potter e a Pedra Filosofal', 1);
insert into livros(nome_livro, autor_id) values ('Harry Potter e a Câmara Secreta', 1);
insert into livros(nome_livro, autor_id) values ('O Senhor dos Anéis: A Sociedadedo Anel', 2);

	#JUNTANDO TABELAS LIVROS E AUTORES E MOSTRANDO REALAÇÃO
select nome_livro AS TITULO_LIVRO, nome_autor AS AUTOR from livros
Join autores ON livros.autor_id = autores.autor_id;
	
    # CRIANDO TABELA CATEGORIAS
CREATE TABLE categorias(
categoria_id INT AUTO_INCREMENT,
nome_categoria VARCHAR(70),
livro_id int,
PRIMARY KEY (categoria_id),
constraint livro_categoria_fk foreign key (livro_id) references livros(livro_id) 
);

	#ADICIONANDO COLUNA CATEGORIA NA TABELA LIVROS
alter table livros add categoria_id INT;

select * from categorias;

	#INSERINDO CATEGORIAS
insert into categorias(nome_categoria) values ('Ficção Cientifica'), ('Crimes'), ('Romances');

	#ATUALIZANDO CATEGORIAS NOS LIVROS
update biblioteca.livros set categoria_id = 1 where livro_id = 1;
update biblioteca.livros set categoria_id = 1 where livro_id = 2;
update biblioteca.livros set categoria_id = 1 where livro_id = 3;
	
    #JUNTANDO TABELAS AUTORES, LIVROS E CATEGORIAS
select nome_livro AS TITULO, nome_autor AS AUTOR, nome_categoria AS CATEGORIA from livros
join categorias ON livros.categoria_id = categorias.categoria_id
join autores ON livros.autor_id = autores.autor_id; 
