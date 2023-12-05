CREATE DATABASE db_eternity_realm;

USE db_eternity_realm;

CREATE TABLE tb_class(
id bigint AUTO_INCREMENT,
description varchar(255) NOT NULL,
weapon varchar(255) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE tb_character(
id bigint AUTO_INCREMENT,
level bigint NOT NULL,
name varchar(255) NOT NULL,
attack bigint NOT NULL,
defense bigint NOT NULL,
class_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (class_id) REFERENCES tb_class(id)
);

INSERT INTO tb_class(description, weapon)
VALUES ("Mage", "Staff"),
("Knight", "Sword/Axe"),
("Archer","Bow"),
("Assassin","Dagger"),
("Priest", "Rod");

SELECT * FROM tb_class;

INSERT INTO tb_character(level, name, attack, defense, class_id)
VALUES(15, "Nico", 1500, 2000, 5),
(70, "Kirully", 18500, 5000, 3),
(85, "Lockhart", 16000, 13000, 2),
(38, "Zefirus", 8550, 1500, 4),
(101, "Gomdrop", 2500, 23000, 5),
(67, "Buthers", 13500, 1100, 1),
(68, "Tilion", 13580, 4200, 2),
(9, "PKU", 1320, 150, 2);

SELECT * FROM tb_character;

SELECT * FROM tb_character WHERE attack > 2000;

SELECT * FROM tb_character WHERE defense BETWEEN 1000 AND 2000;

SELECT * FROM tb_character WHERE name LIKE "%c%";

SELECT level, name, attack, defense, tb_class.description, tb_class.weapon
FROM tb_character INNER JOIN tb_class
ON class_id = tb_class.id;

SELECT level, name, attack, defense, tb_class.description
FROM tb_character INNER JOIN tb_class
ON class_id = tb_class.id
WHERE tb_class.id = 5;

