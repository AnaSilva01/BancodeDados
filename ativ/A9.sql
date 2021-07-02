
-- 3) Crie o banco de dados petStop
create database petShopCristal;

-- 4) Exiba os bancos de dados existentes
show databases;

-- 5) Selecione o banco petStop para uso.
use petshopCristal;

-- 6) Crie as tabelas conforme a planilha
create table cliente (
	id_cliente int(5),
    nome varchar(45),
    telefone varchar(15),
    email varchar(45)
);

create table animal (
	id_cliente int(5),
    nome varchar(45),
    especie varchar(45),
    sexo varchar (5),
    nascimento varchar(45),
    morte varchar(45)
);

-- 7) Insira os dados conforme a planilha.
insert  into cliente 
	(id_cliente, nome, telefone, email) values
    (1, "Ana", 789, "ana@gmail.com"),
    (2, "Bruno", 790, "bruno@gmail.com"),
    (3, "Davi", 791, "davi@gmail.com"),
    (4, "Diogo", 792, "diogo@gmail.com"),
    (5, "Erick", 793, "erick@gmail.com"),
    (6, "Gabriel", 794, "gabriel@gmail.com"),
    (7, "Gustavo", 795, "gustavo@gmail.com"),
    (8, "Kayque", 796, "kayque@gmail.com"),
    (9, "Lucas", 797, "lucas@gmail.com"),
    (10, "Luiz", 798, "luiz@gmail.com"),
    (11, "Marcio", 799, "marcio@gmail.com"),
    (12, "Matheus", 800, "matheus@gmail.com"),
    (13, "Rafael", 801, "rafael@gmail.com");
    
    insert into animal
    (id_cliente, nome, especie, sexo, nascimento, morte) values
    (1, "Vênus", "girafa", "femea", "01/02/03", "não"),
    (2, "Sky", "cão", "femea", "02/03/04", "não"),
    (3, "Amora", "gato", "femea", "03/04/05", "não"),
    (4, "Lua", "galinha", "femea", "04/05/06", "não"),
    (5, "Chanel", "calopsita", "femea", "05/06/07", "não"),
    (6, "Maria", "coelho", "femea", "06/07/08", "não"),
    (7, "Princesa", "cão", "femea", "07/08/09", "não"),
    (8, "Linda", "hamister", "femea", "08/09/10", "26/10/12"),
    (9, "Wesley", "cão", "macho", "09/10/11", "não"),
    (10, "Luna", "cão", "femea", "10/11/12", "não"),
    (11, "Kalifa", "cão", "macho", "11/12/13", "não"),
    (12, "Lena", "gato", "femea", "12/12/12", "não"),
    (13, "Vilma", "gato", "femea", "13/12/19", "13/12/20");
    
    -- 8) Adiciona na tabela animal o campo quantidade_patas INT(2)
    alter table animal add quantidade_patas int(2);
    
    -- 9) Acrescente na tabela animal, depois do campo especie, o campo cor VARCHAR(10)
    alter table animal add cor varchar(10) after especie;
    
    -- 10) Exiba uma descrição da tabela animal
    describe animal;
    
    -- 11) Exiba uma descrição da tabela cliente
    describe cliente;
    
    -- 12) Altere o campo cor, para observacoes VARCHAR(20)
    alter table animal change cor observacoes varchar(20);
    
    -- 13) Na tabela cliente, altere a coluna telefone para contato 
    alter table cliente change telefone contato varchar(15);
    
    -- 14) Exiba as tabelas existentes
    show tables;
    
    -- 15) Altere o nome da tabela cliente para donos 
    rename table cliente to donos;
    
    -- 16) Na tabela animal, exclua o campo quantidade_patas 
    alter table animal drop quantidade_patas;
    
    
    
    
    
    
    
    

