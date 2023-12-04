CREATE DATABASE db_rh_hotel;

USE db_rh_hotel;

CREATE TABLE tb_colaboradores(
id bigint AUTO_INCREMENT,
nome varchar(255),
cargo varchar(255),
salario decimal(7,2),
data_admissao date,
PRIMARY KEY(id)
);

INSERT INTO tb_colaboradores(nome, cargo, salario, data_admissao)
VALUES("José Bezerra", "Recepcionista", 2300.00, "2020-11-05"),
("Claudia Soares", "Gerente", 8350.00, "2016-04-10"),
("Luciana Rodrigues", "Governanta", 2850.00, "2012-06-07"),
("Luis Paulo Pereira", "Mensageiro", 1950.00, "2023-06-04"),
("Camilla Andrade", "Auxiliar Financeiro", 3450.00, "2019-02-25");

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 8200.00 WHERE id = 2;