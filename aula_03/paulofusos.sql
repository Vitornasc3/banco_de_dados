CREATE DATABASE db_paulofusos;

USE db_paulofusos;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255),
quantidade bigint,
valor decimal(7,2),
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
entrega varchar(255),
PRIMARY KEY (id)
);

INSERT INTO tb_categoria(descricao, entrega)
VALUES("Ferramenta","Não"),
("Hidráulica","Não"),
("Construção","Sim"),
("Elétrica","Não");

SELECT * FROM tb_categoria;

INSERT INTO tb_produtos(nome, quantidade, valor, categoria_id)
VALUES("Chave de fenda", 120, 9.90, 1),
("Alicate", 58, 12.90, 1),
("Torneira Inox", 30, 119.90, 2),
("Lâmpada Led", 105, 15.90, 4),
("Saco de Cimento 50Kg", 320, 29.90, 3),
("Cano PVC 25mm 1 Metro", 250, 7.90, 2),
("Serrote", 32, 29.90, 1),
("Saco de gesso 40Kg", 230, 27.90, 3);

SELECT * FROM tb_produtos WHERE valor > 100;

-- Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 70,00 e R$ 150,00.

SELECT * FROM tb_produtos WHERE valor BETWEEN 70 AND 150;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.

SELECT nome, quantidade, valor, tb_categoria.descricao, tb_categoria.entrega
FROM tb_produtos INNER JOIN tb_categoria
ON categoria_id = tb_categoria.id;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias,
-- onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria hidráulica).

SELECT nome, quantidade, valor, tb_categoria.descricao, tb_categoria.entrega
FROM tb_produtos INNER JOIN tb_categoria
ON categoria_id = tb_categoria.id
WHERE categoria_id = 3;