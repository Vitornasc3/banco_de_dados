CREATE DATABASE db_soneca_games;

USE db_soneca_games;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
categoria varchar(255),
plataforma varchar(255),
preco decimal(6,2) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_produtos(nome, categoria, plataforma, preco)
VALUES ("Devil May Cry 5", "Jogo", "PS4", 79.00),
("Dual-Sense", "acessóio", "PS5", 379.90),
("The Legend of Zelda: Tears of the Kingdon", "jogo", "Nintendo Switch", 309.00),
("Baldur's Gate", "jogo", "PC", 180.00),
("Diablo 4", "jogo", "XBOX Series X", 379.90),
("Call of Duty - Modern Warfare 3", "jogo", "PS5", 89.90),
("God of War: Ragnarok", "jogo", "PS5", 189.90),
("Headset Gamer Hyper X", "acessório", "Multiplataforma", 179.00);

SELECT * FROM tb_produtos;

SELECT id, nome, categoria, plataforma, CONCAT('R$ ', FORMAT(preco, 2, 'pt-BR')) AS preço FROM tb_produtos WHERE preco > 180.00;

SELECT id, nome, categoria, plataforma, CONCAT('R$ ', FORMAT(preco, 2, 'pt-BR')) AS preço FROM tb_produtos WHERE preco <= 180.00;

UPDATE tb_produtos SET categoria = "acessório" WHERE id = 2;