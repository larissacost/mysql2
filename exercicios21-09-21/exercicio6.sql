CREATE DATABASE db_cursoDaMinhaVida;

USE  db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
id bigint auto_increment,
formacao varchar(255),
area varchar(255),
filial varchar(255),
primary key(id)
);

INSERT INTO tb_categoria (formacao,area,filial) VALUES ("tecnólogo","Tec. da informação","São paulo");
INSERT INTO tb_categoria (formacao,area,filial) VALUES ("bacharel","Admministração","São paulo,Osasco");
INSERT INTO tb_categoria (formacao,area,filial) VALUES ("bacharel","Medicina","São paulo,Osasco");
INSERT INTO tb_categoria (formacao,area,filial) VALUES ("técnico","Tec. da informação","São paulo,Osasco");
INSERT INTO tb_categoria (formacao,area,filial) VALUES ("técnico","Publicidade e propaganda","Osasco");

SELECT * FROM tb_categoria;

CREATE TABLE tb_curso(
id bigint auto_increment ,
descricao varchar (255),
valor decimal(7,2),
duracao varchar (50),
especializacao varchar(255),
curso_id bigint,
primary key (id),
foreign key (curso_id) references tb_categoria(id)
);

INSERT INTO tb_curso(descricao,valor,duracao,especializacao,curso_id) VALUES ("desenvolvimento de sistemas de informação",25200.00,"6 semestres","Analise e desenvolvimento de sistemas",1);
INSERT INTO tb_curso(descricao,valor,duracao,especializacao,curso_id) VALUES ("estratégias e gerenciamento",23400.00,"6 semestres","Economia",2);
INSERT INTO tb_curso(descricao,valor,duracao,especializacao,curso_id) VALUES ("Manutenção e restauração da saúde",27000.00,"6 semestres","Gerontologia",3);
INSERT INTO tb_curso(descricao,valor,duracao,especializacao,curso_id) VALUES ("Manutenção e restauração da saúde",26136.00,"8 semestres","Saúde Coletiva ",3);
INSERT INTO tb_curso(descricao,valor,duracao,especializacao,curso_id) VALUES ("desenvolvimento de sistemas de internet",2800.00,"1 semestre e 1 bimestre","Informática para a Internet",4);
INSERT INTO tb_curso(descricao,valor,duracao,especializacao,curso_id) VALUES ("estratégias e gerenciamento",23400.00,"6 semestres","Gestão financeira",2);
INSERT INTO tb_curso(descricao,valor,duracao,especializacao,curso_id) VALUES ("estratégias de marketing para meios digitais ",14400.00,"4 semestres","Marketing digital",5);
INSERT INTO tb_curso(descricao,valor,duracao,especializacao,curso_id) VALUES ("estratégias e gerenciamento",23400.00,"6 semestres","Ciências contábeis",2);

SELECT * FROM tb_curso;

SELECT * FROM tb_curso WHERE valor > 50;
SELECT * FROM tb_curso WHERE valor BETWEEN 3 AND 60;
SELECT * FROM tb_curso WHERE especializacao LIKE "%j%";

SELECT tb_curso.especializacao,tb_curso.duracao,tb_curso.valor,tb_categoria.formacao,tb_categoria.area,tb_categoria.filial
FROM  tb_curso INNER JOIN tb_categoria
ON tb_curso.curso_id = tb_categoria.id;

SELECT *FROM tb_curso WHERE curso_id = 3;
