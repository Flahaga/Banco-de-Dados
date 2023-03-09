CREATE DATABASE db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;

CREATE TABLE tb_categoria(
id bigint auto_increment,
frutas varchar(255) not null,
verduras varchar(255) not null,
primary key(id)
);

INSERT INTO tb_categoria(frutas,verduras)
values ("vermelhas","pequenas");
INSERT INTO tb_categoria(frutas,verduras)
values ("comsemente","comcaule");
INSERT INTO tb_categoria(frutas,verduras)
values ("azedas","comcasca");

SELECT *FROM tb_categoria;


CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal not null,
quantidade varchar(255) not null,
cor varchar(255) not null,
categorias_id bigint,
primary key(id),
foreign key (categorias_id) references tb_categoria(id)
);

INSERT INTO tb_produtos(nome,preco,quantidade,cor,categorias_id)
values ("maçã", 4,7,"vermelha",1);
INSERT INTO tb_produtos(nome,preco,quantidade,cor,categorias_id)
values ("limão", 100,10,"verde",3);
INSERT INTO tb_produtos(nome,preco,quantidade,cor,categorias_id)
values ("chuchu", 3,4,"verde",3);
INSERT INTO tb_produtos(nome,preco,quantidade,cor,categorias_id)
values ("cenoura", 8,9,"laranja",2);
INSERT INTO tb_produtos(nome,preco,quantidade,cor,categorias_id)
values ("pitaya", 50,7,"vermelha",2);

SELECT*FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco >= 50 AND preco <= 150;

SELECT * FROM tb_produtos WHERE nome LIKE "c%";

SELECT * FROM tb_produtos
INNER JOIN tb_categoria
ON tb_categoria.id = tb_produtos.categorias_id;

SELECT * FROM tb_produtos
INNER JOIN tb_categoria
ON tb_categoria.id = tb_produtos.categorias_id
WHERE tb_produtos.id = 1;

SELECT * FROM tb_produtos;