CREATE DATABASE db_padaria;

USE db_padaria;

CREATE TABLE tb_paes(
id bigint auto_increment,
doce varchar(255) not null,
salgado varchar(255) not null,
PRIMARY KEY (id)
);

INSERT INTO tb_paes(doce,salgado)
values("rosquinha","croassant");
INSERT INTO tb_paes(doce,salgado)
values("rocambole","petisco");
INSERT INTO tb_paes(doce,salgado)
values("sonho","frios");

SELECT*FROM tb_paes;

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal not null,
sabor varchar (255) not null,
quantidade int not null,
pao_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (pao_id) references tb_paes(id)
); 

INSERT INTO tb_produtos(nome,preco,sabor,quantidade,pao_id)
values("creme",5,"baunilha",3,1);
INSERT INTO tb_produtos(nome,preco,sabor,quantidade,pao_id)
values("carnelouca",7,"calabreza",8,2);
INSERT INTO tb_produtos(nome,preco,sabor,quantidade,pao_id)
values("carolina",9,"chocolate",10,1);

SELECT*FROM tb_produtos;

SELECT*FROM tb_produtos where quantidade < 4;
SELECT*FROM tb_produtos where quantidade >= 9;
SELECT*FROM tb_produtos where quantidade < 9 and quantidade <7;
SELECT*FROM tb_produtos where nome like "c%";

SELECT*FROM tb_produtos
INNER JOIN tb_paes
ON tb_paes.id = tb_produtos.pao_id;

