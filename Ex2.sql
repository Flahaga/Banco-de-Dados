CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_linhadeprodutos(
id bigint  auto_increment not null,
nome varchar(255) not null,
preco decimal not null,
qualidade varchar(255) not null,
categoria varchar(255) not null,
peso decimal not null,
PRIMARY KEY (id) 
);

INSERT INTO tb_linhadeprodutos(nome,preco,qualidade,categoria,peso)
values ("Celular",1500,"bom","eletroeletronico",1.50);

INSERT INTO tb_linhadeprodutos(nome,preco,qualidade,categoria,peso)
values ("Panela",50,"ótima","utensílio",1.0);

INSERT INTO tb_linhadeprodutos(nome,preco,qualidade,categoria,peso)
values ("Colchão",100,"ruim","utensílio",2.5);

INSERT INTO tb_linhadeprodutos(nome,preco,qualidade,categoria,peso)
values ("Máquina de lavar",2500,"excelente","eletrodoméstico",5.0);

INSERT INTO tb_linhadeprodutos(nome,preco,qualidade,categoria,peso)
values ("Chuveiro",80,"péssimo","eletrodoméstico",1.10);

INSERT INTO tb_linhadeprodutos(nome,preco,qualidade,categoria,peso)
values ("Roupa",40,"ótima","peça",0.5);

INSERT INTO tb_linhadeprodutos(nome,preco,qualidade,categoria,peso)
values ("Computador",1500,"bom","eletroeletronico",2.5);

INSERT INTO tb_linhadeprodutos(nome,preco,qualidade,categoria,peso)
values ("Cama",200,"péssima","utensilio",5.0);

INSERT INTO tb_linhadeprodutos(nome,preco,qualidade,categoria,peso)
values ("Piscina",650,"ótima","utensilio",1.0);

SELECT *FROM tb_linhadeprodutos;

SELECT * FROM tb_linhadeprodutos WHERE preco > 500;
SELECT * FROM tb_linhadeprodutos WHERE preco < 500;

  UPDATE tb_linhadeprodutos  SET qualidade ="Ruim" WHERE id =2;
  SELECT *FROM tb_linhadeprodutos;


