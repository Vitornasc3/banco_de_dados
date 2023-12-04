-- Criar um banco de dados
CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int,
data_validade date,
preco decimal NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("tomate", 100, "2023-12-20", 8.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("jabuticaba", 200, "2023-12-25", 45.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("maçã", 100, "2023-12-18", 11.00),
("laranja", 100, "2023-12-10", 15.00),
("banana", 100, "2023-12-15", 11.90),
("uva", 100, "2023-12-09", 30.00),
("melancia", 100, "2023-12-23", 20.00);

SELECT * FROM tb_produtos;

-- 0000.00 formato
ALTER TABLE tb_produtos MODIFY preco decimal(6,2);

DELETE FROM tb_produtos WHERE id = 3;

UPDATE tb_produtos SET valor = 11.90 WHERE id = 4;

-- set 1 para on e 0 para off
SET SQL_SAFE_UPDATES = 1;

ALTER TABLE tb_produtos ADD descricao varchar(255);

ALTER TABLE tb_produtos DROP descricao;

ALTER TABLE tb_produtos MODIFY valor decimal(6,2);

SELECT nome, valor FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id=1;

SELECT * FROM tb_produtos WHERE valor > 10.00;

SELECT nome, quantidade, valor FROM tb_produtos WHERE valor < 15;

SELECT * FROM tb_produtos WHERE valor > 10 AND valor < 25;

SELECT * FROM tb_produtos WHERE NOT id = 1;

SELECT * FROM tb_produtos WHERE nome = "maca";

SELECT nome, CONCAT('R$ ', FORMAT(valor, 2, 'pt-BR')) AS preço FROM tb_produtos;

SELECT nome, DATE_FORMAT(data_validade, '%d/%m/%Y') AS data_validade FROM tb_produtos;

SELECT @@collation_database;
