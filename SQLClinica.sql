CREATE DATABASE aula1_SQL_clinica
GO
USE aula1_SQL_clinica
GO
CREATE TABLE paciente (
num_beneficiario	INT				NOT NULL,
nome				VARCHAR(100)	NOT NULL,
logradouro			VARCHAR(200)	NOT NULL,
numero				INT				NOT NULL,
CEP					CHAR(8)			NULL,
complemento			VARCHAR(255)	NULL,
telefone			VARCHAR(11)		NOT NULL
PRIMARY KEY (num_beneficiario)
)
GO
CREATE TABLE especialidade (
id					INT				NOT NULL,
especialidade		VARCHAR(200)			NOT NULL
PRIMARY KEY (id)
)
GO
CREATE TABLE medico (
codigo				INT				NOT NULL,
nome				VARCHAR(100)	NOT NULL,
logradouro			VARCHAR(200)	NOT NULL,
numero				INT				NOT NULL,
CEP					CHAR(8)			NOT NULL,
complemento			VARCHAR(255)	NULL,
contato				VARCHAR(11)		NOT NULL,
especialidade_id	INT				NOT NULL
PRIMARY KEY (codigo)
FOREIGN KEY (especialidade_id) 
	REFERENCES especialidade (id)
)
GO
CREATE TABLE consulta (
paciente_num_beneficiario	INT				NOT NULL,
medico_codigo				INT				NOT NULL,
data_hora					DATETIME		NOT NULL,
observacao					VARCHAR(255)	NOT NULL
PRIMARY KEY (paciente_num_beneficiario, medico_codigo,
	data_hora)
FOREIGN KEY (paciente_num_beneficiario)
	REFERENCES paciente(num_beneficiario),
FOREIGN KEY (medico_codigo)
	REFERENCES medico(codigo)
)

INSERT INTO especialidade VALUES
(10001, 'Pediatra'),
(10002, 'Geriatra'),
(10003, 'Psiquiatra'),
(10004, 'Psicologo'),
(10005, 'Otorrinolaringologista'),
(10006, 'Neurologista'),
(10007, 'Oftalmologista')

SELECT * FROM especialidade

INSERT INTO medico VALUES
(101, 'Fulano de Tal', 'Rua A', 50, '01234000', 'Bloco B - Apto 102', '11999990000', 10007),
(102, 'Cicrano de Tal', 'Rua B', 3550, '02345000', NULL, '11999991111', 10001),
(103, 'Beltrano de Tal', 'Rua C', 5950, '03456000', NULL, '11999992222', 10002)

SELECT * FROM medico

INSERT INTO paciente VALUES
(1, 'João Silva', 'Rua D', 310, '04561000', 'Apto 504', '11999993333')

SELECT * FROM paciente

INSERT INTO consulta VALUES 
(1, 102, '2022-09-25 14:30', 'Dor de cabeça'),
(1, 101, '2022-10-01 16:23', 'Miopia')

SELECT * FROM consulta

INSERT INTO paciente VALUES
(2, 'Ana Santos', 'Rua D', 750, '04561000', NULL, '11999994444')

UPDATE paciente
SET numero = numero + 10
WHERE logradouro = 'Rua D'

UPDATE medico
SET numero = numero + 100
WHERE especialidade_id >= 10001 AND 
	especialidade_id <= 10003

DELETE paciente 
WHERE num_beneficiario = 2