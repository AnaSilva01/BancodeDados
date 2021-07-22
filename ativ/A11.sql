-- 1) Crie um banco.
CREATE DATABASE family;

-- 2) Selecione esse banco para uso.
USE family;

-- 3) Crie uma tabela para mãe e uma para filho.
CREATE TABLE IF NOT EXISTS mae (
	id_mae INT(5),
    nome_mae VARCHAR(40),
    PRIMARY KEY (id_mae)
);

CREATE TABLE IF NOT EXISTS filho (
	id_filho INT(5),
    nome_filho VARCHAR(40),
    mae_id_mae INT(5),
    PRIMARY KEY (id_filho),
    FOREIGN KEY (mae_id_mae) REFERENCES mae (id_mae)
);

-- 4) Insira 3 mães e 3 filhos para cada mãe.
INSERT INTO mae 
	(id_mae, nome_mae) VALUES
	(001, "Dona Cebola"),
	(002, "Dona Lina"),
	(003, "Dona Lurdinha");

INSERT INTO filho
	(id_filho, nome_filho, mae_id_mae) VALUES
	(01, "Cebolinha", 001),
    (02, "Maria Cebola", 001),
    (03, "Seu Cebola", 001),
    (04, "Magali", 002),
    (05, "Mingau", 002),
    (06, "Seu Carlito", 002),
    (07, "Cascão", 003),
    (08, "Chovinista", 003),
    (09, "Seu Antenor", 003);
    
-- 5) Com o INNER JOIN, faça uma busca por todas as mães e seus respectivos filhos.
SELECT nome_mae, nome_filho FROM mae
INNER JOIN filho ON id_mae = mae_id_mae;

-- 6) Insira 2 mães.
INSERT INTO mae 
	(id_mae, nome_mae) VALUES
	(004, "Dona Luiza"),
	(005, "Dona Cecília");

-- 7) Insira 4 filhos sem mães. 
	INSERT INTO filho
    (id_filho, nome_filho, mae_id_mae) VALUES
    (10, "Branca de Neve", NULL),
    (11, "Cinderela", NULL),
    (12, "Chapeuzinho Vermelho", NULL),
    (13, "Bela Adormecida", NULL);
    
-- 8) Faça um LEFT JOIN nas duas tabelas.
SELECT nome_mae, nome_filho FROM mae
LEFT JOIN filho ON id_mae = mae_id_mae;

SELECT nome_filho, mae_id_mae FROM filho
LEFT JOIN mae ON id_mae = mae_id_mae;

-- 9) Faça um RIGHT JOIN nas duas tabelas. 
SELECT nome_mae, nome_filho FROM mae
RIGHT JOIN filho ON id_mae = mae_id_mae;

SELECT nome_filho, mae_id_mae FROM filho
RIGHT JOIN mae ON id_mae = mae_id_mae;

-- 10) Relacione os filhos às 2 mães novas, 2 filhos para cada mãe com o UPDATE.
UPDATE filho SET mae_id_mae =  004
WHERE id_filho = 10;

UPDATE filho SET mae_id_mae = 004
WHERE id_filho = 11;

UPDATE filho SET mae_id_mae = 005
WHERE id_filho = 12;

UPDATE filho SET mae_id_mae = 005
WHERE id_filho = 13;

SELECT nome_mae, nome_filho FROM mae
INNER JOIN filho ON id_mae = mae_id_mae;

-- Atividade 11
USE family;

-- 1) Mude a mãe de um filho (UPDATE)
UPDATE filho SET mae_id_mae = 001
WHERE id_filho = 10;

-- 2) Mude o filho de uma mãe (UPDATE)
UPDATE filho SET mae_id_mae = 002
WHERE id_filho = 13;

-- 3) Apague um registro na tabela mae (DELETE)
DELETE FROM mae
WHERE nome_mae = "Dona Lina";

-- 4) Apague um registro na tabela filho (DELETE)
DELETE FROM filho
WHERE nome_filho = "Branca de Neve";

-- 5) Acrescente um campo idade na tabela mae
ALTER TABLE mae ADD mae_idade INT(2);

-- 6) Atualize as idades das mães
UPDATE mae SET mae_idade = 45
WHERE id_mae = 001;

UPDATE mae SET mae_idade = 30
WHERE id_mae = 002;

UPDATE mae SET mae_idade = 35
WHERE id_mae = 003;

UPDATE mae SET mae_idade = 25
WHERE id_mae = 004;

UPDATE mae SET mae_idade = 40
WHERE id_mae = 005;

-- 7) AVG
SELECT AVG(mae_idade) FROM mae;

-- 8) COUNT
SELECT COUNT(id_filho) FROM filho;
SELECT COUNT(id_mae) FROM mae;

-- 9) MAX
SELECT MAX(mae_idade) FROM mae;

-- 10) MIN
SELECT MIN(mae_idade) FROM mae;

-- 11) SUM
SELECT SUM(mae_idade) FROM mae;

-- 12) Faça uma busca das mães em ordem alfabética (ORDER BY)
SELECT nome_mae FROM mae
ORDER BY nome_mae ASC;

SELECT nome_mae FROM mae
ORDER BY nome_mae DESC;

SELECT nome_filho FROM filho
ORDER BY nome_filho ASC;

SELECT nome_filho FROM filho
ORDER BY nome_filho DESC;







