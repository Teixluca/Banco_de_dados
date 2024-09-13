create database loja;
use loja;

create table produtos(
produto_id INT AUTO_INCREMENT,
nome_produto VARCHAR(70) NOT NULL,
valor_produto DECIMAL(10,2),
PRIMARY KEY (produto_id)
);

CREATE TABLE vendas(
venda_id INT AUTO_INCREMENT,
qnt_venda INT NOT NULL,
produto_id INT NOT NULL,
PRIMARY KEY (venda_id),
CONSTRAINT prd_vnd_fk FOREIGN KEY (produto_id) REFERENCES produtos(produto_id)
);

insert into produtos(nome_produto, valor_produto) values ('Fone de Ouvido', 150), ('Carregador', 100), ('Caixa de som', 200);
insert into vendas(produto_id, qnt_venda) values (1,5), (2,2), (3,1), (3,5), (2,2), (1,1), (2,5), (1,2), (3,1);

select * from vendas;

# media de precos dos produtos
select  round(avg(valor_produto)) MEDIA_PRECO from produtos;

#Soma Total da Quantidade Vendida
select sum(qnt_venda) as TOTAL_VENDAS from vendas v
join produtos p on v.produto_id = p.produto_id;

#Preço Máximo de um Produto
select nome_produto PRODUTO, valor_produto from produtos
where valor_produto = (select max(valor_produto) from produtos);

select nome_produto PRODUTO, sum(qnt_venda * valor_produto) VALOR_VENDA, qnt_venda QTD_VENDA, valor_produto PRECO from vendas v
join produtos p on v.produto_id = p.produto_id
group by p.produto_id;

# ticket medio das vendas
select nome_produto PRODUTO, round(avg(qnt_venda * valor_produto)) TICKET_MEDIO from vendas v
join produtos p on v.produto_id = p.produto_id
group by nome_produto;

#