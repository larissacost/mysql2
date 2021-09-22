CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id bigint auto_increment,
distribuidor varchar(255),
localidade varchar(255),
tipo varchar(255),
primary key(id)
);

INSERT INTO tb_categoria (distribuidor,localidade,tipo) VALUES ("Domino's","Av. Santo Antônio 1578","doce");
INSERT INTO tb_categoria (distribuidor,localidade,tipo) VALUES ("Domino's","Av. Santo Antônio 1578","tradicional");
INSERT INTO tb_categoria (distribuidor,localidade,tipo) VALUES ("Domino's","Av. Santo Antônio 1578","vegana");
INSERT INTO tb_categoria (distribuidor,localidade,tipo) VALUES ("Domino's","Av. Santo Antônio 1578","especial da casa");
INSERT INTO tb_categoria (distribuidor,localidade,tipo) VALUES ("Domino's","Av. Santo Antônio 1578","promoção");

SELECT * FROM tb_categoria;

CREATE TABLE tb_pizza(
id bigint auto_increment ,
nome varchar (255),
preco decimal(4,2),
tamanho varchar(7),
massa varchar(6),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

INSERT INTO tb_pizza(nome,preco,tamanho,massa,categoria_id) VALUES ("Napolitana",69.99,"grande","grossa",2);
INSERT INTO tb_pizza(nome,preco,tamanho,massa,categoria_id) VALUES ("Calabresa",39.99,"grande","grossa",5);
INSERT INTO tb_pizza(nome,preco,tamanho,massa,categoria_id) VALUES ("Marguerita",39.99,"grande","grossa",5);
INSERT INTO tb_pizza(nome,preco,tamanho,massa,categoria_id) VALUES ("Dois queijos garlic",69.99,"grande","fina",4);
INSERT INTO tb_pizza(nome,preco,tamanho,massa,categoria_id) VALUES ("Pepperoni & requeijão ",69.99,"grande","fina",4);
INSERT INTO tb_pizza(nome,preco,tamanho,massa,categoria_id) VALUES ("Veganinha",78.99,"grande","fina",3);
INSERT INTO tb_pizza(nome,preco,tamanho,massa,categoria_id) VALUES ("Brigadeiro",72.99,"grande","fina",1);
INSERT INTO tb_pizza(nome,preco,tamanho,massa,categoria_id) VALUES ("M&M",34.99,"broto","fina",1);

SELECT * FROM tb_pizza;

SELECT * FROM tb_pizza WHERE preco > 45;
SELECT * FROM tb_pizza WHERE preco BETWEEN 29 AND 60;
SELECT * FROM tb_pizza WHERE nome LIKE "%c%";

SELECT tb_pizza.nome,tb_pizza.preco,tb_pizza.tamanho,tb_pizza.massa,tb_categoria.tipo,tb_categoria.distribuidor,tb_categoria.localidade
FROM  tb_pizza INNER JOIN tb_categoria
ON tb_pizza.categoria_id = tb_categoria.id;

SELECT *FROM tb_pizza WHERE categoria_id = 4;
