CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categoria(
id bigint auto_increment,
beleza varchar(255) not null,
remedios varchar(255) not null,
primary key(id)
);

INSERT INTO tb_categoria( beleza,remedios)
values ("estética"," dores");
INSERT INTO tb_categoria( beleza,remedios)
values ("cabelo","febre");
INSERT INTO tb_categoria( beleza,remedios)
values ("unha","digestão");
INSERT INTO tb_categoria( beleza,remedios)
values ("rosto","gripe");
INSERT INTO tb_categoria( beleza,remedios)
values ("higiene","pessãoalta");

SELECT*FROM tb_categoria;


CREATE TABLE tb_produtos(
id bigint auto_increment,
preco decimal not null,
nome varchar(255) not null,
quantidade varchar(255) not null,
avaliacao int not null,
categorias_id bigint,
primary key(id),
foreign key (categorias_id) references tb_categoria(id)

);
INSERT INTO tb_produtos ( preco,nome,quantidade,avaliacao,categorias_id)
values(50,"piroxicam",24,4,3);
INSERT INTO tb_produtos ( preco,nome,quantidade,avaliacao,categorias_id)
values(5,"dorflex",6,5,1);
INSERT INTO tb_produtos ( preco,nome,quantidade,avaliacao,categorias_id)
values(60,"liftim",2,3,4);
INSERT INTO tb_produtos ( preco,nome,quantidade,avaliacao,categorias_id)
values(10,"absorvente",4,5,5);
INSERT INTO tb_produtos ( preco,nome,quantidade,avaliacao,categorias_id)
values(20,"cremedepentear",1,4,2);
INSERT INTO tb_produtos ( preco,nome,quantidade,avaliacao,categorias_id)
values(18,"dipirona",7,5,2);

SELECT*FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco >= 5 AND preco <= 60;

SELECT * FROM tb_produtos WHERE nome LIKE "c%";

SELECT * FROM tb_produtos
INNER JOIN tb_categoria
ON tb_categoria.id = tb_produtos.categorias_id;

SELECT * FROM tb_produtos
INNER JOIN tb_categoria
ON tb_categoria.id = tb_produtos.categorias_id
WHERE tb_produtos.id = 2;

SELECT * FROM tb_produtos;