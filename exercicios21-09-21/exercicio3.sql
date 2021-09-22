CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
id bigint auto_increment,
nome_categoria varchar(255),
tipoCategoria varchar(255),
filial varchar(255),
primary key(id)
);

INSERT INTO tb_categoria (nome_categoria,tipoCategoria,filial) VALUES ("tarjado","medicamento","rua da Primitiva Vianco 510, Osasco");
INSERT INTO tb_categoria (nome_categoria,tipoCategoria,filial) VALUES ("venda livre","medicamento","rua da Primitiva Vianco 510, Osasco");
INSERT INTO tb_categoria (nome_categoria,tipoCategoria,filial) VALUES ("dermocosmético","perfumaria","rua da Primitiva Vianco 510, Osasco");
INSERT INTO tb_categoria (nome_categoria,tipoCategoria,filial) VALUES ("cuidados diários","perfumaria","rua da Primitiva Vianco 510, Osasco");
INSERT INTO tb_categoria (nome_categoria,tipoCategoria,filial) VALUES ("primeiros socorros","avulsos","rua da Primitiva Vianco 510, Osasco");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id bigint auto_increment ,
nome varchar (255),
preco decimal(5,2),
dosagem varchar(7),
marca varchar(255),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

INSERT INTO tb_produto(nome,preco,dosagem,marca,categoria_id) VALUES ("Glifage XR",7.39,"500mg","Merk",1);
INSERT INTO tb_produto(nome,preco,dosagem,marca,categoria_id) VALUES ("Qlaira",38.78,"30g","Bayer",1);
INSERT INTO tb_produto(nome,preco,dosagem,marca,categoria_id) VALUES ("Naramig",30.80,"2,5mg","GSK",1);
INSERT INTO tb_produto(nome,preco,dosagem,marca,categoria_id) VALUES ("Novalgina",17.79,"1g","Sanofi",2);
INSERT INTO tb_produto(nome,preco,dosagem,marca,categoria_id) VALUES ("Colírio Hyabak",47.19,"34g","Genom",2);
INSERT INTO tb_produto(nome,preco,dosagem,marca,categoria_id) VALUES ("Hyalu B5",95.92,"70g","La-Roche Posay",3);
INSERT INTO tb_produto(nome,preco,dosagem,marca,categoria_id) VALUES ("Anthelios Aircilium",71.92,"50g","La-Roche Posay",4);
INSERT INTO tb_produto(nome,preco,dosagem,marca,categoria_id) VALUES ("Esparadrapo",2.23,"10 Un","Needs",5);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;
SELECT * FROM tb_produto WHERE nome LIKE "%b%";

SELECT tb_produto.nome,tb_produto.preco,tb_produto.dosagem,tb_produto.marca,tb_categoria.nome_categoria,tb_categoria.tipoCategoria,tb_categoria.filial
FROM  tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id;

SELECT *FROM tb_produto WHERE categoria_id = 2;
