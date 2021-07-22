CREATE DATABASE computar;

USE computar;

CREATE TABLE curso (
		codigo_curso INT(5),
        curso_nome VARCHAR(10),
        turno_curso VARCHAR(5),
        carga_horaria INT(10),
        data_inicio DATE,
        data_termino DATE,
        observacoes VARCHAR(50)
);

CREATE TABLE aluno (
	codigo_aluno INT(5),
    nome_aluno VARCHAR(20),
    endereco_aluno VARCHAR(45),
    telefone_aluno VARCHAR(20),
    observacoes VARCHAR(50)
);

CREATE TABLE instrutor (
	codigo_instrutor INT(5),
    nome_instrutor VARCHAR(20),
    endereco_instrutor VARCHAR(45),
    telefone_instrutor VARCHAR(20),
    curso_instrutor VARCHAR(10),
    observacoes VARCHAR(50)
);

INSERT INTO curso
(codigo_curso, curso_nome, turno_curso, carga_horaria, data_inicio, data_termino, observacoes) VALUES
(01, "Lógica de Programação", "Tarde", 400, "2021-07-21", "2021-08-30", NULL),
(02, "Banco de Dados", "Manhã", 200, "2021-03-15", "2021-04-15", NULL),
(03, "Front-End", "Noite", 655, "2021-05-13", "2021-11-30", NULL),
(04, "Back-End", "Manhã", 600, "2021-07-21", "2021-08-30", NULL),
(05, "React", "Noite", 100, "2021-07-22", "2021-09-30", NULL);