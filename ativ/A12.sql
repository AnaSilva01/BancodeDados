CREATE DATABASE db_AnaSilva;

USE db_AnaSilva;

CREATE TABLE livraria (
	nome_livraria VARCHAR(40),
    preco_livraria INT(10),
    PRIMARY KEY (nome_livraria)
);

CREATE TABLE livro (
	id_livro INT(3),
    nome_livro VARCHAR(40),
    livraria_nome_livraria VARCHAR (40),
    PRIMARY KEY (id_livro),
    FOREIGN KEY (livraria_nome_livraria) REFERENCES livraria (nome_livraria)
);

CREATE TABLE autor (
	nome_autor VARCHAR(40),
    idade_autor INT(3),
    livro_id_livro INT(3),
    PRIMARY KEY (nome_autor),
    FOREIGN KEY (livro_id_livro) REFERENCES livro (id_livro)
);

INSERT INTO livraria 
(nome_livraria, preco_livraria) VALUES
("Leitura", 35),
("Saraiva", 20),
("Amazon", 10),
("Clube do Livro", 40),
("Boa Leitura", 18);

INSERT INTO livro
(id_livro, nome_livro, livraria_nome_livraria) VALUES
(001, "Mais Esperto que o Diabo", "Leitura"),
(002, "Do Mil ao Milhão", "Clube do Livro"),
(003, "O Homem mais Rico da Babilônia", "Amazon"),
(004, "O Poder do Hábito", "Boa Leitura"),
(005, "Pai Rico, Pai Pobre", "Saraiva");

INSERT INTO autor
(nome_autor, idade_autor, livro_id_livro) VALUES
("Napoleon Hill", 99, 001),
("Thiago Nigro", 40, 002),
("George S. Clason", 80, 003),
("Charles Duhigg", 20, 004),
("Robert Kiyosaki e Sharon Lechter", 62, 005);

-- 1) Na tabela autor insira JANE AUSTEN.
INSERT INTO autor
(nome_autor, idade_autor, livro_id_livro) VALUES
("Jane Austen", "41 anos",NULL);

-- 2) Na tabela livraria mude o preço da Saraiva.
UPDATE livraria SET preco_livraria = 80
WHERE nome_livraria = "Saraiva";

-- 3) Coloque em os livros e os autores em ordem crescente.
SELECT nome_livro FROM livro
ORDER BY nome_livro ASC;

SELECT nome_autor FROM autor
ORDER BY nome_autor ASC;

-- 4) Relacione a tabela livro e autor.
SELECT nome_autor, nome_livro FROM autor
INNER JOIN livro ON id_livro = livro_id_livro;

-- 5) Some os preços de todos os livros.
SELECT SUM(preco_livraria) FROM livraria;

-- 6) Mostre o autor mais novo.
SELECT MIN(idade_autor) FROM autor;

-- 7) Relacione a tabela livro com a livraria
SELECT nome_livro, nome_livraria FROM livraria
INNER JOIN livro ON livraria_nome_livraria = nome_livraria;

-- 8) Delete a livraria Leitura
DELETE FROM livraria
WHERE nome_livraria = "Leitura";

-- 9) Qual o livro mais caro?
SELECT MAX(preco_livraria), nome_livro FROM livraria
INNER JOIN livro ON livraria_nome_livraria = nome_livraria;

-- 10) Quais livros custam menos de 20 reais?
SELECT COUNT(preco_livraria) < 20 FROM livraria;



