CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias(
id bigint auto_increment,
pisos varchar(255) not null,
iluminacao varchar(255) not null,
primary key(id)
);

INSERT INTO tb_categorias(pisos,iluminacao)
values("porcelanato","lampada");
INSERT INTO tb_categorias(pisos,iluminacao)
values("esmaltado","fitasdeled");
INSERT INTO tb_categorias(pisos,iluminacao)
values("ducale","abajur");

SELECT*FROM tb_categorias;

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal not null,
quantidade int not null,
cor varchar(255) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id)
);

INSERT INTO tb_produtos( nome,preco,quantidade,cor,categoria_id)
values("tijolo bellacer",100,50,"branco",1);
INSERT INTO tb_produtos( nome,preco,quantidade,cor,categoria_id)
values("porcelanato",70,20,"cinza",1);
INSERT INTO tb_produtos( nome,preco,quantidade,cor,categoria_id)
values("oxford",150,30,"colorido",1);
INSERT INTO tb_produtos( nome,preco,quantidade,cor,categoria_id)
values("pendente",75,3,"bege",2);
INSERT INTO tb_produtos( nome,preco,quantidade,cor,categoria_id)
values("spot",20,5,"preto",2);

SELECT*FROM tb_produtos;

SELECT*FROM tb_produtos WHERE preco >100;
SELECT*FROM tb_produtos WHERE preco >=70 AND preco <=150;
SELECT*FROM tb_produtos WHERE nome LIKE  "p%";

SELECT * FROM tb_produtos
INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos
INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id
WHERE tb_produtos.id = 1;
