CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_aluno(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
nota decimal not null,
qualidade varchar(255) not null,
sexo varchar(255) not null,
PRIMARY KEY (id)
);

INSERT INTO  tb_aluno(nome, idade, nota,qualidade,sexo)
values("Flávia",20,8,"bom","feminino");

INSERT INTO  tb_aluno(nome, idade, nota,qualidade,sexo)
values("Juliana",15,7,"ruim","feminino");

INSERT INTO  tb_aluno(nome, idade, nota,qualidade,sexo)
values("João",13,5,"ruim","masculino");

INSERT INTO  tb_aluno(nome, idade, nota,qualidade,sexo)
values("Renato",18,10,"ótimo","masculino");

INSERT INTO  tb_aluno(nome, idade, nota,qualidade,sexo)
values("Henrique",14,9,"bom","masculino");

INSERT INTO  tb_aluno(nome, idade, nota,qualidade,sexo)
values("Ingrid",16,7,"bom","feminino");

INSERT INTO  tb_aluno(nome, idade, nota,qualidade,sexo)
values("Igor",25,2,"péssimo","masculino");

INSERT INTO  tb_aluno(nome, idade, nota,qualidade,sexo)
values("Laís",11,8,"bom","feminino");

SELECT * FROM tb_aluno;

SELECT * FROM tb_aluno WHERE nota >7;
SELECT * FROM tb_aluno WHERE nota <7;

UPDATE tb_aluno SET nota =9 WHERE id =7;
SELECT * FROM tb_aluno;