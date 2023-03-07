CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
id bigint auto_increment,
nome varchar(255) not null,
cargo varchar(255) not null,
idade int ,
salario decimal not null,
cpf int,
PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome,cargo,idade,salario,cpf)
values ("Denise", "gerente",40,3000,450034);
INSERT INTO tb_colaboradores(nome,cargo,idade,salario,cpf)
values ("Henrique", "diretor",50,20000,850035);
INSERT INTO tb_colaboradores(nome,cargo,idade,salario,cpf)
values ("Julia", "atendente",30,1500,750634);
INSERT INTO tb_colaboradores(nome,cargo,idade,salario,cpf)
values ("Cleber", "faxineiro",26,1200,150094);
INSERT INTO tb_colaboradores(nome,cargo,idade,salario,cpf)
values ("Bia", "desenvolvedora",36,5000,550334);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;
UPDATE tb_colaboradores SET cargo = "recepcionista" WHERE id = 1;
SELECT * FROM tb_colaboradores WHERE id = 1;


