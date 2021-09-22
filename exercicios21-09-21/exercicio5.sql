CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
id bigint auto_increment,
departamento varchar(255),
tendencia boolean,
oferta boolean,
primary key(id)
);

INSERT INTO tb_categoria (departamento,tendencia,oferta) VALUES ("construção",false,true);
INSERT INTO tb_categoria (departamento,tendencia,oferta) VALUES ("acabamento",false,true);
INSERT INTO tb_categoria (departamento,tendencia,oferta) VALUES ("decoração",true,false);
INSERT INTO tb_categoria (departamento,tendencia,oferta) VALUES ("jardim",false,false);
INSERT INTO tb_categoria (departamento,tendencia,oferta) VALUES ("avulsos",true,false);

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id bigint auto_increment ,
nome varchar (255),
preco decimal(5,2),
quantidade varchar (255),
marca varchar(50),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

INSERT INTO tb_produto(nome,preco,quantidade,marca,categoria_id) VALUES ("Barra de apoio",119.90,"1un","Sensea",1);
INSERT INTO tb_produto(nome,preco,quantidade,marca,categoria_id) VALUES ("Chuveiro elétrico",117.40,"1un","Optima",1);
INSERT INTO tb_produto(nome,preco,quantidade,marca,categoria_id) VALUES ("cuba redonda",229.90,"1un","Lyon",1);
INSERT INTO tb_produto(nome,preco,quantidade,marca,categoria_id) VALUES ("Piso de madeira",46.90,"1Mquadrado","Caribe",2);
INSERT INTO tb_produto(nome,preco,quantidade,marca,categoria_id) VALUES ("Deck de madeira",415.00,"1un","Scrock",4);
INSERT INTO tb_produto(nome,preco,quantidade,marca,categoria_id) VALUES ("Piso cerâmico",25.90,"1Mquadrado","Artens",2);
INSERT INTO tb_produto(nome,preco,quantidade,marca,categoria_id) VALUES ("Biombo frisado",314.99,"200g","Moldurado",3);
INSERT INTO tb_produto(nome,preco,quantidade,marca,categoria_id) VALUES ("Trident Morango",4.00,"1un","Trident",5);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;
SELECT * FROM tb_produto WHERE nome LIKE "%c%";

SELECT tb_produto.nome,tb_produto.preco,tb_produto.quantidade,tb_produto.marca,tb_categoria.departamento,tb_categoria.tendencia,tb_categoria.oferta
FROM  tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id;

SELECT *FROM tb_produto WHERE categoria_id = 1;
