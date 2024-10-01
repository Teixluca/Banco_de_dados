CREATE DATABASE panificadora;
USE panificadora;

CREATE TABLE categorias(
id_categoria INT AUTO_INCREMENT PRIMARY KEY,
nome_categoria VARCHAR(70)
);
INSERT INTO categorias (nome_categoria) VALUES ('Pães Integrais'),('Pães Sem Glúten'),('Bolos Veganos'),
('Doces Sem Açúcar'),('Biscoitos Integrais'),('Salgados Congelados'),('Tortas Salgadas'),('Sanduíches Naturais'),
('Bebidas Artesanais'),('Lanches Rápidos');



CREATE TABLE fornecedores(
id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
nome_fornecedor VARCHAR(70)
);

INSERT INTO fornecedores(nome_fornecedor) VALUES ('Nosso Pão'), ('Belo Pão'), ('Doces & Delícias'), 
('Frutas da Terra'), ('Sabor e Saúde'), ('Verde Vida'), ('Café do Cantinho'), 
('Açougue do Bairro'), ('Mercado Central'), ('Peixaria do Porto'), ('Quitanda do Campo'), 
('Bebidas do Brasil'), ('Sabor da Casa'), ('Pães Artesanais'), ('Condimentos Naturais'), 
('Grãos e Cereais'), ('Produtos Orgânicos'), ('Empório Gourmet'), ('Cestas de Café da Manhã'), 
('Delícias da Fazenda');


CREATE TABLE produtos(
id_produto INT AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR (70),
preco DECIMAL(10,2),
id_categoria INT,
id_fornecedor INT,
CONSTRAINT prod_cate FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria),
CONSTRAINT prod_forn FOREIGN KEY (id_fornecedor) REFERENCES fornecedores(id_fornecedor)
);

INSERT INTO produtos(nome_produto, preco, id_categoria, id_fornecedor) VALUES ('Pão de Queijo', 0.50, 1, 1),
('Pão Integral', 3.00, 1, 1),('Pão Sem Glúten', 4.50, 2, 2),('Bolo de Cenoura Vegano', 5.00, 3, 3),
('Biscoito Integral de Aveia', 2.00, 5, 4),('Coxinha de Frango', 3.50, 6, 5),('Torta Salgada de Espinafre', 6.00, 7, 6),
('Sanduíche Natural de Atum', 7.00, 8, 7),('Suco de Laranja Natural', 2.50, 9, 8),('Pão de Milho', 2.80, 1, 9),
('Pão de Alho', 3.20, 1, 10),('Bolo de Chocolate Vegano', 5.50, 3, 11),('Biscoito de Gergelim', 1.80, 5, 12),
('Empanada de Carne', 4.00, 6, 13),('Torta de Frango', 6.50, 7, 14),('Sanduíche Natural de Peito de Peru', 7.50, 8, 15),
('Chá Gelado Artesanal', 3.00, 9, 16),('Pão de Centeio', 3.00, 1, 17),('Pão Doce', 2.50, 1, 18),
('Bolo de Fubá', 4.00, 3, 19),('Biscoito de Chocolate Integral', 2.20, 5, 20),('Coxinha de Queijo', 3.80, 6, 1),
('Torta de Legumes', 5.50, 7, 2),('Sanduíche Natural de Frango', 7.50, 8, 3),('Água de Coco Natural', 2.00, 9, 4),
('Pão Sírio', 2.20, 1, 5),('Pão Francês', 0.80, 1, 6),('Bolo de Limão Vegano', 5.50, 3, 7),('Biscoito de Polvilho', 1.50, 5, 8),
('Esfiha de Carne', 4.00, 6, 9),('Torta de Maçã', 6.50, 7, 10),('Sanduíche de Frango Grelhado', 7.20, 8, 11),
('Limonada Artesanal', 2.80, 9, 12),('Pão de Batata', 3.00, 1, 13),('Pão Integral com Nozes', 3.50, 1, 14),
('Bolo de Banana Vegano', 5.00, 3, 15),('Biscoito de Amêndoas', 2.50, 5, 16),('Empanada de Queijo', 4.00, 6, 17),
('Torta de Ricota', 5.50, 7, 18),('Sanduíche de Salmão', 8.00, 8, 19),('Suco Verde Detox', 3.50, 9, 20),
('Pão de Leite', 2.40, 1, 1),('Pão de Forma Integral', 3.00, 1, 2),('Bolo de Iogurte Vegano', 5.20, 3, 3),
('Biscoito de Azeite', 1.80, 5, 4),('Coxinha de Legumes', 3.50, 6, 5),('Torta de Frutos do Mar', 7.00, 7, 6),
('Sanduíche de Queijo Brie', 8.50, 8, 7),('Suco de Uva Natural', 2.80, 9, 8),('Pão de Grãos', 3.50, 1, 9),
('Pão de Mel', 3.00, 1, 10),('Bolo de Coco Vegano', 5.50, 3, 11),('Biscoito de Limão', 2.30, 5, 12),
('Quibe Assado', 4.50, 6, 13),('Torta de Chocolate', 6.50, 7, 14),('Sanduíche de Veggie Burger', 7.00, 8, 15),
('Água Aromatizada', 2.20, 9, 16),('Pão de Ervas', 3.00, 1, 17),('Pão de Frutas Secas', 3.80, 1, 18),
('Bolo de Beterraba Vegano', 5.20, 3, 19),('Biscoito de Canela', 2.20, 5, 20),('Quibe Cru', 4.50, 6, 1),
('Torta de Abóbora', 5.80, 7, 2),('Sanduíche de Peito de Frango', 7.50, 8, 3),('Suco de Limão com Gengibre', 2.60, 9, 4),
('Pão de Azeitona', 3.10, 1, 5),('Pão de Cacau', 3.50, 1, 6),('Bolo de Abacaxi Vegano', 5.50, 3, 7),
('Biscoito de Aveia e Mel', 2.50, 5, 8),('Quiche de Queijo', 5.00, 6, 9),('Torta de Vegetais', 6.50, 7, 10),
('Sanduíche de Presunto e Queijo', 6.50, 8, 11),('Suco de Melancia', 2.50, 9, 12),('Pão de Maçã', 3.30, 1, 13),
('Pão de Sementes de Chia', 3.70, 1, 14),('Bolo de Laranja Vegano', 5.00, 3, 15),('Biscoito de Sorgo', 2.10, 5, 16),
('Esfiha de Queijo', 4.00, 6, 17),('Torta de Espinafre', 5.50, 7, 18),('Sanduíche de Presunto Cru', 8.00, 8, 19),
('Suco de Limão com Gengibre', 2.60, 9, 20),('Pão de Canela', 3.00, 1, 1),('Pão de Alecrim', 3.20, 1, 2),
('Bolo de Chocolate Amargo Vegano', 5.80, 3, 3);

CREATE TABLE estoque(
id_produto INT primary key,
qnt_produto INT,
data_entrada date,
data_saida date,
FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

INSERT INTO estoque(id_produto, qnt_produto, data_entrada, data_saida) VALUES (1, 100, '2024-09-25', NULL),
(2, 50, '2024-09-25', NULL),(3, 30, '2024-09-26', NULL),(20, 75, '2024-10-04', NULL),
(4, 20, '2024-09-26', NULL),(5, 15, '2024-09-27', NULL),(6, 40, '2024-09-27', NULL),
(7, 25, '2024-09-28', NULL),(8, 10, '2024-09-28', NULL),(9, 35, '2024-09-29', NULL),
(10, 60, '2024-09-29', NULL),(11, 45, '2024-09-30', NULL),(12, 55, '2024-09-30', NULL),
(13, 75, '2024-10-01', NULL),(14, 90, '2024-10-01', NULL),(15, 80, '2024-10-02', NULL),
(16, 70, '2024-10-02', NULL),(17, 85, '2024-10-03', NULL),(18, 95, '2024-10-03', NULL),
(19, 65, '2024-10-04', NULL),(21, 30, '2024-10-05', NULL),(22, 20, '2024-10-05', NULL),
(23, 40, '2024-10-06', NULL),(24, 50, '2024-10-06', NULL),(25, 10, '2024-10-07', NULL),
(26, 15, '2024-10-07', NULL),(27, 5, '2024-10-08', NULL),(28, 3, '2024-10-08', NULL),
(29, 12, '2024-10-09', NULL);



CREATE TABLE clientes(
id_cliente INT AUTO_INCREMENT PRIMARY KEY,
nome_cliente VARCHAR(70),
cpf_cliente VARCHAR (11)
);

INSERT INTO clientes(nome_cliente, cpf_cliente) VALUES ('Lucas Alves', '12345612312'), ('João Pereira', '11223344556'),
('Ana Lima', '22334455667'), ('Carlos Silva', '33445566778'), ('Fernanda Costa', '44556677889'),
('Roberto Oliveira', '55667788990'), ('Patrícia Gomes', '66778899001'), ('Thiago Ferreira', '77889900112'),
('Camila Martins', '88990011223'), ('Rafael Souza', '99001122334'), ('Mariana Rocha', '10111213141'),
('Juliana Almeida', '12131415161'), ('André Santos', '13141516171'), ('Bruna Lima', '14151617181'),
('Diego Pires', '15161718192'), ('Sofia Cardoso', '16171819202'), ('Gustavo Mendes', '17181920213'),
('Isabela Ribeiro', '18192021324'), ('Felipe Azevedo', '19202132435'), ('Larissa Nascimento', '20213243546'),
('Vinícius Martins', '21222343657'), ('Tatiane Dias', '22232435768'), ('Samuel Costa', '23242536879'),
('Eduardo Pimentel', '24252637980'), ('Ana Clara', '25262748091'), ('Nicolas Franco', '26272849102'),
('Beatriz Cardoso', '27282950213'), ('Vitor Hugo', '28293061324'), ('Alice Moura', '29303172435'), ('Maria Santos', '98765432100');


CREATE TABLE pedidos(
id_pedido INT AUTO_INCREMENT PRIMARY KEY,
id_cliente INT,
data_pedido date,
CONSTRAINT ped_clnt FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

INSERT INTO pedidos(id_cliente, data_pedido) VALUES (1, '2024-09-26'), (2, '2024-09-27'), (3, '2024-09-27'), 
(4, '2024-09-28'), (5, '2024-09-28'), (6, '2024-09-29'), (7, '2024-09-29'), (8, '2024-09-30'), (9, '2024-09-30'), (10, '2024-10-01'), 
(11, '2024-10-01'), (12, '2024-10-02'), (13, '2024-10-02'), (14, '2024-10-03'), (15, '2024-10-03'), (16, '2024-10-04'), (17, '2024-10-04'),
(18, '2024-10-05'), (19, '2024-10-05'), (20, '2024-10-06'), (21, '2024-10-06'), (22, '2024-10-07'), (23, '2024-10-07'), (24, '2024-10-08'), 
(25, '2024-10-08'), (26, '2024-10-09'), (27, '2024-10-09'), (28, '2024-10-10'), (29, '2024-10-10');
																	insert into pedidos(id_cliente, data_pedido) values (1, '2024-10-01');

select * from pedidos order by data_pedido desc;
CREATE TABLE itens_pedido(
id_item INT AUTO_INCREMENT PRIMARY KEY,
id_produto INT,
id_pedido INT,
quantidade_item INT,
CONSTRAINT itm_prod FOREIGN KEY (id_produto) REFERENCES produtos(id_produto),
CONSTRAINT itm_pdd FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido)
);

INSERT INTO itens_pedido(id_produto, id_pedido, quantidade_item) VALUES (1, 1, 12), (2, 2, 5), (3, 3, 8), 
(4, 4, 3), (5, 5, 10), (6, 6, 7), (7, 7, 2), (8, 8, 4), (9, 9, 1), (10, 10, 6), (11, 11, 3), (12, 12, 8), 
(13, 13, 9), (14, 14, 2), (15, 15, 5), (16, 16, 7), (17, 17, 4), (18, 18, 1), (19, 19, 10), (20, 20, 6), (21, 21, 5), 
(22, 22, 2), (23, 23, 8), (24, 24, 3), (25, 25, 9), (26, 26, 1), (27, 27, 4), (28, 28, 7), (29, 29, 2);

select * from itens_pedido;
														insert into itens_pedido(id_produto, id_pedido, quantidade_item ) values(1,30, 8);

CREATE TABLE vendas(
id_venda INT AUTO_INCREMENT primary key,
id_item INT,
FOREIGN KEY (id_item) REFERENCES itens_pedido(id_item)
);

INSERT INTO vendas(id_item) VALUES (1), (2), (3), (1), (2), (3),(4), (5), (6), (7), (8), (9), (10), (11), (12), 
(13), (14), (15), (16), (17), (18), (19), (20), (21), (22), (23), (24), (25), (26), (27), (28), (29);

																insert into vendas(id_item) values (30);

select * from vendas;
#verificar estoque
select p.nome_produto Produto, e.qnt_produto Qnt_Produto, c.nome_categoria Categoria from estoque e
join produtos p on e.id_produto = p.id_produto
join categorias c on c.id_categoria = p.id_categoria
group by 1 order by 1; 

create index idx_prod on produtos(nome_produto);
create index idx_ped_clnt ON pedidos(id_cliente);

DELIMITER $$

CREATE TRIGGER atualizar_estoque_venda AFTER INSERT ON itens_pedido
FOR EACH ROW
BEGIN
    UPDATE estoque SET qnt_produto = qnt_produto - NEW.quantidade_item
    WHERE id_produto = NEW.id_produto;
END $$

DELIMITER ;

INSERT INTO itens_pedido (id_produto, id_pedido, quantidade_item) VALUES (1, 1, 2);

select p.nome_produto Produto, e.qnt_produto Qnt_Produto, c.nome_categoria Categoria from estoque e
join produtos p on e.id_produto = p.id_produto
join categorias c on c.id_categoria = p.id_categoria
group by p.id_produto order by 1; 

select * from estoque;

