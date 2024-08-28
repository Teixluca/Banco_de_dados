
use aula_6;

CREATE TABLE professores(
	codigo_prof INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nome VARCHAR(70) NOT NULL,
    data_nasc_prof DATE NOT NULL,
    disciplina VARCHAR(70) NOT NULL
);


CREATE TABLE tb_categorias(
	id_categoria INT AUTO_INCREMENT NOT NULL,
    descricao_categoria VARCHAR (70) NOT NULL,
    PRIMARY KEY(id_categoria)
);
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Eletrônicos');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Moveis');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Roupas');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Calçados');

INSERT INTO tb_categorias (descricao_categoria) VALUES ('Acessórios');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Beleza e Cuidados Pessoais');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Produtos de Higiene');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Alimentos e Bebidas');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Brinquedos');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Ferramentas');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Equipamentos de Esporte');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Livros');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Eletrodomésticos');

select * from tb_categorias;

INSERT INTO tb_categorias (descricao_categoria) VALUES ('Produtos de Limpeza');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Artigos de Papelaria');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Informática');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Materiais de Construção');

INSERT INTO tb_categorias (descricao_categoria) VALUES ('Autopeças');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Instrumentos Musicais');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Utensílios Domésticos');

INSERT INTO tb_categorias (descricao_categoria) VALUES ('Produtos para Animais');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Decoração');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Iluminação');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Materiais Escolares');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Perfumes');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Produtos para Jardinagem');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Artigos para Festas');

INSERT INTO tb_categorias (descricao_categoria) VALUES ('Material de Escritório');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Câmeras e Acessórios Fotográficos');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Videogames');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Artigos para Bebês');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Artigos de Cama, Mesa e Banho');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Produtos Naturais');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Artigos Esportivos');

INSERT INTO tb_categorias (descricao_categoria) VALUES ('Bicicletas e Acessórios');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Produtos de Saúde');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Artigos de Viagem');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Móveis para Escritório');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Artigos de Costura');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Produtos para Cabelos');
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Moda Infantil');

INSERT INTO tb_categorias(descricao_categoria) VALUES ('Moda Praia');
INSERT INTO tb_categorias(descricao_categoria) VALUES ('Moda Fitness');
INSERT INTO tb_categorias(descricao_categoria) VALUES ('Bolsas e Mochilas');
INSERT INTO tb_categorias(descricao_categoria) VALUES ('Artigos de Cozinha');
INSERT INTO tb_categorias(descricao_categoria) VALUES ('Produtos de Automação Residencial');
INSERT INTO tb_categorias(descricao_categoria) VALUES ('Equipamentos de Segurança');
INSERT INTO tb_categorias(descricao_categoria) VALUES ('Artigos de Camping');
INSERT INTO tb_categorias(descricao_categoria) VALUES ('Vinhos e Bebidas Especiais');

select * from tb_categorias;


CREATE TABLE tb_produtos(
	id_produtos INT AUTO_INCREMENT NOT NULL,
    descricao_produto VARCHAR(70) NOT NULL,
    valor_produto DECIMAL(10,2) NOT NULL,
	id_categoria INT,
    PRIMARY KEY(id_produtos),
    CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
); 

CREATE TABLE funcionarios(
	id_funcionarios INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nome_func VARCHAR(70) NOT NULL,
    email_func VARCHAR(70) NOT NULL,
    cpf_func VARCHAR(15) NOT NULL,
    endereco_func VARCHAR(70) NOT NULL    
); 