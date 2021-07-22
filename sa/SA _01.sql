CREATE DATABASE Clinica_MaisVida;

SHOW DATABASES;

USE Clinica_MaisVida;

CREATE TABLE paciente (
id_paciente INT (5),
nome VARCHAR (50),
endereco VARCHAR (50),
bairro VARCHAR (40),
cidade VARCHAR (40),
estado VARCHAR (2),
cep VARCHAR (9),
nascimento DATE,
PRIMARY KEY (id_paciente) 
);

INSERT INTO paciente
(id_paciente, nome, endereco, bairro, cidade, estado, cep, nascimento) VALUES
(001, "Mônica", "Rua Vinte", "Dentusa", "Contagem", "MG", 12345, "1964-10-10"),
(002, "Magali", "Rua Melancia", "Comilona", "Curitiba", "PR", 67890, "1999-03-25"),
(003, "Cascão", "Rua Chovinista", "Sujo", "Campinas", "SP", 78945, "1981-08-30"),
(004, "Cebolinha", "Rua Floquinho", "Planos", "Belo Horizonte", "MG", 25876, "1993-01-09"),
(005, "Denise", "Rua Fofoca", "Celebridade", "São Paulo", "SP", 21478, "1971-12-26"),
(006, "Penadinho", "Rua das Almas", "Cemitério", "Vila Velha", "ES", 36541, "1921-12-12"),
(007, "Deyvidy", "Rua São Paulo", "Urca", "Belo Horizonte", "MG", 77777, "1992-09-19"),
(008, "Paula", "Rua Mariana", "Bonfim", "São Paulo", "SP", 33333, "1998-05-26"),
(009, "Marina", "Rua da Arte", "Criatividade", "Porto Alegre", "RS", 12345, "1964-10-10"),
(010, "Paola", "Rua Usurpadora", "SBT", "México", "SP", 458710, "1997-07-25");

SELECT id_paciente, nome FROM paciente 
WHERE estado = "MG";

SELECT id_paciente, nome FROM paciente
WHERE estado = "SP";

SELECT id_paciente, nome FROM paciente
WHERE nome LIKE "P%";

SELECT nome, cidade FROM paciente
WHERE cidade = "Contagem" OR estado = "MG";

SELECT nome, nascimento FROM paciente
WHERE nascimento < "1976-01-20";

ALTER TABLE paciente CHANGE nascimento DT_NASC DATE;

DELETE FROM paciente
WHERE estado = "SP";















