CREATE TABLE alunos
(
id INT PRIMARY KEY,
nome_aluno VARCHAR(100),
data_nascimento DATE,
gênero VARCHAR(20),
endereco VARCHAR(100),
telefone VARCHAR(20),
email VARCHAR(100)
);
DROP TABLE notas
CREATE TABLE professores
(
id INT PRIMARY KEY,
nome_professor VARCHAR(100), 
data_nascimento DATE,
gênero VARCHAR(20),
telefone VARCHAR(20),
email VARCHAR(100)
);

CREATE TABLE disciplina
(
id INT PRIMARY KEY,
nome_disciplina VARCHAR(100),
descrição TEXT,
carga_horaria INT,
id_professor INT,
FOREIGN KEY (id_professor) REFERENCES professores (id)
);

CREATE TABLE turmas
(
id INT PRIMARY KEY,
nome_turma VARCHAR(20),
ano_letivo YEAR,
id_professor INT,
FOREIGN KEY (id_professor) REFERENCES professores (id)
);

CREATE TABLE turma_disciplinas
(
id_turma INT,
id_disciplina INT,
FOREIGN KEY (id_turma) REFERENCES turmas (id),
FOREIGN KEY (id_disciplina) REFERENCES  disciplina (id)
);

CREATE TABLE turma_alunos
(
id_turma INT,
id_alunos INT,
FOREIGN KEY (id_turma) REFERENCES turmas (id),
FOREIGN KEY (id_alunos) REFERENCES alunos (id)
);

CREATE TABLE notas
(
id INT PRIMARY KEY,
id_aluno INT,
id_disciplina INT,
nota DECIMAL(2,2),
data_avaliação VARCHAR(100),
FOREIGN KEY (id_aluno) REFERENCES alunos (id),
FOREIGN KEY (id_disciplina) REFERENCES disciplina (id)
);
