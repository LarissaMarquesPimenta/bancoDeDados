-- comando para criar o banco de dados
CREATE DATABASE  db_rh; 

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    idade INT,
    cargo VARCHAR(255), 
    salario DECIMAL(6,2)

);

INSERT INTO tb_colaboradores(nome, idade, cargo, salario)
VALUES ("Larissa", 23, "desenvolvedora", 8000.99);

-- comando que tras os dados da tabela 
SELECT * FROM tb_colaboradores; 

-- comando que tras os colaboradores com salario maior que 2000
SELECT * FROM tb_colaboradores WHERE salario > 2000; 

-- comando que tras os colaboradores com salario menor que dois mil
SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- alterar dados da tabela 
ALTER TABLE  tb_colaboradores 
MODIFY COLUMN salario DECIMAL (10,2); 

-- Comando que atualiza um dado da tabela tb_colaboradores de acordo com o id indicado
UPDATE tb_colaboradores
SET salario = 5001.99
WHERE id= 2;



CREATE DATABASE ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    valor DECIMAL(10,2),
    estoque INT, 
    tipo VARCHAR(255)

);

INSERT INTO tb_produtos(nome, valor, estoque, tipo)
VALUES ("God of War", 99.50, 10, "jogo");

INSERT INTO tb_produtos(nome, valor, estoque, tipo)
VALUES ("Gris", 16.99, 10, "jogo");

INSERT INTO tb_produtos(nome, valor, estoque, tipo)
VALUES ("Celeste", 25.99, 26, "jogo");

INSERT INTO tb_produtos(nome, valor, estoque, tipo)
VALUES ("Xbox 360", 990.50, 35, "console");

INSERT INTO tb_produtos(nome, valor, estoque, tipo)
VALUES ("PlayStation 5", 5300.99, 5, "console");

INSERT INTO tb_produtos(nome, valor, estoque, tipo)
VALUES ("Resident Evil 4", 455.99, 40, "jogo");

INSERT INTO tb_produtos(nome, valor, estoque, tipo)
VALUES ("Hogwarts Legacy", 259.99, 38, "jogo");

INSERT INTO tb_produtos(nome, valor, estoque, tipo)
VALUES ("The Elder Scrolls V: Skyrim", 149.99, 40, "jogo");

SELECT * FROM tb_produtos; 

SELECT * FROM tb_produtos WHERE valor > 500; 

SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos
SET estoque = 5
WHERE id = 3;



CREATE DATABASE db_alunos;

CREATE TABLE tb_alunos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    media DECIMAL(10,2),
    idade INT, 
    periodo VARCHAR(255)

);

INSERT INTO tb_alunos(nome, media, idade, periodo)
VALUES ("Maria", 7.0, 17, "noturno");

INSERT INTO tb_alunos(nome, media, idade, periodo)
VALUES ("Paula", 4.9, 16, "noturno");

INSERT INTO tb_alunos(nome, media, idade, periodo)
VALUES ("Julio", 8.7, 12, "matutino");

INSERT INTO tb_alunos(nome, media, idade, periodo)
VALUES ("Amanda", 3.9, 17, "matutino");

INSERT INTO tb_alunos(nome, media, idade, periodo)
VALUES ("Larissa", 7.2, 15, "matutino");

INSERT INTO tb_alunos(nome, media, idade, periodo)
VALUES ("Marcelo", 9.1, 15, "diurno");

INSERT INTO tb_alunos(nome, media, idade, periodo)
VALUES ("Guilherme", 6.8, 13, "diurno");

INSERT INTO tb_alunos(nome, media, idade, periodo)
VALUES ("Matheus", 5.4, 17, "noturno");

SELECT * FROM tb_alunos; 

SELECT * FROM tb_alunos WHERE media > 7; 

SELECT * FROM tb_alunos WHERE media < 7;

UPDATE tb_alunos
SET media = 7.1
WHERE id = 3;
