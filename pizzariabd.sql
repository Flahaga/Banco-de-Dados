CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas(
id bigint auto_increment,
tamanho varchar(255) not null,
sabor varchar(255) not null,
preco decimal not null,
borda varchar(255) not null,
PRIMARY KEY (id)
);

INSERT INTO tb_pizzas( tamanho,sabor,preco,borda)
values("pequena","mussarela",30,"catupiry");
INSERT INTO tb_pizzas( tamanho,sabor,preco,borda)
values("pequena","frango",45,"catupiry");
INSERT INTO tb_pizzas( tamanho,sabor,preco,borda)
values("grande","portuguesa",100,"cheddar");
INSERT INTO tb_pizzas( tamanho,sabor,preco,borda)
values("média","calabreza",60,"catupiry");

SELECT*FROM tb_pizzas;

CREATE TABLE tb_categoria(
id bigint auto_increment,
doce varchar(255) not null,
salgada varchar(255) not null,
pizza_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (pizza_id) REFERENCES tb_pizzas(id)
);

INSERT INTO tb_categoria( doce,salgada,pizza_id)
values("brigadeiro","frango",2);
INSERT INTO tb_categoria( doce,salgada,pizza_id)
values("caramelo","brócolis",3);
INSERT INTO tb_categoria( doce,salgada,pizza_id)
values("churros","carne",4);
INSERT INTO tb_categoria(doce,salgada,pizza_id)
values("docedeleite","requeijão",2);
INSERT INTO tb_categoria(doce,salgada,pizza_id)
values("ninho","feijoada",4);
INSERT INTO tb_categoria(doce,salgada,pizza_id)
values("pavê","marguerita",1);
INSERT INTO tb_categoria(doce,salgada,pizza_id)
values("arrozdoce","portuguesa",3);
INSERT INTO tb_categoria(doce,salgada,pizza_id)
values("sorvete","batatafrita",1);
INSERT INTO tb_categoria(doce,salgada,pizza_id)
values("açaí","quatroqueijos",1);


SELECT*FROM tb_categoria;

SELECT *FROM tb_pizzas WHERE preco > 45;
SELECT *FROM tb_pizzas WHERE preco >= 50 AND preco <= 100;
SELECT*FROM tb_pizzas WHERE sabor LIKE "m%";

SELECT * FROM tb_categoria
INNER JOIN tb_pizzas
ON tb_pizzas.id = tb_categoria.pizza_id;

SELECT * FROM tb_categoria
INNER JOIN tb_pizzas
ON tb_pizzas.id = tb_categoria.pizza_id
WHERE tb_pizzas.id = 1;