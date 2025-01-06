CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_alunos(
	id BIGINT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(260) NOT NULL,
    data_nascimento DATE NOT NULL,
    serie VARCHAR(30) NOT NULL,
    media_final DECIMAL(2, 1),
    PRIMARY KEY (id)
);

INSERT INTO tb_alunos(nome, data_nascimento, serie, media_final)
VALUES("Ana Silva", "2008-05-12", "9ª série", 8.5),
("João Santos", "2009-09-23", "8ª série", 7.0),
("Maria Oliveira", "2007-03-11", "1ª série ensino médio", 9.0),
("Pedro Almeida", "2006-11-15", "2ª série ensino médio", 6.5),
("Luiza Costa", "2008-02-18", "9ª série", 6.0),
("Carlos Perreira", "2009-09-05", "8ª série", 7.8),
("Fernanda Torres", "2008-01-25", "9ª série", 9.2),
("Ricardo Gomes", "2006-09-28", "1ª série ensino médio", 6.8);

SELECT * FROM tb_alunos WHERE media_final >= 7;
SELECT * FROM tb_alunos WHERE media_final < 7;

UPDATE tb_alunos SET media_final = 7.0 WHERE id = 6;