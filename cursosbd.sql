CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id bigint auto_increment,
idiomas varchar(255) not null,
beleza varchar(255) not null,
primary key (id)
);

INSERT INTO tb_categorias( idiomas,beleza)
values ("ingles","cabelo");
INSERT INTO tb_categorias( idiomas,beleza)
values ("espanhol","unha");
INSERT INTO tb_categorias( idiomas,beleza)
values ("italiano","skincare");

SELECT *FROM tb_categorias;

CREATE TABLE tb_cursos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal not null,
lugar varchar (255) not null,
qualidade varchar(255) not null,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categorias(id)
);

INSERT INTO tb_cursos(nome,preco,lugar,qualidade,categoria_id)
values("English",500,"wizard","bom",1);
INSERT INTO tb_cursos(nome,preco,lugar,qualidade,categoria_id)
values("Cortes1000",600,"ikezaki","ótimo",2);
INSERT INTO tb_cursos(nome,preco,lugar,qualidade,categoria_id)
values("Aprender",1000,"victorino","excelente",1);
INSERT INTO tb_cursos(nome,preco,lugar,qualidade,categoria_id)
values("Designer",100,"bigstar","ruim",2);

SELECT*FROM tb_cursos;

SELECT*FROM tb_cursos where preco>500;
SELECT*FROM tb_cursos where preco >=600 and preco <=1000;
SELECT*FROM tb_cursos where nome like "c%";

SELECT*FROM tb_cursos
INNER JOIN tb_categorias
ON tb_categorias.id = tb_cursos.categoria_id;

SELECT*FROM tb_cursos
INNER JOIN tb_categorias
ON tb_categorias.id = tb_cursos.categoria_id
WHERE tb_cursos.id =1;