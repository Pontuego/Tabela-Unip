-- Criar a base de dados UNIP 

CREATE DATABASE UNIP; 

-- Selecionar a base de dados UNIP 

USE UNIP; 

-- Criar a tabela usuarios e seus respectivos registros 

CREATE TABLE usuarios ( 

cd_usuario INT(6), 

nm_nome VARCHAR(30), 

nm_sobrenome VARCHAR(30), 

ds_email VARCHAR(50), 

dt_criacao DATE 

); 

-- Inserindo registros na tabela usuarios 

INSERT INTO usuarios values ('1', 'Astrogildo', 'Espaço', 'astro@gildo.com.br', STR_TO_DATE('1-

01-2019', '%d-%m-%Y')); 

INSERT INTO usuarios values ('2', 'Crisnatágoras', 'Silveira', 'cris@gmail.com.br', 

STR_TO_DATE('2-01-2020', '%d-%m-%Y')); 

INSERT INTO usuarios values ('3', 'Netanias', 'Gates', 'netanias@hotmail.com.br', STR_TO_DATE('1-

02-2020', '%d-%m-%Y')); 

INSERT INTO usuarios values ('4', 'Netuno', 'Zuckerberg', 'netu@gmail.com', STR_TO_DATE('1-03-

2020', '%d-%m-%Y')); 

INSERT INTO usuarios values ('5', 'Zoroastro', 'Trump', 'zoro@outlook.com.br', CURDATE()); 

-- Descrever o modelo de dados da tabela usuarios 

DESCRIBE usuarios; 

-- Selecionar todos os registros da tabela usuarios 

SELECT * FROM usuarios;

-- Selecionar todos os registros da tabela usuarios que atendem determinada condição 

SELECT * FROM usuarios 

WHERE 

cd_usuario = 1; 

-- Selecionar todos os registros da tabela usuarios que atendem um grupo de condições 

SELECT * FROM usuarios 

WHERE 

nm_nome = 'Netanias' AND 

nm_sobrenome = 'Gates'; 

-- Selecionar somente alguns campos da tabela usuarios 

SELECT cd_usuario, nm_nome, dt_criacao FROM usuarios; 

-- Selecionar somente alguns campos da tabela usuarios utilizando um ALIAS para a tabela 

SELECT u.cd_usuario, u.nm_nome, u.dt_criacao FROM usuarios u 

WHERE 

u.nm_nome = 'Astrogildo' AND 

u.nm_sobrenome = 'Espaço'; 

