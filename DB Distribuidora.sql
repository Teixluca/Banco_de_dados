create database distribuidoraDB;
use distribuidoraDB;

create table fornecedores(
id_forn INT AUTO_INCREMENT PRIMARY KEY,
nome_forn VARCHAR (70) NOT NULL
);

INSERT INTO fornecedores(nome_forn) VALUES ('Ambev'),('Bebidas SA'), ('Cervejaria XYZ'), 
('Águas do Brasil'), ('Refrigerantes ABC'), ('Sucos Naturais'), ('Bebidas Delícias');

create table bebidas(
id_bebida INT AUTO_INCREMENT PRIMARY KEY,
nome_bebida VARCHAR(70) NOT NULL,
preco_unitario DECIMAL (10,2),
id_forn INT,
FOREIGN KEY (id_forn) REFERENCES fornecedores(id_forn)
);

INSERT INTO bebidas(nome_bebida, id_forn, preco_unitario) VALUES ('Skol', 1, 2.00), ('Brahma', 1, 2.50), ('Antártica', 1, 2.20), 
('Budweiser', 1, 3.00), ('Stella Artois', 1, 4.00), ('Velho Barreiro', 2, 13.80), 
('Cachaça 51', 2, 12.00), ('Pitu', 2, 15.00), ('Cachaça Velha', 2, 14.50), 
('Cachaça da Boa', 2, 11.00), ('Cerveja artesanal IPA', 3, 8.00), ('Cerveja artesanal Lager', 3, 7.50), 
('Cerveja artesanal Witbier', 3, 9.00), ('Cerveja artesanal Pale Ale', 3, 10.00), ('Cerveja artesanal Stout', 3, 11.00), 
('Água Mineral', 4, 1.00), ('Água com gás', 4, 1.50), ('Refrigerante Cola', 5, 3.00), 
('Refrigerante Laranja', 5, 2.50), ('Refrigerante Limão', 5, 2.20), ('Refrigerante Guaraná', 5, 2.80), 
('Suco de Laranja', 6, 5.00), ('Suco de Uva', 6, 5.50), ('Suco de Abacaxi', 6, 5.20), 
('Suco de Manga', 6, 5.70), ('Suco de Acerola', 6, 6.00), ('Energético Red Bull', 7, 10.00), 
('Energético Monster', 7, 9.50), ('Energético TNT', 7, 8.50), ('Cerveja 600ml', 1, 3.50), 
('Cerveja 300ml', 1, 2.00), ('Refrigerante Diet', 5, 3.50), ('Refrigerante Zero', 5, 3.50), 
('Água de Coco', 4, 4.00), ('Chá Gelado', 6, 4.50), ('Cerveja IPA', 3, 7.00), 
('Cerveja Weiss', 3, 6.50), ('Cerveja Red Ale', 3, 8.50), ('Cerveja Black Lager', 3, 9.00), 
('Cachaça Premium', 2, 20.00), ('Cachaça Envelhecida', 2, 25.00), ('Vinho Tinto', 1, 30.00), 
('Vinho Branco', 1, 28.00), ('Espumante', 2, 40.00), ('Whisky', 3, 120.00), ('Vodka', 3, 60.00), 
('Rum', 3, 55.00), ('Tequila', 4, 70.00), ('Cerveja Artesanal', 3, 10.00), 
('Refrigerante Light', 5, 3.20), ('Água Tônica', 4, 2.50), ('Bebida Energética', 7, 9.00), 
('Chá Mate', 6, 3.50), ('Cerveja Lata', 1, 2.80);

select * from bebidas;


create table estoque(
id_produto INT primary key,
qnt_produto int,
data_entrada date,
foreign key (id_produto) references bebidas(id_bebida)
);

INSERT INTO estoque(id_produto, qnt_produto, data_entrada) VALUES (1, 100, '2024-10-01'), (2, 80, '2024-09-05'), 
(3, 50, '2024-08-02'), (4, 150, '2024-10-01'), (5, 120, '2024-09-10'), (6, 90, '2024-08-15'), (7, 70, '2024-10-01'), 
(8, 60, '2024-09-20'), (9, 110, '2024-08-25'), (10, 40, '2024-10-01'), (11, 200, '2024-10-01'), (12, 130, '2024-09-12'), 
(13, 75, '2024-08-28'), (14, 65, '2024-10-01'), (15, 55, '2024-09-18'), (16, 150, '2024-10-01'), (17, 100, '2024-09-07'), 
(18, 80, '2024-08-14'), (19, 90, '2024-10-01'), (20, 70, '2024-09-22'), (21, 60, '2024-08-30'), (22, 50, '2024-10-01'), 
(23, 120, '2024-10-01'), (24, 110, '2024-09-11'), (25, 140, '2024-08-22'), (26, 85, '2024-10-01'), (27, 75, '2024-09-02'), 
(28, 65, '2024-08-16'), (29, 95, '2024-10-01'), (30, 80, '2024-09-14'), (31, 55, '2024-08-20'), (32, 150, '2024-10-01'), 
(33, 120, '2024-09-08'), (34, 100, '2024-08-27'), (35, 110, '2024-10-01'), (36, 90, '2024-09-15'), (37, 70, '2024-08-10'), 
(38, 60, '2024-10-01'), (39, 50, '2024-09-03'), (40, 140, '2024-10-01'), (41, 130, '2024-09-17'), (42, 75, '2024-08-11'), 
(43, 65, '2024-10-01'), (44, 55, '2024-09-21'), (45, 95, '2024-10-01'), (46, 85, '2024-09-04'),(47, 75, '2024-08-19'), 
(48, 120, '2024-10-01'), (49, 100, '2024-09-09'), (50, 110, '2024-08-12'), (51, 90, '2024-10-01'), (52, 80, '2024-09-16'), 
(53, 70, '2024-08-18'), (54, 60, '2024-10-01');

select id_produto, nome_bebida Produto, qnt_produto Quantidade, bbd.preco_unitario, round(sum(bbd.preco_unitario * qnt_produto)) R$_Estoque, 
f.nome_forn Forenecedor from estoque stq
join bebidas bbd on stq.id_produto = bbd.id_bebida
join fornecedores f on f.id_forn = bbd.id_forn
group by id_produto;

create table pedidos(
id_pedido INT AUTO_INCREMENT PRIMARY KEY,
data_pedido DATE NOT NULL
);

insert into pedidos(data_pedido) values ('2024-10-01');
insert into pedidos(data_pedido) values ('2024-10-02');
	#teste trigger
 ##insert into pedidos(data_pedido) values ('2024-10-03');

create table itn_pdd(
id_item INT auto_increment primary key,
id_pedido int,
id_bebida int,
qtt_item int,
FOREIGN KEY (id_bebida) REFERENCES bebidas(id_bebida),
FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido)
);

insert into itn_pdd(id_pedido,id_bebida, qtt_item) values (1, 1, 6);
insert into itn_pdd(id_pedido,id_bebida, qtt_item) values (2, 2, 6);
	
    
    #teste trigger
##insert into itn_pdd(id_pedido,id_bebida, qtt_item) values (2, 1, 4);

select * from itn_pdd;

select * from estoque;


	# Atualizando estoque de forma automatica
DELIMITER $$
CREATE TRIGGER atlz_estoque_venda after insert on itn_pdd for each row
begin
	update estoque set qnt_produto = qnt_produto - new.qtt_item
    where id_produto = id_produto;
end $$
DELIMITER ;

	# Mostrando valores das compras por pedido
select id_item, bbd.nome_bebida Produto, round(sum(itn.qtt_item * bbd.preco_unitario)) Valor_Compra, pdd.data_pedido from itn_pdd itn
join bebidas bbd ON bbd.id_bebida = itn.id_bebida
join pedidos pdd on pdd.id_pedido = itn.id_pedido
order by id_item; 

 # Mostrando os 5 produtos mais caros
SELECT nome_bebida Bebida, preco_unitario from bebidas
group by id_bebida order by preco_unitario desc limit 5; 

	 # Deletando um fonecedor e bebidas
select * from fornecedores;
    update bebidas set id_forn = null where id_forn = 6;
	delete from fornecedores where id_forn = 6;
select * from bebidas where id_forn is null;
select * from fornecedores;

select count(*) from estoque;    
    delete from estoque where id_produto in (select id_bebida from bebidas where id_forn is null);    
    delete from bebidas where id_forn is null;
select count(*) from estoque;

	# Cirando tabela com as 5 bebidas mais caras
create table Bbd_caras as select nome_bebida Bebida, preco_unitario from bebidas
group by id_bebida order by preco_unitario desc limit 5; 

	#usando o DISTINCTROW
select distinctrow nome_bebida from bebidas;
