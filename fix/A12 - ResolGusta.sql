-- 1) Crie um banco com seu nome. Ex: db_rubem
create database db_gustavo;

use db_gustavo;

-- 2) Crie pelo menos 3 tabelas com no mínimo dois relacionamentos
create table cinema(
id_cinema int(4) primary key auto_increment,
nome_cinema varchar(15)
);

create table filmes(
id_filme int(4) primary key auto_increment,
nome_filme varchar(15),
nome_diretor varchar(45),
classificacao int (2),
repro_cinema int(4),
foreign key (repro_cinema) references cinema (id_cinema)
);

create table diretor(
id_diretor int(4) primary key auto_increment,
nome_diretor varchar(45),
diri_filme int(4),
foreign key (diri_filme) references filmes (id_filme)
);

select * from cinema;

select * from filme;

select * from diretor;

-- 3) Faça o povoamento das tabelas com no mínimo 5 tuplas por tabela. 
insert into cinema values
(default,'Bem na tela'),
(default,'Cinemark'),
(default,'Cineplex'),
(default,'Carmike'),
(default,'Flix Mix');

insert into filmes values 
(default,'O Poderoso Chefão','Francis Ford Coppola','18','4'),
(default,'O Rei Leão','Rob Minkoff','0','3'),
(default,'Forrest Gump - O Contador de Histórias','Robert Zemeckis','12','1'),
(default,'O Senhor dos Anéis - O Retorno do Rei','Peter Jackson','14','5'),
(default,'Vingadores: Ultimato','Anthony Russo','16','4');

insert into diretor values 
(default,'Francis Ford Coppola','1'),
(default,'Rob Minkoff','2'),
(default,'Robert Zemeckis','3'),
(default,'Peter Jackson','4'),
(default,'Anthony Russo','5');

-- 4) Elabore 10 necessidades que demandem INSERT, SELECT, UPDATE ou DELETE. 
-- insira um novo cinema
INSERT INTO cinema VALUES
(default, "Cine Vallorec");

-- insira um novo filme
INSERT INTO filmes VALUES
(default, "Orgulho e Preconceito", Null, "14", "6");

-- insira um novo diretor
INSERT INTO diretor VALUES
(default, "Jane Austen", "6");

-- selecione todos os diretores e seus nomes
SELECT nome_diretor FROM diretor;

-- selecione os filmes para maiores de 13 anos
SELECT nome_filme, classificacao FROM filmes
WHERE classificacao > "13";

-- selecione o filme com maior classificacao indicativa
SELECT MAX(classificacao) FROM filmes;

-- atualize a classificaçao de um filme
UPDATE filmes SET classificacao = 16 
WHERE id_filme = 4;

-- atualize o nome da tabela filmes para filme
RENAME TABLE filmes TO filme;

-- atualize um nome de um diretor
UPDATE diretor SET nome_diretor = "Joe Wright"
WHERE id_diretor = "Jane Austen";

-- atualize o nome de um filme
UPDATE filme SET nome_filme = "Senhor dos Anéis - A Sociedade do Anel"
WHERE id_filme = 4;

-- ordene os filmes por classificacao
SELECT classificacao, nome_filme FROM filme ORDER BY classificacao ASC;