CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

-- Cria a tabela de classes
CREATE TABLE tb_classe(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
descricao VARCHAR(255),
nivel INT
);

-- Cria a Tabela tb_personagens com 4 atributos
CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
    classe_id BIGINT,
nome VARCHAR(255) NOT NULL,
ataque INT,
defesa INT,
mana INT,
FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
 );
 
-- inserir dados na tabela de classes
INSERT INTO tb_classe (descricao, nivel) VALUES ("Fácil",1);
INSERT INTO tb_classe (descricao, nivel) VALUES ("Médio",2);
INSERT INTO tb_classe (descricao, nivel) VALUES ("Difício",3);
INSERT INTO tb_classe (descricao, nivel) VALUES ("Insano",4);
INSERT INTO tb_classe (descricao, nivel) VALUES ("God mode",5);

SELECT * FROM tb_classe;


-- inserir as 8 entradas na tabela de personagens 

INSERT INTO tb_personagens (classe_id, nome, ataque, defesa, mana) VALUES (1,"Lucas", 1000, 1500, 200);
INSERT INTO tb_personagens (classe_id, nome, ataque, defesa, mana) VALUES (2,"Megan", 1250, 2000, 100);
INSERT INTO tb_personagens (classe_id, nome, ataque, defesa, mana) VALUES (3,"Kalista", 1500, 2560, 100);
INSERT INTO tb_personagens (classe_id, nome, ataque, defesa, mana) VALUES (4,"Notorius", 3000, 2870, 250);
INSERT INTO tb_personagens (classe_id, nome, ataque, defesa, mana) VALUES (5,"Alisson", 3000, 1000, 800);
INSERT INTO tb_personagens (classe_id, nome, ataque, defesa, mana) VALUES (4,"Ulfhild", 1800, 3560, 600);
INSERT INTO tb_personagens (classe_id, nome, ataque, defesa, mana) VALUES (3,"Makoto", 2000, 1200, 300);
INSERT INTO tb_personagens (classe_id, nome, ataque, defesa, mana) VALUES (2,"Navi", 1200, 1500, 200);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT a.nome, a.ataque, a.defesa, a.mana
FROM tb_personagens a 
INNER JOIN tb_classe b ON a.classe_id = b.id;

SELECT a.nome, a.ataque, a.defesa, a.mana,
	b.id, b.descricao, b.nivel
FROM tb_personagens a 
INNER JOIN tb_classe b ON a.classe_id = b.id
WHERE b.id = 2;
