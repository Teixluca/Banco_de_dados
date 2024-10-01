create database farmaciaDB;
use farmaciaDB;

CREATE TABLE categorias(
id_categoria INT AUTO_INCREMENT PRIMARY KEY,
nome_categoria VARCHAR (70)
);

insert into categorias(nome_categoria) values('Medicamentos'), ('Perfumes'), ('Beleza'), ('Alimentos');

select * from categorias;

CREATE TABLE Fornecedores(
id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
nome_fornecedor VARCHAR (70)
);

INSERT INTO fornecedores (nome_fornecedor) VALUES ('Aché Laboratórios'),('Eurofarma Laboratórios'),
('Roche Farma Brasil'),('Drogaria São Paulo'),('Natura'), ('L’Oréal'), ('O Boticário'),('Pão de Açúcar'),
('Coca-Cola Brasil'),('Nestlé');

SELECT * from fornecedores;

CREATE TABLE produtos(
id_produto INT AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR(70),
preco DECIMAL(10,2),
id_fornecedor INT,
id_categoria INT,
CONSTRAINT prod_forn FOREIGN KEY (id_fornecedor) REFERENCES fornecedores(id_fornecedor),
CONSTRAINT prod_cate FOREIGN KEY (id_categoria ) REFERENCES categorias(id_categoria)
);

INSERT INTO produtos (nome_produto, preco, id_fornecedor, id_categoria) VALUES ('Paracetamol 500mg', 10.00, 1, 1),
('Ibuprofeno 600mg', 12.50, 2, 1),('Antialérgico (Cetirizina)', 15.00, 3, 1),('Xarope para Tosse', 20.00, 4, 1),
('Perfume Masculino - Dior', 150.00, 6, 2),('Perfume Feminino - Chanel', 200.00, 6, 2),('Desodorante', 25.00, 5, 2),
('Colônia Infantil', 35.00, 7, 2),('Creme Hidratante para Pele', 30.00, 8, 3),('Sabonete Antibacteriano', 10.00, 8, 3),
('Protetor Solar', 50.00, 9, 3),('Máscara Facial', 20.00, 9, 3),('Suplemento Alimentar', 40.00, 10, 4),
('Biscuitos', 15.00, 10, 4),('Chá de Camomila', 10.00, 10, 4),('Água Mineral', 3.00, 10, 4);

select nome_produto Produto, preco Preco, nome_fornecedor Fornecedor, nome_categoria Categoria from produtos p
join fornecedores f on p.id_fornecedor = f.id_fornecedor
join categorias c on p.id_categoria = c.id_categoria
order by 2 desc;  

CREATE TABLE clientes(
id_cliente INT AUTO_INCREMENT PRIMARY KEY,
nome_cliente VARCHAR(100), 
CPF_cliente VARCHAR(11),
email_cliente VARCHAR(100)
);

INSERT INTO clientes (nome_cliente, CPF_cliente, email_cliente) VALUES ('Lucas', '07082964919', 'Lucas.A@gmail.com'),
('Maria Silva', '12345678901', 'maria.silva@example.com'),('João Pereira', '98765432100', 'joao.pereira@example.com'),
('Ana Oliveira', '32165498700', 'ana.oliveira@example.com');

select * from clientes;

CREATE TABLE pedidos(
id_pedido INT AUTO_INCREMENT PRIMARY KEY,
id_cliente INT,
data_pedido date,
CONSTRAINT ped_cli FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);


INSERT INTO pedidos (id_cliente, data_pedido) VALUES 
(1, '2024-09-01'), (2, '2024-09-02'), (3, '2024-09-03'), (4, '2024-09-04'), (1, '2024-09-05'),
(2, '2024-09-06'), (3, '2024-09-07'), (4, '2024-09-08'), (1, '2024-09-09'), (2, '2024-09-10'),
(3, '2024-09-11'), (4, '2024-09-12'), (1, '2024-09-13'), (2, '2024-09-14'), (3, '2024-09-15'),
(4, '2024-09-16'), (1, '2024-09-17'), (2, '2024-09-18'), (3, '2024-09-19'), (4, '2024-09-20'),
(1, '2024-09-21'), (2, '2024-09-22'), (3, '2024-09-23'), (4, '2024-09-24'), (1, '2024-09-25'),
(2, '2024-09-26'), (3, '2024-09-27'), (4, '2024-09-28'), (1, '2024-09-29'), (2, '2024-09-30'),
(3, '2024-10-01'), (4, '2024-10-02'), (1, '2024-10-03'), (2, '2024-10-04'), (3, '2024-10-05'),
(4, '2024-10-06'), (1, '2024-10-07'), (2, '2024-10-08'), (3, '2024-10-09'), (4, '2024-10-10'),
(1, '2024-10-11'), (2, '2024-10-12'), (3, '2024-10-13'), (4, '2024-10-14'), (1, '2024-10-15'),
(2, '2024-10-16'), (3, '2024-10-17'), (4, '2024-10-18'), (1, '2024-10-19'), (2, '2024-10-20'),
(3, '2024-10-21'), (4, '2024-10-22'), (1, '2024-10-23'), (2, '2024-10-24'), (3, '2024-10-25'),
(4, '2024-10-26'), (1, '2024-10-27'), (2, '2024-10-28'), (3, '2024-10-29'), (4, '2024-10-30'),
(1, '2024-10-31'), (2, '2024-11-01'), (3, '2024-11-02'), (4, '2024-11-03'), (1, '2024-11-04'),
(2, '2024-11-05'), (3, '2024-11-06'), (4, '2024-11-07'), (1, '2024-11-08'), (2, '2024-11-09'),
(3, '2024-11-10'), (4, '2024-11-11'), (1, '2024-11-12'), (2, '2024-11-13'), (3, '2024-11-14'),
(4, '2024-11-15'), (1, '2024-11-16'), (2, '2024-11-17'), (3, '2024-11-18'), (4, '2024-11-19'),
(1, '2024-11-20'), (2, '2024-11-21'), (3, '2024-11-22'), (4, '2024-11-23'), (1, '2024-11-24'),
(2, '2024-11-25'), (3, '2024-11-26'), (4, '2024-11-27'), (1, '2024-11-28'), (2, '2024-11-29'),
(3, '2024-11-30'), (4, '2024-12-01'), (1, '2024-12-02'), (2, '2024-12-03');


CREATE TABLE itens_pedido(
id_item INT AUTO_INCREMENT PRIMARY KEY,
id_produto INT not null,
quantidade int not null,
id_pedido INT NOT NULL,
CONSTRAINT IP_prod FOREIGN KEY(id_produto) REFERENCES produtos(id_produto),
CONSTRAINT IP_ped FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido)
);


INSERT INTO itens_pedido (id_produto, quantidade, id_pedido) VALUES 
(3, 2, 1), (1, 1, 1), (4, 3, 2), (2, 1, 2), (5, 2, 3), (8, 1, 3), (6, 4, 4), (10, 5, 4), (7, 3, 5), 
(9, 1, 5), (2, 2, 6), (3, 1, 6), (1, 3, 7), (4, 2, 7), (5, 4, 8), (6, 1, 8), (7, 3, 9), (8, 2, 9), 
(9, 1, 10), (10, 4, 10), (1, 3, 11), (2, 1, 11), (3, 2, 12), (4, 3, 12), (5, 1, 13), (6, 4, 13), (7, 2, 14), 
(8, 1, 14), (9, 3, 15), (10, 2, 15), (1, 4, 16), (2, 1, 16), (3, 3, 17), (4, 2, 17), (5, 2, 18), (6, 1, 18), 
(7, 4, 18), (8, 2, 19), (9, 3, 19), (10, 1, 20), (1, 2, 20), (2, 3, 21), (3, 1, 21), (4, 2, 22), (5, 4, 22), 
(6, 1, 22), (7, 3, 23), (8, 2, 23), (9, 4, 24), (10, 1, 24), (1, 2, 25), (2, 1, 25), (3, 3, 26), (4, 2, 26), 
(5, 1, 27), (6, 4, 27), (7, 2, 27), (8, 1, 28), (9, 3, 28), (10, 2, 28), (1, 4, 29), (2, 1, 29), (3, 3, 30), 
(4, 2, 30), (5, 2, 31), (6, 1, 31), (7, 4, 31), (8, 2, 32), (9, 3, 32), (10, 1, 32), (1, 2, 33), (2, 3, 33), 
(3, 1, 33), (4, 2, 34), (5, 4, 34), (6, 1, 34), (7, 3, 35), (8, 2, 35), (9, 4, 36), (10, 1, 36), (1, 2, 37), 
(2, 1, 37), (3, 3, 38), (4, 2, 38), (5, 1, 39), (6, 4, 39), (7, 2, 39), (8, 1, 40), (9, 3, 40), (10, 2, 40);


ALTER TABLE categorias modify nome_categoria VARCHAR(70) UNIQUE;
ALTER TABLE fornecedores MODIFY nome_fornecedor VARCHAR(70) UNIQUE;
ALTER TABLE clientes modify CPF_cliente VARCHAR(11) UNIQUE;
ALTER TABLE clientes modify email_cliente VARCHAR(100) UNIQUE;
	
CREATE INDEX idx_nm_prod on produtos(nome_produto);
create index idx_nm_ped ON pedidos(id_pedido);

select * from itens_pedido;

 ## mostrando por compra
select ped.id_pedido, p.nome_produto Produto, sum(p.preco * ip.quantidade) Total_compra, ped.data_pedido, c.nome_cliente from itens_pedido ip
join produtos p on p.id_produto = ip.id_produto
join pedidos ped on ped.id_pedido = ip.id_pedido
join clientes c on ped.id_cliente = c.id_cliente
group by id_item;

	## Mostrando valor de todas as compras por cliente
select c.nome_cliente Cliente, sum(p.preco * ip.quantidade) Total_compra from itens_pedido ip
join pedidos ped on ip.id_pedido = ped.id_pedido
join produtos p on p.id_produto = ip.id_produto
join clientes c on c.id_cliente = ped.id_cliente
group by c.nome_cliente;

select p.nome_produto, count(*) QTD_vedida from itens_pedido ip
join produtos p on p.id_produto = ip.id_produto
group by p.id_produto;
