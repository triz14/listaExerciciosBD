CREATE DATABASE db_rh_services;
USE db_rh_services;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(250) NOT NULL,
    cargo VARCHAR(200) NOT NULL,
    data_nascimento DATE NOT NULL,
    data_admissao DATE NOT NULL,
    salario DECIMAL(8,2),
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, cargo, data_nascimento, data_admissao, salario)
VALUES("Ana Vitória Silva", "Gerente", "1990-11-09", "2018-04-23", 6020.00);
INSERT INTO tb_colaboradores(nome, cargo, data_nascimento, data_admissao, salario)
VALUES("João Vitor Vieira", "Estágiario", "1990-11-09", "2018-04-23", 1200.30);
INSERT INTO tb_colaboradores(nome, cargo, data_nascimento, data_admissao, salario)
VALUES("Gabriely Santos", "Coordenadora", "1990-11-09", "2018-04-23", 3400.10);
INSERT INTO tb_colaboradores(nome, cargo, data_nascimento, data_admissao, salario)
VALUES("Ana Maria Aparecida Fiori", "Analista", "1990-11-09", "2018-04-23", 2600.00);
INSERT INTO tb_colaboradores(nome, cargo, data_nascimento, data_admissao, salario)
VALUES("Isabella Novais", "Gestora", "1990-11-09", "2018-04-23", 5500.70);

SELECT * FROM tb_colaboradores;
SELECT * FROM tb_colaboradores WHERE salario >= 2000;
SELECT * FROM tb_colaboradores WHERE salario <= 2000;

UPDATE tb_colaboradores SET salario = 3000.40 WHERE id = 3;