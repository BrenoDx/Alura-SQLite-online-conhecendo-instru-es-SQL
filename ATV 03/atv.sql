CREATE TABLE funcionarios
(
  id INT PRIMARY KEY,
  nome VARCHAR(100),
  cargo VARCHAR(100),
  departamento TEXT,
  data_de_contratacao DATE,
  salario DECIMAL(9,2)
);

INSERT INTO funcionario(id, nome, cargo, departamento, data_de_contratacao, salario) VALUES
('32D', 'João Silva', 'Desenvolvedor de Software', 'TI', '2023-10-24', 6000.00);

SELECT * FROM funcionarios;
