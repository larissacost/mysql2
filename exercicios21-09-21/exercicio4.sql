CREATE DATABASE db_cidade_das_frutas;

USE db_cidade_das_frutas;

CREATE TABLE tb_categoria(
id bigint auto_increment,
tipo varchar(255),
origem varchar(255),
cultivo varchar(255),
primary key(id)
);

INSERT INTO tb_categoria (tipo,origem,cultivo) VALUES ("doce","CEAGESP","Não orgânico");
INSERT INTO tb_categoria (tipo,origem,cultivo) VALUES ("àcida","CEAGESP","Orgânico");
INSERT INTO tb_categoria (tipo,origem,cultivo) VALUES ("semiàcida","CEAGESP","Orgânico");
INSERT INTO tb_categoria (tipo,origem,cultivo) VALUES ("hídrica","CEAGESP","Não orgânico");
INSERT INTO tb_categoria (tipo,origem,cultivo) VALUES ("oleaginosas","CEAGESP","Orgânico");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id bigint auto_increment ,
nome varchar (255),
preco decimal(5,2),
quantidade varchar(7),
validade date,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

INSERT INTO tb_produto(nome,preco,quantidade,validade,categoria_id) VALUES ("Açaí",13.90,"500mg","24-09-21",1);
INSERT INTO tb_produto(nome,preco,quantidade,validade,categoria_id) VALUES ("Ameixa",6.00,"500g","22-09-21",3);
INSERT INTO tb_produto(nome,preco,quantidade,validade,categoria_id) VALUES ("Acerola",5.60,"500g","22-09-21",2);
INSERT INTO tb_produto(nome,preco,quantidade,validade,categoria_id) VALUES ("Melancia",12.00,"1Kg","26-09-21",4);
INSERT INTO tb_produto(nome,preco,quantidade,validade,categoria_id) VALUES ("Abacate",10.70,"34g","24-09-21",5);
INSERT INTO tb_produto(nome,preco,quantidade,validade,categoria_id) VALUES ("Maçã",7.00,"500g","26-09-21",1);
INSERT INTO tb_produto(nome,preco,quantidade,validade,categoria_id) VALUES ("Nozes",88.97,"200g","10-10-21",5);
INSERT INTO tb_produto(nome,preco,quantidade,validade,categoria_id) VALUES ("Melão",10.30,"1Kg","26-09-21",4);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;
SELECT * FROM tb_produto WHERE nome LIKE "%c%";

SELECT tb_produto.nome,tb_produto.preco,tb_produto.quantidade,tb_produto.validade,tb_categoria.tipo,tb_categoria.cultivo
FROM  tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id;

SELECT *FROM tb_produto WHERE categoria_id = 3;
