CREATE DATABASE filmes
GO
USE filmes

CREATE TABLE filme (
id		INT	        	NOT NULL,
titulo  VARCHAR(100)     NOT NULL,
ano     INT             NULL
PRIMARY KEY (id)
)

CREATE TABLE dvd (
num              INT       NOT NULL,
data_fabricacao  DATETIME  NOT NULL,
filme_id         INT       NOT NULL
PRIMARY KEY (num)
FOREIGN KEY (filme_id) REFERENCES filme (id)
)

CREATE TABLE estrela (
id   INT NOT NULL,
nome VARCHAR(50) NOT NULL,
nome_real VARCHAR(90) NULL
PRIMARY KEY (id)
)

CREATE TABLE cliente (
num_cadastro INT NOT NULL,
nome VARCHAR(70) NOT NULL,
logradouro VARCHAR(150) NOT NULL,
num INT NOT NULL,
cep CHAR(8) NULL
PRIMARY KEY (num_cadastro)
)

CREATE TABLE filme_estrela(
filme_id INT NOT NULL,
estrela_id INT NOT NULL
PRIMARY KEY (filme_id, estrela_id)
FOREIGN KEY (filme_id) REFERENCES filme (id),
FOREIGN KEY (estrela_id) REFERENCES estrela (id)
)

CREATE TABLE locacao(
dvd_num INT NOT NULL,
cliente_num INT NOT NULL,
data_locacao DATE NOT NULL,
data_devolucao DATE NOT NULL,
valor DECIMAL(7,2) NOT NULL
PRIMARY KEY (dvd_num, cliente_num, data_locacao)
FOREIGN KEY (dvd_num) REFERENCES dvd (num),
FOREIGN KEY (cliente_num) REFERENCES cliente (num_cadastro)
)

SELECT * FROM filme

INSERT INTO filme VALUES
(1001, 'Whiplash', 2015),
(1002, 'Birdman', 2015),
(1003, 'Interestelar', 2014),
(1004, 'A Culpa é das estrelas', 2014),
(1005, 'Alexandre e o Dia Terrível, Horrível, Espantoso e Horroroso', 2014),
(1006, 'Sing', 2016)

INSERT INTO estrela VALUES
(9901, 'Michael Keaton', 'Michael John Douglas'),
(9902, 'Emma Stone', 'Emily Jean Stone'),
(9903, 'Miles Teller', NULL), 
(9904, 'Steve Carell', 'Steven John Carell'),
(9905, 'Jennifer Garner', 'Jennifer Anne Garner')

INSERT INTO filme_estrela VALUES
(1002, 9901),
(1002, 9902),
(1001, 9903),
(1005, 9904),
(1005, 9905)

INSERT INTO dvd VALUES
(10001, '02/12/2020', 1001),
(10002, '18/10/2019', 1002),
(10003, '03/04/2020', 1003),
(10004, '02/12/2020', 1001),
(10005, '18/10/2019', 1004),
(10006, '03/04/2020', 1002),
(10007, '02/12/2020', 1005),
(10008, '18/10/2019', 1002),
(10009, '03/04/2020', 1003)

INSERT INTO cliente VALUES
(5501, 'Matilde Luz', 'Rua Síria', 150, '03086040'),
(5502, 'Carlos Carreiro', 'Rua Bartolomeu Aires', 1250, '04419110'),
(5503, 'Daniel Ramalho', 'Rua Itajutiba', 169, NULL),
(5504, 'Roberta Bento', 'Rua Jayme Von Rosenburg', 36, NULL),
(5505, 'Rosa Cerqueira', 'Rua Arnaldo Simões Pinto', 235, '02917110')

INSERT INTO locacao VALUES
(10001, 5502, '18/02/2021', '21/02/2021', 3.50),
(10009, 5502, '18/02/2021', '21/02/2021', 3.50),
(10002, 5503, '18/02/2021', '19/02/2021', 3.50),
(10002, 5505, '20/02/2021', '23/02/2021', 3.00),
(10004, 5505, '20/02/2021', '23/02/2021', 3.00),
(10005, 5505, '20/02/2021', '23/02/2021', 3.00),
(10001, 5501, '24/02/2021', '26/02/2021', 3.50),
(10008, 5501, '24/02/2021', '26/02/2021', 3.50)

UPDATE cliente
SET cep =  '08411150'
WHERE num_cadastro = 5503

UPDATE cliente
SET cep = '029181901
WHERE
