CREATE DATABASE tabelaFilmes
GO
USE tabelaFilmes
GO

CREATE TABLE filme(
id int NOT NULL,
titulo VARCHAR(80) NOT NULL,
ano int CHECK(ano<=2021) NULL
PRIMARY KEY (id)
)

CREATE TABLE estrela(
codigo int NOT NULL,
nome VARCHAR(50) NOT NULL,
nomeReal VARCHAR(50) NULL
PRIMARY KEY (codigo)
)

CREATE TABLE cliente(
num_cadastro int NOT NULL,
nome VARCHAR(70) NOT NULL,
logradouro VARCHAR(150) NOT NULL,
num int CHECK(num>0) NOT NULL,
cep CHAR(8) CHECK(LEN(cep) = 8)	 NULL
PRIMARY KEY(num_cadastro)
)

CREATE TABLE dvd(
num int NOT NULL,
data_fabricacao DATETIME CHECK(data_fabricacao < GETDATE()) NOT NULL,
filmeid int NOT NULL
PRIMARY KEY (num)
FOREIGN KEY (filmeid) REFERENCES filme (id)
)

CREATE TABLE filmeEstrela(
filmeid int NOT NULL,
estrelacodigo int NOT NULL
PRIMARY KEY (filmeid, estrelacodigo)
FOREIGN KEY (filmeid) REFERENCES filme (id),
FOREIGN KEY (estrelacodigo) REFERENCES estrela (codigo)
)

CREATE TABLE locacao(
dvdnum int NOT NULL,
clientenum_cadastro int NOT NULL,
data_locacao DATETIME CHECK(data_locacao = GETDATE()) NOT NULL,
data_devolucao DATETIME NOT NULL,
valor DECIMAL(7,2) CHECK(valor> 0.00) NOT NULL
PRIMARY KEY (dvdnum, clientenum_cadastro, data_locacao)
FOREIGN KEY (dvdnum) REFERENCES dvd(num),
FOREIGN KEY (clientenum_cadastro) REFERENCES cliente(num_cadastro),
CONSTRAINT chk_dt CHECK(data_locacao < data_devolucao)
)

GO
EXEC sp_help filme
EXEC sp_help cliente
EXEC sp_help estrela
EXEC sp_help filmeEstrela
EXEC sp_help dvd
EXEC sp_help locacao
GO
INSERT INTO filme VALUES
(1001, 'Whiplash', 2015),
(1002, 'Birdman', 2015),
(1003, 'Interestelar', 2014),
(1004, 'A Culpa é das Estrelas', 2014),
(1005, 'Alexandre e o Dia Terrivel, Horrível, Espantoso e Horroroso', 2014),
(1006, 'Sing', 2016)
GO
INSERT INTO estrela VALUES
(9901, 'Michael Keaton', 'Michael John Douglas'),
(9902, 'Emma Stone', 'Emily Jean Stone'),
(9903, 'Miles Teller', NULL),
(9904, 'Steve Carell', 'Steven John Carell'),
(9905, 'Jennifer Garner', 'Jennifer Anne Garner')
GO
INSERT INTO filmeEstrela VALUES
(1002, 9901),
(1002, 9902),
(1001, 9903),
(1005, 9904),
(1005, 9905)
GO
INSERT INTO dvd VALUES
(10001, '2020-12-02', 1001),
(10002, '2019-10-18', 1002),
(10003, '2020-04-03', 1003),
(10004, '2020-12-02', 1001),
(10005, '2019-10-18', 1004),
(10006, '2020-04-03', 1002),
(10007, '2020-12-02', 1005),
(10008, '2019-10-18', 1002),
(10009, '2020-04-03', 1003)
GO
INSERT INTO cliente VALUES
(5501, 'Matilde Luz', 'Rua Síria', 150, '03086040'),
(5502, 'Carlos Carreiro', 'Rua Bartolomeu Aires', 1250, '04419110'),
(5503, 'Daniel Ramalho', 'Rua Itajutiba', 169, NULL),
(5504, 'Roberta Bento', 'Rua Jayme Von Rosenburg', 36, NULL),
(5505, 'Rosa Cerqueira', 'Rua Arnaldo Simões Pinto', 235, '02917110')
GO
INSERT INTO locacao VALUES
(10001, 5502, '2021-02-18', '2021-02-21', 3.50),
(10009, 5502, '2021-02-18', '2021-02-21', 3.50),
(10002, 5503, '2021-02-18', '2021-02-19', 3.50),
(10002, 5505, '2021-02-20', '2021-02-23', 3.00),
(10004, 5505, '2021-02-20', '2021-02-23', 3.00),
(10005, 5505, '2021-02-20', '2021-02-23', 3.00),
(10001, 5501, '2021-02-24', '2021-02-26', 3.50),
(10008, 5501, '2021-02-24', '2021-02-26', 3.50)