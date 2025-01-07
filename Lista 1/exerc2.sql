CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produto(
	id BIGINT AUTO_INCREMENT NOT NULL,
    nome_produto VARCHAR(300) NOT NULL,
    preco DECIMAL(6, 2) NOT NULL,
    categoria VARCHAR(100) NOT NULL,
    avaliacao DECIMAL (2, 1),
    PRIMARY KEY (id)
);

INSERT INTO tb_produto(nome_produto, preco, categoria, avaliacao)
VALUES("Secador de cabelo", 500.90, "Beleza", 4.2),
("Computador", 2500.50, "Tecnologia", 4.0),
("Osso para cachorro", 10.90, "Pets", 4.3),
("Garrafa de água", 40.90, "Acessórios para cozinha", 3.9),
("Esmalte Verde", 5.99, "Beleza", 4.8),
("Baralho", 12.00, "Jogos", 4.9),
("Esmalte Rosa", 5.80, "Beleza", 4.6),
("Esmalte preto", 6.00, "Beleza", 4.5);

SELECT * FROM tb_produto WHERE preco >= 500;
SELECT * FROM tb_produto WHERE preco < 500;

UPDATE tb_produto SET preco = 3500.90 WHERE id = 2;