create database cartorio;
use cartorio;

CREATE TABLE pessoas(
pessoa_id INT AUTO_INCREMENT PRIMARY KEY,
nome_pessoa VARCHAR(100) NOT NULL,
data_nascimento DATE NOT NULL
);

INSERT INTO pessoas (nome_pessoa, data_nascimento) VALUES ('Ana Silva', '1985-03-10'), ('Carlos Souza', '1990-06-25'), ('Fernanda Oliveira', '1978-11-14'), ('João Pereira', '1983-09-22'),
('Maria Santos', '1995-12-30'),  ('Pedro Almeida', '1982-05-15'),  ('Tatiane Costa', '1988-04-20'), ('Vinícius Rocha', '1991-07-17'), ('Juliana Lima', '1993-01-05'),('Rafael Martins', '1986-08-22');

CREATE TABLE documentos(
documento_id INT AUTO_INCREMENT PRIMARY KEY,
RG VARCHAR(70) NOT NULL unique,
data_emissao_rg DATE NOT NULL,
CPF VARCHAR(70) NOT NULL UNIQUE,
data_emissao_cpf DATE NOT NULL,
pessoa_id INT,
FOREIGN KEY (pessoa_id) REFERENCES pessoas(pessoa_id)
);

select count(*) from pessoas;

INsert into documentos(RG, data_emissao_rg, CPF, data_emissao_cpf, pessoa_id) values ('123456789', '2010-03-12', '123.456.789-00', '2012-11-30', 1), ('234567890', '2020-01-15', '234.567.890-12', '2017-05-10', 2), 
('345678901', '2016-06-11', '345.678.901-23', '2018-08-15', 3),('456789012', '2018-03-10', '456.789.012-34', '2020-07-20', 4), ('567890123', '2019-12-05', '567.890.123-45', '2019-03-22', 5),
('678901234', '2020-02-25', '678.901.234-56', '2020-10-10', 6),('789012345', '2017-07-15', '789.012.345-67', '2018-11-12', 7),('890123456', '2021-01-20', '890.123.456-78', '2021-05-22', 8), 
('901234567', '2019-04-18', '901.234.567-89', '2019-06-15', 9), ('012345678', '2016-11-12', '012.345.678-90', '2017-11-30', 10);

SELECT nome_pessoa NOME, data_nascimento NASCEIMENTO, RG, CPF from documentos d
join pessoas p on p.pessoa_id = d.pessoa_id
order by p.nome_pessoa;