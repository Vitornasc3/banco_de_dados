CREATE DATABASE db_escola;

Use db_escola;

CREATE TABLE tb_alunos(
matricula bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
sexo char,
nota_final decimal(3,1) NOT NULL,
serie int NOT NULL,
PRIMARY KEY(matricula)
);

INSERT INTO tb_alunos(nome, sexo, nota_final, serie)
VALUES("Maria Lobo", "F", 8.5, 9),
("Luiza Kormann", "F", 9.5, 9),
("Sthefany Sousa", "F", 8.0, 8),
("Vitor Ferreira", "M", 6.5, 7),
("Rafael Queiroz", "M", 10, 9),
("Daniel Gonzaga", "M", 6, 6),
("Anderson Marques", "M", 5.5, 7),
("Roberta Rodrigues", "F", 9.5, 9);

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE nota_final > 7;

SELECT * FROM tb_alunos WHERE nota_final < 7;

UPDATE tb_alunos SET nota_final = 7.5 WHERE matricula = 6;