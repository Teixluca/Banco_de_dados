	CREATE DATABASE eCommerce;
    USE eCommerce;
    
    CREATE TABLE clientes(
    cliente_id INT AUTO_INCREMENT,
    nome_cliente VARCHAR(100) NOT NULL,
    PRIMARY KEY (cliente_id)
    );
    
    INSERT INTO clientes (nome_cliente) VALUES ('Ana Silva'), ('Carlos Souza'), ('Fernanda Oliveira'),('João Pereira'),('Maria Santos'), ('Pedro Almeida'),('Tatiane Costa'),
    ('Vinícius Lima'), ('Yara Fernandes'),('Zé Maria'),  ('Claudia Rocha'),('Eduardo Reis'), ('Fernanda Almeida'),  ('Gustavo Martins'),   ('Helena Barbosa');
    
    CREATE TABLE pedidos(
    pedido_id INT AUTO_INCREMENT,
    cliente_id INT,
    PRIMARY KEY (pedido_id),
	FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
    );
    
    INSERT INTO pedidos (cliente_id) VALUES(1),(1), (2), (7), (2), (4), (4), (4), (6),  (7), (7), (9),(10), (11), (11), (13), (14), (15);
    
    select nome_cliente CLIENTE, pedido_id ID_PEDIDO from pedidos p
    join clientes c on c.cliente_id = p.cliente_id
    group by p.pedido_id;
    
  
