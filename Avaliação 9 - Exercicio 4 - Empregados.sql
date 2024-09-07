create database empresas;
use empresas;

create table empregados(
empregado_id INT AUTO_INCREMENT,
nome_empregado VARCHAR(70) NOT NULL,
nome_cargo VARCHAR(70),
supervisor_id INT,

PRIMARY KEY (empregado_id),
constraint sup_emp_kf FOREIGN KEY (supervisor_id) REFERENCES empregados(empregado_id)
);

INSERT INTO empregados(nome_empregado, nome_cargo) VALUES ('Ana Rodrigues', 'Supervisor');
INSERT INTO empregados(nome_empregado, nome_cargo) VALUES ('Joice Costa', 'Supervisor');
INSERT INTO empregados(nome_empregado, nome_cargo) VALUES ('Lucas Alves Teixeira', 'Supervisor'); 

INSERT INTO empregados(nome_empregado, nome_cargo, supervisor_id) VALUES ('Maria Rita', 'Analista de dados',1); 
INSERT INTO empregados(nome_empregado, nome_cargo, supervisor_id) VALUES ('Sabrina costa', 'assistente', 2);
INSERT INTO empregados(nome_empregado, nome_cargo, supervisor_id) VALUES ('Matheus Saraiva', 'back end', 1);
INSERT INTO empregados(nome_empregado, nome_cargo, supervisor_id) VALUES ('Mariano Castro', 'back end', 3);
INSERT INTO empregados(nome_empregado, nome_cargo, supervisor_id) VALUES ('Izaias Melo', 'front end', 3);
INSERT INTO empregados(nome_empregado, nome_cargo, supervisor_id) VALUES ('Luis Henrique', 'back end', 2);
INSERT INTO empregados(nome_empregado, nome_cargo, supervisor_id) VALUES ('Aparecido Saraiva', 'Motorista',1);
INSERT INTO empregados(nome_empregado, nome_cargo, supervisor_id) VALUES ('Arthur Apollo', 'Motorista',3);
INSERT INTO empregados(nome_empregado, nome_cargo, supervisor_id) VALUES ('CArlos Eduardo', 'Manobrista',2);
INSERT INTO empregados(nome_empregado, nome_cargo, supervisor_id) VALUES ('Larissa Flausino', 'analista',3);

select * from empregados;

select e1.nome_empregado as EMPREGADO, e1.nome_cargo as CARGO, e2.nome_empregado as SUPERVISOR, e1.supervisor_id from empregados as e1
left join empregados as e2 on e1.supervisor_id=e2.empregado_id