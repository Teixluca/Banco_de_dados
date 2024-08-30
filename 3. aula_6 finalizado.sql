CREATE SCHEMA aula_6;
use aula_6;

CREATE TABLE professores(
	codigo_prof INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nome VARCHAR(70) NOT NULL,
    data_nasc_prof DATE NOT NULL,
    disciplina VARCHAR(70) NOT NULL
);


UPDATE aula_6.professores SET nome = 'LC Gawlik'where professores.codigo_prof = 4 ;
select * from professores;

INSERT INTO professores(nome, data_nasc_prof, disciplina) VALUES ('Meg', '1993-08-29', 'Banco de Dados');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Cristian Griebler', '1994-07-14', 'IOT');
INSERT INTO professores(nome,data_nasc_prof, disciplina) VALUES('Luiz Cesar Gawlik', '1990-05-04', 'Fundamentos de Eletroeletrônica Aplicada');
INSERT INTO professores(nome,data_nasc_prof, disciplina) VALUES('Luiz Cesar Gawlik', '1990-05-04', 'Lógica de Programação');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Ana Oliveira', '1985-03-12', 'Matemática');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Bruno Fernandes', '1990-06-22', 'Física');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Carla Souza', '1988-09-30', 'Biologia');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Daniela Ribeiro', '1992-11-15', 'Química');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Eduardo Lima', '1987-01-27', 'História');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Fernanda Costa', '1991-05-18', 'Geografia');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Gustavo Martins', '1993-08-04', 'Literatura');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Helena Dias', '1986-10-10', 'Filosofia');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Igor Almeida', '1995-12-02', 'Sociologia');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Juliana Santos', '1989-04-25', 'Educação Física');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Karen Medeiros', '1990-07-17', 'Inglês');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Larissa Flausino', '1990-07-17', 'Educação Fisica');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Leandro Batista', '1992-02-08', 'Artes');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Mariana Torres', '1988-11-29', 'Espanhol');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Nelson Prado', '1987-09-14', 'Física');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Olivia Cardoso', '1994-05-11', 'Química');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Paulo Henrique', '1991-08-23', 'Matemática');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Raquel Nunes', '1986-03-05', 'Biologia');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Sérgio Pereira', '1990-06-01', 'História');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Tatiana Ribeiro', '1992-12-20', 'Geografia');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Vinícius Freitas', '1989-10-02', 'Literatura');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Aline Rocha', '1993-07-27', 'Filosofia');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Bernardo Maciel', '1985-01-13', 'Sociologia');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Camila Souza', '1990-04-09', 'Educação Física');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Diego Almeida', '1995-11-06', 'Inglês');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Eliana Castro', '1987-02-24', 'Artes');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Fabio Miranda', '1988-08-15', 'Espanhol');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Gabriela Borges', '1991-09-30', 'Matemática');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Henrique Ferreira', '1994-10-19', 'Física');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Isabela Lima', '1986-11-03', 'Química');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('João Guilherme', '1993-12-12', 'História');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Larissa Dias', '1989-05-16', 'Geografia');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Matheus Nascimento', '1991-01-28', 'Literatura');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Natália Amaral', '1992-03-21', 'Filosofia');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Pedro Azevedo', '1987-07-08', 'Sociologia');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Regina Silva', '1990-09-11', 'Educação Física');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Tiago Barros', '1994-02-18', 'Inglês');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Ursula Menezes', '1988-12-14', 'Artes');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Victor Alves', '1986-04-07', 'Espanhol');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Wagner Fernandes', '1991-06-23', 'Matemática');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Xavier Souza', '1989-11-01', 'Física');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Yasmin Correia', '1993-05-29', 'Química');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Zélia Rocha', '1995-03-10', 'História');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Adriano Costa', '1992-08-21', 'Geografia');
INSERT INTO professores(nome,data_nasc_prof,disciplina) VALUES ('Beatriz Mendes', '1988-07-05', 'Literatura');
INSERT INTO professores(nome,data_nasc_prof, disciplina)VALUES ('Maria Rita', '24-07-2000', 'Educação Infantil');

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
INSERT INTO tb_categorias (descricao_categoria) VALUES ('Suplementos Alimentares');

CREATE TABLE tb_produtos(
	id_produtos INT AUTO_INCREMENT NOT NULL,
    descricao_produto VARCHAR(70) NOT NULL,
    valor_produto DECIMAL(10,2) NOT NULL,
	id_categoria INT,
    PRIMARY KEY(id_produtos),
    CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
); 

INSERT INTO tb_produtos(descricao_produto,valor_produto,id_categoria) VALUES ('Smartphone', '1999.00', 1), ('Fone de Ouvido Bluetooth', '299.00',1), ('Smartwatch', '899.00',1);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Sofá 3 Lugares', '2499.00', 2), ('Mesa de Jantar', '1200.00', 2), ('Cadeira Gamer', '899.00',2);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Camiseta Básica', '59.90', 3),('Calça Jeans', '129.90', 3),('Jaqueta de Couro', '399.90', 3);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Tênis Esportivo', '299.00', 4),('Sandália Feminina', '149.90', 4),('Botas de Couro', '349.00', 4);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Relógio de Pulso', '199.00', 5),('Óculos de Sol', '129.90', 5),('Cinto de Couro', '89.90', 5);

INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Perfume Importado', '399.00', 6),('Creme Hidratante', '59.90', 6),('Shampoo e Condicionador', '79.90', 6);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Escova de Dentes Elétrica', '149.90', 7),('Desodorante Antitranspirante', '19.90', 7),('Sabonete Líquido', '12.90', 7);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Café Gourmet 500g', '49.90', 8),('Barra de Chocolate 70% Cacau', '12.90', 8),('Vinho Tinto Seco 750ml', '79.90', 8);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Boneca Fashion', '129.90', 9),('Carrinho de Controle Remoto', '199.00', 9),('Quebra-Cabeça 1000 Peças', '59.90', 9);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Furadeira Elétrica', '299.00', 10),('Chave de Fenda Conjunto 6 Peças', '49.90', 10),('Martelo de Unha', '39.90', 10);

INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Bola de Futebol', '79.90', 11),('Bicicleta Mountain Bike', '2499.00', 11),('Luvas de Boxe', '199.00', 11);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Livro de Ficção Científica', '49.90', 12),('Livro de Autoajuda', '39.90', 12), ('Livro Infantil Ilustrado', '29.90', 12);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Geladeira Duplex', '3299.00', 13),('Micro-ondas', '499.00', 13),('Liquidificador', '199.00', 13);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Detergente Líquido', '9.90', 14),('Água Sanitária 2L', '5.90', 14),('Multiuso Desinfetante', '12.90', 14);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Caderno Universitário', '29.90', 15),('Canetas Esferográficas', '14.90', 15),('Agenda 2024', '39.90', 15);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Notebook', '4299.00', 16),('Teclado Mecânico', '349.00', 16),('Mouse Gamer', '199.00', 16);

INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Cimento 50kg', '34.90', 17),('Tinta Látex 18L', '189.00', 17),('Rolo de Pintura', '24.90', 17);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Bateria Automotiva', '399.00', 18),('Filtro de Óleo', '29.90', 18),('Palhetas para Limpador de Para-brisa', '49.90', 18);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES('Violão Acústico', '799.00', 19),('Teclado Musical', '1299.00', 19),('Bateria Completa', '3999.00', 19);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Panela de Pressão', '199.00', 20),('Jogo de Talheres 24 Peças', '99.90', 20),('Frigideira Antiaderente', '69.90', 20);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Ração para Cães 15kg', '149.90', 21),('Casinha de Cachorro', '249.00', 21),('Brinquedo para Gatos', '29.90', 21);

INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Vaso Decorativo', '89.90', 22),('Quadro Abstrato', '199.00', 22),('Cortina para Sala', '299.00', 22);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Luminária de Mesa', '129.90', 23),('Lâmpada LED', '19.90', 23),('Abajur de Quarto', '149.00', 23);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Estojo Escolar', '19.90', 24),('Mochila Escolar', '89.90', 24),('Lápis de Cor 24 Cores', '24.90', 24);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Perfume Feminino 50ml', '249.00', 25),('Perfume Masculino 100ml', '299.00', 25),('Body Splash', '59.90', 25);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Pá de Jardim', '29.90', 26),('Mangueira de Jardim 30m', '79.90', 26),('Adubo Orgânico 5kg', '19.90', 26);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Balões de Aniversário', '14.90', 27),('Conjunto de Descartáveis', '29.90', 27),('Velas de Aniversário', '9.90', 27);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Impressora Multifuncional', '799.00', 28),('Grampeador', '39.90', 28),('Folhas A4 500 Folhas', '39.90', 28);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Câmera DSLR', '2999.00', 29),('Tripé para Câmera', '199.00', 29),('Cartão de Memória 64GB', '79.90', 29);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Console de Videogame', '3499.00', 30),('Controle Sem Fio', '299.00', 30),('Jogo de Aventura', '249.00', 30);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Carrinho de Bebê', '799.00', 31),('Cadeirinha para Carro', '599.00', 31),('Berço Portátil', '499.00', 31);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Jogo de Lençol 4 Peças', '199.00', 32),('Toalha de Banho', '49.90', 32),('Travesseiro Ortopédico', '99.90', 32);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Óleo de Coco 200ml', '29.90', 33),('Mel Orgânico 500g', '39.90', 33),('Farinha de Linhaça 1kg', '19.90', 33);

INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Roupas para Ciclismo', '199.00', 34),('Tênis de Corrida', '399.00', 34),('Bola de Basquete', '129.90', 34);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Capacete para Ciclismo', '149.90', 35),('Suporte para Carro', '199.00', 35),('Bomba de Ar para Pneus', '49.90', 35);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Termômetro Digital', '49.90', 36),('Oxímetro de Dedo', '99.90', 36),('Aparelho de Pressão', '199.00', 36);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Mala de Viagem Grande', '399.00', 37),('Necessaire', '49.90', 37),('Travesseiro de Pescoço', '39.90', 37);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Mesa de Escritório', '599.00', 38),('Cadeira de Escritório', '299.00', 38),('Gaveteiro com Rodas', '199.00', 38);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Kit de Agulhas e Linhas', '29.90', 39),('Máquina de Costura', '1299.00', 39),('Tesoura de Costura', '49.90', 39);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Secador de Cabelos', '199.00', 40),('Chapinha Alisadora', '149.00', 40),('Creme para Pentear', '19.90', 40);

INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Conjunto Infantil Masculino', '79.90', 41),('Vestido Infantil', '99.90', 41),('Sandália Infantil', '59.90', 41);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Biquíni Feminino', '89.90', 42),('Sunga Masculina', '49.90', 42),('Saída de Praia', '69.90', 42);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES('Legging de Academia', '79.90', 43),('Top Esportivo', '49.90', 43),('Luvas de Academia', '29.90', 43);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Bolsa de Couro Feminina', '299.00', 44),('Mochila Executiva', '199.00', 44),('Bolsa Transversal', '149.00', 44);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Jogo de Panelas', '299.00', 45),('Faca Chef Profissional', '99.90', 45),('Escorredor de Pratos', '49.90', 45);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Lâmpada Inteligente', '129.90', 46),('Tomada Inteligente', '89.90', 46),('Controle Remoto Universal', '149.00', 46);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Câmera de Segurança', '399.00', 47),('Alarme Residencial', '199.00', 47), ('Fechadura Eletrônica', '299.00', 47);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Barraca para 4 Pessoas', '499.00', 48),('Saco de Dormir', '149.00', 48),('Fogareiro Portátil', '199.00', 48);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Vinho Branco Seco 750ml', '89.90', 49),('Whisky 12 Anos 1L', '299.00', 49),('Espumante Brut 750ml', '79.90', 49);
INSERT INTO tb_produtos(descricao_produto, valor_produto, id_categoria) VALUES ('Whey Protein 900g', '149.90', 50),('BCAA 120 Cápsulas', '89.90', 50),('Creatina 300g', '69.90', 50);



CREATE TABLE funcionarios(
	id_funcionarios INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nome_func VARCHAR(70) NOT NULL,
    email_func VARCHAR(70) NOT NULL,
    cpf_func VARCHAR(15) NOT NULL,
    endereco_func VARCHAR(70) NOT NULL    
); 

INSERT INTO funcionarios(nome_func,email_func,cpf_func, endereco_func) VALUES ('Lucas Alves', 'lucas.alves@outlook.com', '07082946919', 'R. Dr. Levi Miro Carneiro, 37');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Mariana Silva', 'mariana.silva@gmail.com', '07592836542', 'Av. das Américas, 1020');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Carlos Eduardo', 'carlos.eduardo@yahoo.com', '08263451908', 'R. Almeida Garret, 155');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Ana Beatriz', 'ana.beatriz@hotmail.com', '09283746129', 'R. João Cabral de Melo Neto, 54');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Ricardo Moura', 'ricardo.moura@outlook.com', '07458239627', 'Av. Paulista, 2001');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Fernanda Costa', 'fernanda.costa@gmail.com', '08294756318', 'R. Conselheiro Moreira de Barros, 42');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Gustavo Rocha', 'gustavo.rocha@yahoo.com', '09683742560', 'R. Vinte e Quatro de Maio, 88');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Patrícia Lima', 'patricia.lima@hotmail.com', '08479253612', 'Av. Ipiranga, 1500');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Rodrigo Oliveira', 'rodrigo.oliveira@outlook.com', '07384659231', 'R. Frei Caneca, 275');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Juliana Ramos', 'juliana.ramos@gmail.com', '09073852614', 'R. das Palmeiras, 66');

INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Thiago Mendes', 'thiago.mendes@yahoo.com', '07894562317', 'R. José Bonifácio, 109');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Camila Duarte', 'camila.duarte@hotmail.com', '08593846271', 'Av. Brigadeiro Faria Lima, 234');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Eduardo Barbosa', 'eduardo.barbosa@outlook.com', '09384756298', 'R. São Bento, 76');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Aline Ferreira', 'aline.ferreira@gmail.com', '08192734685', 'R. Dr. Arnaldo, 120');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Felipe Cardoso', 'felipe.cardoso@yahoo.com', '08647395241', 'R. da Consolação, 185');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Letícia Borges', 'leticia.borges@hotmail.com', '09476283159', 'R. Haddock Lobo, 95');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('André Santos', 'andre.santos@outlook.com', '08365297421', 'R. Líbero Badaró, 58');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Renata Nunes', 'renata.nunes@gmail.com', '08735246910', 'Av. São João, 90');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Bruno Silva', 'bruno.silva@yahoo.com', '09182734516', 'R. da Glória, 212');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Fabiana Costa', 'fabiana.costa@hotmail.com', '07592634812', 'R. Bela Cintra, 67');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Gabriel Teixeira', 'gabriel.teixeira@outlook.com', '08473659120', 'R. Sete de Abril, 159');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Paula Martins', 'paula.martins@gmail.com', '09283746513', 'R. Dr. Arnaldo, 450');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Marcelo Sousa', 'marcelo.sousa@yahoo.com', '08847253691', 'R. Augusta, 250');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Vanessa Oliveira', 'vanessa.oliveira@hotmail.com', '09684527319', 'R. Vergueiro, 100');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Daniel Ferreira', 'daniel.ferreira@outlook.com', '08392746520', 'Av. Angélica, 300');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Juliana Gomes', 'juliana.gomes@gmail.com', '08735296418', 'R. Santo Antônio, 22');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Leonardo Martins', 'leonardo.martins@yahoo.com', '09573846219', 'R. Dr. Vila Nova, 180');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Natália Santos', 'natalia.santos@hotmail.com', '07839456127', 'R. Jaceguai, 145');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Pedro Almeida', 'pedro.almeida@outlook.com', '08479253618', 'Av. Duque de Caxias, 76');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Raquel Pereira', 'raquel.pereira@gmail.com', '09183746529', 'R. Santa Cruz, 37');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Sérgio Lima', 'sergio.lima@yahoo.com', '08846293571', 'R. Martins Fontes, 121');

INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Priscila Barbosa', 'priscila.barbosa@hotmail.com', '09735246813', 'Av. Brigadeiro Luís Antônio, 420');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Fernando Souza', 'fernando.souza@outlook.com', '08273659140', 'R. Oscar Freire, 83');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Luciana Ribeiro', 'luciana.ribeiro@gmail.com', '09384756120', 'R. Galvão Bueno, 99');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Rafael Costa', 'rafael.costa@yahoo.com', '08592643712', 'R. Domingos de Morais, 58');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Sandra Moura', 'sandra.moura@hotmail.com', '09182736415', 'R. Vergueiro, 200');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Victor Carvalho', 'victor.carvalho@outlook.com', '07486259130', 'R. Consolação, 72');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Isabela Rocha', 'isabela.rocha@gmail.com', '08735264911', 'R. Jesuíno Arruda, 44');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Diego Almeida', 'diego.almeida@yahoo.com', '09384756120', 'Av. Juscelino Kubitschek, 260');

INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Adriana Lopes', 'adriana.lopes@hotmail.com', '08273649150', 'R. Tabapuã, 18');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Matheus Santana', 'matheus.santana@outlook.com', '08192734621', 'R. Inhambu, 109');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Bruna Mendes', 'bruna.mendes@gmail.com', '09476283120', 'R. João Cachoeira, 75');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Lucas Pereira', 'lucas.pereira@yahoo.com', '07583649127', 'R. Ministro Jesuíno Cardoso, 37');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Flávia Costa', 'flavia.costa@hotmail.com', '09182736417', 'R. Dr. Fernandes Coelho, 56');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('João Victor', 'joao.victor@outlook.com', '08394756231', 'R. Leopoldo Couto de Magalhães, 22');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Sofia Ribeiro', 'sofia.ribeiro@gmail.com', '09684537291', 'R. Vicente Pinzon, 12');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Renato Nogueira', 'renato.nogueira@yahoo.com', '08374659230', 'R. Fiandeiras, 123');

INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Thaís Martins', 'thais.martins@hotmail.com', '08735264912', 'R. Tabapuã, 47');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Caio Freitas', 'caio.freitas@outlook.com', '08479253691', 'R. Joaquim Floriano, 32');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Viviane Santos', 'viviane.santos@gmail.com', '09283746521', 'R. Dr. Renato Paes de Barros, 89');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Maurício Andrade', 'mauricio.andrade@yahoo.com', '07894562327', 'R. Pedroso Alvarenga, 101');
INSERT INTO funcionarios(nome_func,email_func,cpf_func,endereco_func) VALUES ('Amanda Carvalho', 'amanda.carvalho@hotmail.com', '09683742541', 'R. Jacurici, 74');

select tb_categorias.id_categoria, tb_categorias.descricao_categoria,tb_produtos.descricao_produto
from tb_categorias inner join tb_produtos on tb_categorias.id_categoria = tb_produtos.id_categoria;

select * from tb_categorias;
select * from tb_produtos;
SELECT * FROM professores;
select * from funcionarios;

