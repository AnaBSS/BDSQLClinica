CREATE DATABASE selects
GO
USE selects
GO
CREATE TABLE funcionario (
id          INT             IDENTITY(1,1)					NOT NULL,
nome        VARCHAR(100)									NOT NULL,
sobrenome   VARCHAR(200)									NOT NULL,
logradouro  VARCHAR(200)									NOT NULL,
numero      INT             CHECK(numero > 0)				NOT NULL,
bairro      VARCHAR(100)									NULL,
cep         CHAR(8)         CHECK(LEN(cep) = 8)				NULL,
ddd         CHAR(2)			DEFAULT('11')					NULL,
telefone    CHAR(8)         CHECK(LEN(telefone) = 8)		NULL,
data_nasc   DATETIME        CHECK(data_nasc < GETDATE())	NOT NULL,
salario     DECIMAL(7,2)    CHECK(salario > 0.00)			NOT NULL
PRIMARY KEY(id)
)
GO
CREATE TABLE projeto(
codigo      INT             IDENTITY(1001, 1)		NOT NULL,
nome        VARCHAR(200)    UNIQUE					NOT NULL,
descricao   VARCHAR(300)							NULL
PRIMARY KEY(codigo)
)
GO
CREATE TABLE funcproj(
id_funcionario  INT         NOT NULL,
codigo_projeto  INT         NOT NULL,
data_inicio     DATETIME    NOT NULL,
data_fim        DATETIME    NOT NULL
PRIMARY KEY (id_funcionario, codigo_projeto)
FOREIGN KEY (id_funcionario) REFERENCES funcionario (id),
FOREIGN KEY (codigo_projeto) REFERENCES projeto (codigo),
CONSTRAINT chk_dt CHECK(data_inicio < data_fim)
)
GO
INSERT INTO funcionario (nome, sobrenome, logradouro, numero, bairro, cep, telefone, data_nasc, salario) VALUES
('Fulano',	'da Silva',	'R. Voluntários da Patria',	8150,	'Santana',	'05423110',	'76895248',	'15/05/1974',	4350.00),
('Cicrano',	'De Souza',	'R. Anhaia', 353,	'Barra Funda',	'03598770',	'99568741',	'25/08/1975',	1552.00),
('Beltrano',	'Dos Santos',	'R. ABC', 1100,	'Artur Alvim',	'05448000',	'25639854',	'02/06/1963',	2250.00)
GO
INSERT INTO funcionario (nome, sobrenome, logradouro, numero, bairro, cep, ddd, telefone, data_nasc, salario) VALUES
('Tirano',	'De Souza',	'Avenida Águia de Haia', 4430,	'Artur Alvim',	'05448000',	NULL,	NULL,	'15/10/1975',	2804.00)
GO
INSERT INTO projeto VALUES
('Implantação de Sistemas','Colocar o sistema no ar'),
('Modificação do módulo de cadastro','Modificar CRUD'),
('Teste de Sistema de Cadastro',NULL)
GO
INSERT INTO funcproj VALUES
(1, 1001, '18/04/2015', '30/04/2015'),
(3, 1001, '18/04/2015', '30/04/2015'),
(1, 1002, '06/05/2015', '10/05/2015'),
(2, 1002, '06/05/2015', '10/05/2015'),
(3, 1003, '11/05/2015', '13/05/2015')
 
SELECT * FROM funcionario
SELECT * FROM projeto
SELECT * FROM funcproj

SELECT CONVERT(CHAR(10), GETDATE(), 103) AS hoje

SELECT CONVERT(CHAR(5), GETDATE(), 108) AS agora

SELECT id, nome, sobrenome, logradouro, numero,
	bairro, cep, ddd, telefone, data_nasc, salario
FROM funcionario
 
SELECT id, nome, sobrenome, logradouro, numero,
	bairro, cep, salario
FROM funcionario

SELECT id, nome, sobrenome, logradouro, numero,
	bairro, cep, salario
FROM funcionario
WHERE nome = 'Fulano'

SELECT id, nome, sobrenome, logradouro, numero,
	bairro, cep, salario
FROM funcionario
WHERE nome = 'Fulano' AND sobrenome LIKE '%Silva%'

SELECT id, nome, sobrenome, logradouro, numero,
	bairro, cep, salario
FROM funcionario
WHERE sobrenome LIKE '%Souza%'

SELECT id, nome + ' ' + sobrenome AS nome_completo --concatena 2 colunas
FROM funcionario
WHERE telefone IS NULL

SELECT id, 
		nome + ' ' + sobrenome AS nome_completo,--concatena 2 colunas
		telefone
FROM funcionario
WHERE telefone IS NOT NULL

SELECT id, 
		nome + ' ' + sobrenome AS nome_completo,--concatena 2 colunas
		telefone
FROM funcionario
WHERE telefone IS NOT NULL
ORDER BY nome ASC, sobrenome ASC

SELECT id,
		nome + ' ' + sobrenome AS nome_completo,
		logradouro + ', '+ CAST(numero AS VARCHAR(5))+ 
			' - CEP: '+cep AS end_completo,
		ddd,
		telefone
FROM funcionario
ORDER BY nome ASC, sobrenome ASC

SELECT id,
		nome + ' ' + sobrenome AS nome_completo,
		logradouro + ', '+ CAST(numero AS VARCHAR(5))+ 
			' - CEP: '+cep AS end_completo,
		CONVERT(CHAR(10), data_nasc, 103) AS data_nasc
FROM funcionario
ORDER BY nome DESC, sobrenome DESC
 
SELECT DISTINCT CONVERT(CHAR(10), data_inicio, 103) AS inicio
FROM funcproj

SELECT nome + ' ' + sobrenome AS nome_completo,
		salario,
		CAST(salario * 1.15 AS DECIMAL(7,2)) AS novo_salario
FROM funcionario
WHERE nome = 'Cicrano'
 
SELECT nome + ' ' + sobrenome AS nome_completo,
		salario
FROM funcionario
WHERE salario > 3000.00
 
SELECT nome + ' ' + sobrenome AS nome_completo,
		salario
FROM funcionario
WHERE salario < 2000.00
 
SELECT nome + ' ' + sobrenome AS nome_completo,
		salario
FROM funcionario
WHERE salario > 2000.00 AND salario < 3000.00
 
SELECT nome + ' ' + sobrenome AS nome_completo,
		salario
FROM funcionario
WHERE salario BETWEEN 2000.00 AND 3000.00
 
SELECT nome + ' ' + sobrenome AS nome_completo,
		salario
FROM funcionario
WHERE salario < 2000.00 OR salario > 3000.00
 
SELECT nome + ' ' + sobrenome AS nome_completo,
		salario
FROM funcionario
WHERE salario NOT BETWEEN 2000.00 AND 3000.00

SELECT SUBSTRING('Banco de Dados', 1, 5) AS sub
SELECT SUBSTRING('Banco de Dados', 7, 2) AS sub
SELECT SUBSTRING('Banco de Dados', 10, 5) AS sub

SELECT SUBSTRING('Banco de Dados', 1, 6) AS sub
SELECT RTRIM(SUBSTRING('Banco de Dados', 1, 6)) AS sub_trim
 
SELECT SUBSTRING('Banco de Dados', 9, 6) AS sub
SELECT LTRIM(SUBSTRING('Banco de Dados', 9, 6)) AS sub_trim
 
SELECT SUBSTRING('Banco de Dados', 6, 4) AS sub
SELECT RTRIM(LTRIM(SUBSTRING('Banco de Dados', 6, 4))) AS sub_trim

SELECT DAY(GETDATE()) AS dia_hoje
SELECT MONTH(GETDATE()) AS mes_hoje
SELECT YEAR(GETDATE()) AS ano_hoje
SELECT DATEPART(WEEKDAY, GETDATE()) AS dia_semana_hoje
SELECT DATEPART(DAYOFYEAR, GETDATE()) AS dia_ano_hoje
SELECT DATEPART(WEEK, GETDATE()) AS semana_ano_hoje

SELECT DATEADD(DAY, 47, GETDATE()) AS daqui_47_dias
SELECT DATEADD(DAY, -16, GETDATE()) AS daqui_47_dias

SELECT DATEDIFF(DAY, '2022-10-14', GETDATE()) AS diff
SELECT DATEDIFF(DAY, '14/10/2022', GETDATE()) AS diff


 INSERT INTO funcionario VALUES 
('Fulano','da Silva Jr.','R. Voluntários da Patria',8150,NULL,'05423110','11','32549874','09/09/1990',1235.00),
('João','dos Santos','R. Anhaia',150,NULL,'03425000','11','45879852','19/08/1973',2352.00),
('Maria','dos Santos','R. Pedro de Toledo',18,NULL,'04426000','11','32568974','03/05/1982',4550.00)

SELECT id, 
		nome + ' ' + sobrenome AS nome_completo,
		SUBSTRING(cep, 1, 5) + '-' + SUBSTRING(cep, 6, 3) AS cep
FROM funcionario

SELECT id, 
		nome + ' ' + sobrenome AS nome_completo,
		'('+ddd+')'+
			SUBSTRING(telefone,1,4)+'-'+SUBSTRING(telefone,5,4) AS tel
FROM funcionario

SELECT id, 
		nome + ' ' + sobrenome AS nome_completo,
		tel = CASE (SUBSTRING(telefone, 1, 1))
		WHEN '6' THEN
			'('+ddd+')9'+
				SUBSTRING(telefone,1,4)+'-'+SUBSTRING(telefone,5,4)
		WHEN '7' THEN
			'('+ddd+')9'+
				SUBSTRING(telefone,1,4)+'-'+SUBSTRING(telefone,5,4)
		WHEN '8' THEN
			'('+ddd+')9'+
				SUBSTRING(telefone,1,4)+'-'+SUBSTRING(telefone,5,4)
		WHEN '9' THEN
			'('+ddd+')9'+
				SUBSTRING(telefone,1,4)+'-'+SUBSTRING(telefone,5,4)
		ELSE
			'('+ddd+')'+
				SUBSTRING(telefone,1,4)+'-'+SUBSTRING(telefone,5,4)
		END
FROM funcionario

SELECT id, 
		nome + ' ' + sobrenome AS nome_completo,
		CASE WHEN CAST(SUBSTRING(telefone, 1, 1) AS INT) >= 6
		THEN
		'('+ddd+')9'+
			SUBSTRING(telefone,1,4)+'-'+SUBSTRING(telefone,5,4) 
		ELSE 
		'('+ddd+')'+
			SUBSTRING(telefone,1,4)+'-'+SUBSTRING(telefone,5,4) 
		END AS tel
FROM funcionario
 
 SELECT id,
		nome + ' ' + sobrenome AS nome_completo,
		CASE WHEN bairro IS NOT NULL
		THEN 	
			logradouro+','+CAST(numero AS VARCHAR(5))+ 
				' - '+bairro 
		ELSE
			logradouro+','+CAST(numero AS VARCHAR(5))
		END AS endereco
FROM funcionario

SELECT id,
		nome + ' ' + sobrenome AS nome_completo,
		CASE WHEN bairro IS NOT NULL
		THEN 	
			logradouro+','+CAST(numero AS VARCHAR(5))+ 
				' - '+bairro 
		ELSE
			logradouro+','+CAST(numero AS VARCHAR(5))
		END AS endereco,
		SUBSTRING(cep, 1, 5) + '-' + SUBSTRING(cep, 6, 3) AS cep, 
		CASE WHEN CAST(SUBSTRING(telefone, 1, 1) AS INT) >= 6
		THEN
		'('+ddd+')9'+
			SUBSTRING(telefone,1,4)+'-'+SUBSTRING(telefone,5,4) 
		ELSE 
		'('+ddd+')'+
			SUBSTRING(telefone,1,4)+'-'+SUBSTRING(telefone,5,4) 
		END AS tel
FROM funcionario
 
SELECT id_funcionario,
		codigo_projeto,
		DATEDIFF(DAY, data_inicio, data_fim) AS datas_trabalhadas
FROM funcproj
 

SELECT CONVERT(CHAR(10), data_fim, 103) AS data_fim,
		CONVERT(CHAR(10), DATEADD(DAY, 3, data_fim), 103) AS nova_data_fim
FROM funcproj
WHERE id_funcionario = 3 AND codigo_projeto = 1003
 
SELECT DISTINCT codigo_projeto
FROM funcproj
WHERE DATEDIFF(DAY, data_inicio, data_fim) < 10
 
SELECT DISTINCT codigo_projeto
FROM funcproj
WHERE DATEDIFF(DAY, data_inicio, data_fim) >= 10
 
SELECT * FROM projeto
 
SELECT DISTINCT codigo_projeto
FROM funcproj
WHERE DATEDIFF(DAY, data_inicio, data_fim) < 10
 
 
SELECT nome, descricao
FROM projeto
WHERE codigo IN (1002, 1003)
 
SELECT nome, descricao
FROM projeto
WHERE codigo IN 
(
	SELECT DISTINCT codigo_projeto
	FROM funcproj
	WHERE DATEDIFF(DAY, data_inicio, data_fim) < 10
)
 
SELECT id, nome + ' ' + sobrenome AS nome_completo
FROM funcionario
WHERE id IN
(
	SELECT id_funcionario
	FROM funcproj
	WHERE codigo_projeto IN
	(
		SELECT codigo
		FROM projeto
		WHERE nome LIKE 'Modifica%'
	)
)

SELECT id,
		nome + ' ' + sobrenome AS nome_completo,
		CONVERT(CHAR(10), data_nasc, 103) AS nascimento,
		DATEDIFF(DAY, data_nasc, GETDATE())/365 AS idade
FROM funcionario

