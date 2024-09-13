CREATE DATABASE empresas;
USE empresas;

CREATE TABLE departamentos(
depart_id INT AUTO_INCREMENT PRIMARY KEY,
nome_departamento VARCHAR(70) NOT NULL
);
INSERT INTO departamentos (nome_departamento) VALUES ('Recursos Humanos'),('Financeiro'), ('Marketing'), ('Tecnologia');

CREATE TABLE funcionarios(
funcionario_id INT AUTO_INCREMENT PRIMARY KEY,
nome_funcionario VARCHAR(100) NOT NULL,
depart_id INT,
FOREIGN KEY (depart_id) REFERENCES departamentos(depart_id) 
);

INSERT INTO funcionarios (nome_funcionario, depart_id) VALUES ('Ana Souza',1), ('Carlos Pereira',2), ('Mariana Oliveira',3), ('Roberto Santos',4),
('Juliana Costa',2), ('Pedro Almeida',3),('Fernanda Lima',4), ('João Silva',3), ('Laura Martins',2),('Ricardo Fernandes',1);

select nome_funcionario FUNCIONARIO, nome_departamento DEPARTAMENTO from funcionarios f
join departamentos d on d.depart_id = f.depart_id
order by d.depart_id	