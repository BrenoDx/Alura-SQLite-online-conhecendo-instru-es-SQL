CREATE TABLE funcionários ( ID INT PRIMARY KEY, Nome VARCHAR(100), Departamento VARCHAR(100), Salario FLOAT );

INSERT INTO funcionários(ID, Nome, Departamento, Salario) VALUES (1,'Heitor Vieira', 'Financeiro', 4959.22), (2, 'Daniel Campos', 'Vendas', 3884.44), (3, 'Luiza Dias', 'TI', 8205.78), (4, 'Davi Lucas Moraes', 'Financeiro', 8437.02), (5, 'Pietro Cavalcanti', 'TI', 4946.88), (6, 'Evelyn da Mata', 'Vendas', 5278.88), (7, 'Isabella Rocha', 'Marketing', 4006.03), (8, 'Sra. Manuela Azevedo', 'Vendas', 6101.88), (9, 'Brenda Cardoso', 'TI', 8853.34), (10, 'Danilo Souza', 'TI', 8242.14);

SELECT * FROM funcionários;

SELECT Nome FROM funcionários WHERE Departamento = 'Vendas';

SELECT * FROM funcionários WHERE Salario > 5000;

SELECT DISTINCT Departamento FROM funcionários;

UPDATE funcionários SET Salario = 7500 WHERE Departamento = 'TI';

DELETE FROM funcionários WHERE Salario < 4000;

SELECT Nome, Salario FROM funcionários WHERE Departamento = 'Vendas' AND Salario >= 6000;

CREATE TABLE projetos ( id_projeto INT PRIMARY KEY, nome_projeto VARCHAR(100), id_gerente INT, FOREIGN KEY (id_gerente) REFERENCES funcionários (id) );

INSERT INTO projetos(id_projeto, nome_projeto, id_gerente) VALUES (1, 'Desenvolvimento APP', 3), (2, 'Banco de Dados', 10), (3, 'Design', 7);

SELECT * FROM projetos WHERE id_projetos = 2

DROP TABLE funcionários;

