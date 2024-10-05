create database supermercadoDB;
use supermercadoDB;

create table categorias(
id_cat int auto_increment primary key,
nome_cat varchar(70)
);

insert into categorias(nome_cat) values ('Alimentos'), ('Panificadora'), ('Bebidas'),('Higiene e Beleza'), ('Limpeza'), 
('Laticínios'), ('Congelados'), ('Mercearia');

select *from categorias;

create table fornecedores(
id_forn int auto_increment primary key,
nome_forn varchar(70)
);

insert into fornecedores(nome_forn) values ('Tio João'), ('Skol'), ('Tirol'), ('Super Pão'),('Dona Maria'), 
('Brahma'), ('Delícias do Campo'), ('Limpeza Total');

select * from fornecedores;

create table produtos(
id_produto int auto_increment primary key,
nome_produto varchar(70),
preco decimal(10,2),
id_forn int,
id_cat int,
foreign key (id_forn) references fornecedores (id_forn),
foreign key (id_cat) references categorias (id_cat)
);

insert into produtos(nome_produto, preco, id_forn, id_cat) values ('Arroz', 13.40, 1, 1), ('Feijão', 9.50, 1, 1),
('Pão Integral', 3.20, 4, 2), ('Leite Integral', 6.00, 3,6), ('Cerveja 350ml', 2.50, 2, 3), ('Açúcar', 4.50, 1, 1), 
('Sal', 2.00, 1, 1), ('Sabonete', 1.80, 8, 4), ('Detergente', 3.00, 8, 4), ('Iogurte Natural', 2.20, 3, 6), 
('Frango Congelado', 12.00, 7, 5), ('Manteiga', 5.50, 1, 6), ('Cerveja Pilsen', 3.00, 2, 3);


create table clientes(
id_cliente int auto_increment primary key,
nome_cliente varchar(70),
telefone varchar(15),
cpf varchar(15)
);

insert into clientes(nome_cliente, telefone, cpf) values ('Lucas Silva', '12345-6789', '123.456.789-00'),
('Maria Oliveira', '98765-4321', '234.567.890-01'),('Ana Santos', '11223-4455', '345.678.901-02'),
('Arthur Costa', '99876-5432', '456.789.012-03'),('Bruno Almeida', '55555-6666', '567.890.123-04'),
('Juliana Pereira', '77777-8888', '678.901.234-05'),('Fernanda Lima', '99999-0000', '789.012.345-06'),
('Pedro Ferreira', '44444-3333', '890.123.456-07'),('Mariana Rocha', '22222-1111', '901.234.567-08'),
('Roberto Martins', '33333-4444', '012.345.678-09'),('Camila Dias', '66666-7777', '123.456.789-10'),
('Rafael Cardoso', '88888-9999', '234.567.890-11'),('Patrícia Ribeiro', '55555-0000', '345.678.901-12'),
('Gabriel Souza', '66666-1234', '456.789.012-13'),('Letícia Almeida', '77777-5678', '567.890.123-14'),
('Eduardo Santos', '88888-8765', '678.901.234-15'),('Vanessa Costa', '99999-4321', '789.012.345-16'),
('Felipe Lima', '44444-9876', '890.123.456-17'),('Sofia Rocha', '22222-6543', '901.234.567-18'),
('Lucas Martins', '33333-3210', '012.345.678-19'),('Isabela Ferreira', '66666-7890', '123.456.789-20'),
('Tiago Dias', '88888-5432', '234.567.890-21'),('Cíntia Almeida', '55555-2100', '345.678.901-22'),
('Danilo Souza', '77777-8901', '456.789.012-23'),('Tatiane Rocha', '99999-4567', '567.890.123-24'),
('André Santos', '44444-6789', '678.901.234-25'),('Natália Oliveira', '22222-1230', '789.012.345-26'),
('Wellington Lima', '33333-8901', '890.123.456-27'),('Juliano Ferreira', '66666-4321', '901.234.567-28'),
('Larissa Martins', '88888-5678', '012.345.678-29'),('João Pedro', '55555-2345', '123.456.789-30'),
('Marcelly Ribeiro', '77777-8901', '234.567.890-31'),('Ricardo Costa', '99999-6789', '345.678.901-32'),
('Mariana Almeida', '44444-3210', '456.789.012-33'),('Samara Dias', '22222-4321', '567.890.123-34'),
('Gabriela Santos', '33333-1234', '678.901.234-35'),('Victor Hugo', '66666-5678', '789.012.345-36'),
('Joana Ribeiro', '88888-8765', '890.123.456-37'),('Carlos Eduardo', '55555-2341', '901.234.567-38'),
('Helena Lima', '77777-8900', '012.345.678-39'),('Nicolas Silva', '99999-7654', '123.456.789-40'),
('Brenda Almeida', '44444-3211', '234.567.890-41'),('Leonardo Ferreira', '22222-4322', '345.678.901-42'),
('Miriam Santos', '33333-6543', '456.789.012-43'),('Regiane Costa', '66666-8765', '567.890.123-44'),
('Gustavo Dias', '88888-4320', '678.901.234-45'),('Karla Rocha', '55555-6780', '789.012.345-46'),
('Diego Almeida', '77777-5432', '890.123.456-47'),('Renata Martins', '99999-3210', '901.234.567-48'),
('César Ferreira', '44444-5678', '012.345.678-49'),('Sandra Lima', '22222-6789', '123.456.789-50'),
('Lucas Nascimento', '33333-7890', '234.567.890-51'),('Ana Carolina', '66666-8901', '345.678.901-52'),
('Marcelo Costa', '88888-0123', '456.789.012-53'),('Thais Dias', '55555-0987', '567.890.123-54'),
('Paulo Ribeiro', '77777-1234', '678.901.234-55'),('Claudia Santos', '99999-4568', '789.012.345-56'),
('Fernando Almeida', '44444-7654', '890.123.456-57'),('Silvia Rocha', '22222-8902', '901.234.567-58'),
('Valter Ferreira', '33333-5671', '012.345.678-59'),('Lívia Martins', '66666-1234', '123.456.789-60'),
('Martha Oliveira', '88888-4567', '234.567.890-61'),('Rogerio Dias', '55555-8765', '345.678.901-62'),
('Priscila Nascimento', '77777-4321', '456.789.012-63'),('Alberto Lima', '99999-3210', '567.890.123-64'),
('Cátia Ribeiro', '44444-5432', '678.901.234-65'),('Elias Santos', '22222-6780', '789.012.345-66'),
('Ricardo Almeida', '33333-0987', '890.123.456-67'),('Nadia Ferreira', '66666-3210', '901.234.567-68'),
('Fábio Martins', '88888-4321', '012.345.678-69'),('Tânia Rocha', '55555-7654', '123.456.789-70'),
('Luana Dias', '77777-9876', '234.567.890-71'),('Fernando Costa', '99999-5432', '345.678.901-72'),
('Kleber Santos', '44444-2100', '456.789.012-73'),('Jéssica Oliveira', '22222-0980', '567.890.123-74'),
('Valéria Ribeiro', '33333-6543', '678.901.234-75'),('Rodrigo Almeida', '66666-4321', '789.012.345-76'),
('Tatiane Martins', '88888-5432', '890.123.456-77'),('Sérgio Dias', '55555-2101', '901.234.567-78'),
('Michele Lima', '77777-8765', '012.345.678-79'),('Jorge Costa', '99999-5432', '123.456.789-80'),
('Cintia Santos', '44444-7654', '234.567.890-81'),('Renato Ferreira', '22222-0981', '345.678.901-82'),
('Alessandra Rocha', '33333-2102', '456.789.012-83'),('Karla Almeida', '66666-3211', '567.890.123-84'),
('Davi Martins', '88888-7654', '678.901.234-85'),('Lilian Nascimento', '55555-1235', '789.012.345-86'),
('Sandra Ribeiro', '77777-4322', '890.123.456-87'),('Eric Dias', '99999-6780', '901.234.567-88'),
('Isis Santos', '44444-0982', '012.345.678-89'),('Claudio Lima', '22222-7654', '123.456.789-90'),
('Patrícia Costa', '33333-8765', '234.567.890-91'),('Jéssica Ferreira', '66666-5432', '345.678.901-92'),
('Marcelo Ribeiro', '88888-3212', '456.789.012-93'),('Cristiane Almeida', '55555-2103', '567.890.123-94'),
('Aline Martins', '77777-0983', '678.901.234-95'),('Leonardo Dias', '99999-2104', '789.012.345-96'),
('Cecilia Nascimento', '44444-8765', '890.123.456-97'),('Tales Santos', '22222-4323', '901.234.567-98'),
('Silvana Ferreira', '33333-3213', '012.345.678-99');

select count(*) from clientes;

create table vendas(
id_venda int auto_increment primary key,
id_cliente int,
data_venda date,
foreign key (id_cliente) references clientes(id_cliente)
);

insert into vendas(id_cliente, data_venda) values (2, '2024-10-04'), (1, '2024-09-30'), (3,'2024-10-04');
select * from vendas;

create table item_vendas(
id_item int auto_increment primary key,
id_venda int,
id_produto int,
qunt int,
foreign key (id_produto) references produtos(id_produto),
foreign key (id_venda) references vendas(id_venda)
);

insert into item_vendas(id_venda, id_produto, qunt) values (1, 1, 2 ), (1, 2, 2), (3, 3, 2), (3, 4, 3), (2, 5, 15);

select * from item_vendas;

	# MOstrando todas as vendas
select v.id_venda, p.nome_produto Produto, i.qunt Quantidade, p.preco Preco, sum(qunt * p.preco) Valor_Compra, v.data_venda Data_Compra,
c.nome_cat Categoria, cl.nome_cliente Cliente from item_vendas i 
join vendas v on v.id_venda = i.id_venda
join produtos p on p.id_produto = i.id_produto
join categorias c on p.id_cat = c.id_cat
join clientes cl on cl.id_cliente = v.id_cliente
group by i.id_item; 

	#mostrando todos os produtos 
select p.nome_produto Produto, p.preco Preco, c.nome_cat Categoria, f.nome_forn Fornecedor from produtos p
join categorias c on p.id_cat = c.id_cat
join fornecedores f on f.id_forn = p.id_forn
order by p.id_produto;

	# Mostrando venda especific
select v.id_venda, c.nome_cliente Cliente,p.nome_produto Produto, sum(qunt * p.preco) Total_Compra, v.data_venda from item_vendas i 
join vendas v on v.id_venda = i.id_venda
join clientes c on c.id_cliente = v.id_cliente
join produtos p on p.id_produto = i.id_produto
where v.id_venda = 3 group by i.id_item;

		#contando clientes
select count(*) from clientes;
	