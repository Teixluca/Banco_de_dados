create DATABASE loja;
use loja;

create TABLE clientes(
cliente_id INT AUTO_INCREMENT,
nome_cliente VARCHAR(70) NOT NULL,
email_cliente VARCHAR(70) NOT NULL,
PRIMARY KEY (cliente_id)
); 

INSERT INTO clientes(nome_cliente, email_cliente) VALUES ('Lucas Alves Teixeira', 'lucas.alves@outlook.com'), ('Maria Rita do nascimento', 'maria.rita@outlook.com');
select * from clientes;

CREATE TABLE categorias(
categoria_id INT AUTO_INCREMENT,
descricao_categoria VARCHAR(70) NOT NULL,
PRIMARY KEY (categoria_id)
);

INSERT INTO categorias (descricao_categoria) VALUES ('Eletrônicos');
INSERT INTO categorias (descricao_categoria) VALUES ('Moveis');
INSERT INTO categorias (descricao_categoria) VALUES ('Roupas');

CREATE TABLE produtos(
produto_id INT AUTO_INCREMENT,
nome_produto VARCHAR(70) NOT NULL,
valor_produto FLOAT NOT NULL,
categoria_id INT NOT NULL,
PRIMARY KEY (produto_id),
CONSTRAINT produto_cateoria_fk FOREIGN KEY (categoria_id) REFERENCES categorias(categoria_id)
);

INSERT INTO produtos(nome_produto,valor_produto, categoria_id) VALUES ('Smartphone', '1999.00', 1), ('Fone de Ouvido Bluetooth', '299.00',1), ('Smartwatch', '899.00',1);
INSERT INTO produtos(nome_produto, valor_produto, categoria_id) VALUES ('Sofá 3 Lugares', '2499.00', 2), ('Mesa de Jantar', '1200.00', 2), ('Cadeira Gamer', '899.00',2);
INSERT INTO produtos(nome_produto, valor_produto, categoria_id) VALUES ('Camiseta Básica', '59.90', 3),('Calça Jeans', '129.90', 3),('Jaqueta de Couro', '399.90', 3);


CREATE TABLE pedidos(
pedido_id INT AUTO_INCREMENT,
produto_id INT NOT NULL,
cliente_id INT NOT NULL,
data_pedido DATE not null,
PRIMARY KEY (pedido_id),
CONSTRAINT pedido_produto_fk FOREIGN KEY (produto_id) REFERENCES produtos(produto_id),
CONSTRAINT pedido_cliente_fk FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

select * from pedidos;

INSERT INTO pedidos(produto_id, cliente_id, data_pedido) values (1,2,'2024-02-06');
INSERT INTO pedidos(produto_id, cliente_id, data_pedido) values (3,1,'2024-04-23');
INSERT INTO pedidos(produto_id, cliente_id, data_pedido) values (4,2,'2024-06-30');
INSERT INTO pedidos(produto_id, cliente_id, data_pedido) values (6,2,'2024-08-12');

select pedidos.pedido_id AS NUMERO_PEDIDO, clientes.nome_cliente AS CLIENTE, produtos.nome_produto AS PRODUTO, produtos.valor_produto AS VALOR_PRODUTO, categorias.descricao_categoria, data_pedido AS DATA_COMPRA from pedidos
join produtos ON pedidos.produto_id = produtos.produto_id
join clientes ON pedidos.cliente_id = clientes.cliente_id
join categorias ON produtos.categoria_id = categorias.categoria_id
order by pedidos.pedido_id;

SELECT clientes.nome_cliente AS CLIENTE, SUM(produtos.valor_produto) AS VALOR_COMPRAS FROM pedidos
JOIN produtos ON pedidos.produto_id = produtos.produto_id
JOIN clientes ON pedidos.cliente_id = clientes.cliente_id
WHERE clientes.nome_cliente = 'Maria Rita do nascimento';

