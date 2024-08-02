SELECT * FROM alunos;

SELECT * FROM professores;

SELECT * FROM turmas;

SELECT * FROM turma_alunos;

SELECT * FROM disciplina;

SELECT * FROM turma_disciplinas;

SELECT * FROM notas;

SELECT * FROM alunos ORDER BY nome_aluno ASC;

SELECT nome_disciplina, carga_horaria FROM disciplina WHERE carga_horaria > 40;

SELECT id_aluno, id_disciplina, nota FROM notas WHERE nota > 6 AND nota < 8;
