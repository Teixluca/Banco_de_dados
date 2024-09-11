CREATE DATABASE lojaeletronicos;
USE lojaeletronicos;

CREATE TABLE fornecedores(
fornecedor_id INT AUTO_INCREMENT,
nome_fornecedor VARCHAR(70) NOT NULL,
PRIMARY KEY (fornecedor_id)
);

INSERT INTO fornecedores(nome_fornecedor) values ('TechCorp'), ('Gadgets Inc.');

CREATE TABLE categorias(
categoria_id INT AUTO_INCREMENT,
nome_categoria VARCHAR(70),
PRIMARY KEY(categoria_id)
);

insert into categorias(nome_categoria) values ('Eletrônicos'), ('Acessórios');

CREATE TABLE produtos(
produto_id INT AUTO_INCREMENT,
nome_produto VARCHAR(70) NOT NULL,
preco_produto DECIMAL (10,2),
categoria_id INT,
fornecedor_id INT,
PRIMARY KEY(produto_id),
CONSTRAINT prd_cat_fk FOREIGN KEY (categoria_id) REFERENCES categorias(categoria_id),
CONSTRAINT prd_forn_fk FOREIGN KEY (fornecedor_id) REFERENCES fornecedores(fornecedor_id)
);

INSERT INTO produtos(nome_produto, categoria_id, fornecedor_id) values ('Smartphone', 1, 1);
INSERT INTO produtos(nome_produto, categoria_id, fornecedor_id) values ('Carregador', 2,2);

#juntando produto, fornecedor e categoria
select nome_produto PRODUTO, nome_categoria CATEGORIA, nome_fornecedor FORNECEDOR from produtos p
join categorias c on p.categoria_id = c.categoria_id
join fornecedores f on p.fornecedor_id = f.fornecedor_id
order by PRODUTO;

# adicionando preco no produto
update lojaeletronicos.produtos set preco_produto = 549.99 where produto_id = '1';


select nome_produto PRODUTO, preco_produto VALOR, nome_categoria CATEGORIA, nome_fornecedor FORNECEDOR from produtos p
join categorias c on p.categoria_id = c.categoria_id
join fornecedores f on p.fornecedor_id = f.fornecedor_id;

# exluindo linha carregador
delete from produtos where produto_id = 2 limit 1;

# preco medio

select nome_categoria CATEGORIA, round(avg(preco_produto)) PRECO_MEDIO from produtos p
join categorias c on p.categoria_id = c.categoria_id
group by CATEGORIA;

# valores maiores que a media

INSERT INTO produtos(nome_produto,preco_produto, categoria_id, fornecedor_id) values ('Fone de ouvido',150, 2,2);
insert into produtos(nome_produto, preco_produto, categoria_id, fornecedor_id) values ('Caixa de som', 900, 1,2);

select nome_produto PRODUTO, preco_produto VALOR, (SELECT round(avg(preco_produto)) from produtos) VALOR_MEDIO, nome_categoria as CATEGORIA from produtos p
join categorias c on p.categoria_id = c.categoria_id
where (select round(avg(preco_produto)) from produtos) < preco_produto;



