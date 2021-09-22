CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint auto_increment,
tipo varchar(255),
vigorBase bigint,
instrumento varchar(255),
primary key(id)
);

INSERT INTO tb_classes (tipo,vigorBase,instrumento) VALUES ("Guerreiro",1000,"Espada e escudo");
INSERT INTO tb_classes (tipo,vigorBase,instrumento) VALUES ("Mago",2000,"Cajado e magia");
INSERT INTO tb_classes (tipo,vigorBase,instrumento) VALUES ("Ladrão",800,"Adaga e ganchos");
INSERT INTO tb_classes (tipo,vigorBase,instrumento) VALUES ("Alquimista",2000,"Espada curta e poções");
INSERT INTO tb_classes (tipo,vigorBase,instrumento) VALUES ("Paladino",3000,"Espada e proeza mágica");

SELECT * FROM tb_classes;

CREATE TABLE tb_personagem(
id bigint auto_increment ,
nome varchar (255),
ataque bigint,
defesa bigint,
vigor bigint,
classes_id bigint,
primary key (id),
foreign key (classes_id) references tb_classes(id)
);

INSERT INTO tb_personagem(nome,ataque,defesa,vigor,classes_id) VALUES (" 'Pippin' Peregrin Tûk",1500,1000,2000,1);
INSERT INTO tb_personagem(nome,ataque,defesa,vigor,classes_id) VALUES ("Meriadoc 'Merry' Brandybuck",1000,1500,2000,1);
INSERT INTO tb_personagem(nome,ataque,defesa,vigor,classes_id) VALUES ("Éowyn",2000,2000,2000,1);
INSERT INTO tb_personagem(nome,ataque,defesa,vigor,classes_id) VALUES ("Celebrían",2500,1000,900,2);
INSERT INTO tb_personagem(nome,ataque,defesa,vigor,classes_id) VALUES ("Bilbo Baggins",600,600,2000,3);
INSERT INTO tb_personagem(nome,ataque,defesa,vigor,classes_id) VALUES ("Galadriel",3000,2000,2500,4);
INSERT INTO tb_personagem(nome,ataque,defesa,vigor,classes_id) VALUES ("Gollum",800,400,1000,3);
INSERT INTO tb_personagem(nome,ataque,defesa,vigor,classes_id) VALUES ("Samwise Gamgee",3000,2000,1500,5);

SELECT * FROM tb_personagem;

SELECT * FROM tb_personagem WHERE ataque > 2000;
SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagem WHERE nome LIKE "%c%";

SELECT tb_personagem.nome,tb_personagem.ataque,tb_personagem.defesa,tb_personagem.vigor,tb_classes.tipo,tb_classes.instrumento
FROM tb_personagem INNER JOIN tb_classes
ON tb_personagem.classes_id = tb_classes.id;

SELECT *FROM tb_personagem WHERE classes_id = 5;
