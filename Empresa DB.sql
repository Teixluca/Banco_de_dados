create database empresa_DB;
use empresa_DB;

create table funcionarios(
id_func int auto_increment primary key,
nome_func varchar(70),
salario decimal(10,2)
);

insert into funcionarios(nome_func, salario) values ('Lucas Alves', 3865),('Maria Rita', 9500),
('Ana Santos', 12000),('Arthur Costa', 2500),('Bruno Almeida', 1900),('Juliana Pereira', 1250),
('Fernanda Lima', 1350),('Pedro Ferreira', 1350),('Mariana Rocha', 1450),('Gabriel Souza', 2200),
('Letícia Almeida', 3400),('Rafael Martins', 1800),('Cíntia Dias', 2800),('Thiago Lima', 3000),
('Roberta Ferreira', 4500),('Samuel Rocha', 4000),('Tatiane Ribeiro', 5000),('Carlos Eduardo', 1500),
('Juliano Santos', 2200),('Isabela Costa', 3200),('Nicolas Almeida', 2600),('Priscila Ferreira', 2800),
('Felipe Lima', 2700),('Michele Dias', 2900),('Davi Santos', 3100),('Aline Rocha', 3500),('João Pedro', 1600),
('Renata Ribeiro', 4000),('Alberto Martins', 2300),('Miriam Almeida', 3700),('Natália Souza', 3500),
('Túlio Lima', 3300),('Fernando Costa', 4600),('Cecília Dias', 4800),('Paulo Ferreira', 2900),
('Carolina Almeida', 3100),('Eric Santos', 2300),('Marcio Rocha', 2400),('Sofia Lima', 3500),
('Jéssica Pereira', 3800),('Karla Costa', 3900),('Gustavo Souza', 2000),('Simone Almeida', 3600),
('Rogério Martins', 2700),('Helena Ferreira', 3800),('André Santos', 4000),('Larissa Rocha', 4100),
('Flávio Almeida', 3000),('Cecilio', 1300),('Vinícius Dias', 2900),('Tatiane Souza', 3400);

select * from funcionarios;

create table departamentos(
id_depart int auto_increment primary key,
nome_depart varchar(70)
);

insert into departamentos(nome_depart) values ('Recursos Humanos'), ('Financeiro'), ('Marketing'), ('Vendas'), ('TI');

select * from departamentos;

alter table funcionarios add id_depart int;
alter table funcionarios add foreign key (id_depart) references departamentos(id_depart);

update funcionarios set id_depart = 1 where id_func in (8,7,4,1);
update funcionarios set id_depart = 2 where id_func in (12,14,16,18);
update funcionarios set id_depart = 3 where id_func in (21, 23, 25, 28);
update funcionarios set id_depart = 4 where id_func in (30, 31, 34,35, 38,39);
update funcionarios set id_depart = 5 where id_func in (40, 41, 42, 43, 44,46);

	# Listando todos os funcionarios
select id_func, nome_func Funcionario, salario Salario, d.nome_depart Departamento from funcionarios f
left join departamentos d on d.id_depart = f.id_depart
order by f.id_func;

select count(*) from funcionarios;

# Atualizando o salario de um funcionario
update funcionarios set salario = 14950 where id_func = 1 limit 1;

select id_func, nome_func Funcionario, salario Salario, d.nome_depart from funcionarios f
left join departamentos d on f.id_depart = d.id_depart
order by id_func;

	#deletando funcionario
delete from funcionarios where id_func = 49;

	# Salario medio de todos os funcionarios
select round(avg(salario)) Salario_Medio from funcionarios; 

	# Salarios maiores que 3000
select id_func, nome_func Funcionario, salario Salario from funcionarios
where salario > 3000;

select count(*) from funcionarios where salario > 3000;

	# Contando funcionarios
select count(*) from funcionarios;


