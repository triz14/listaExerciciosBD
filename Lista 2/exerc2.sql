CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(250) NOT NULL,
    descricao VARCHAR(300) NOT NULL
);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(250) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    tamanho VARCHAR(30) NOT NULL,
    ingredientes VARCHAR(300) NOT NULL,
    id_categoria BIGINT,
    FOREIGN KEY(id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) 
VALUES('Tradicional', 'Categorias de pizzas clássicas e tradicionais'),
('Vegetariana', 'Categorias de pizzas com ingredientes vegetarianos'),
('Gourmet', 'Categorias de pizzas com ingredientes diferenciados e exclusivos'),
('Especial', 'Categorias de pizzas com sabores e combinações especiais'),
('Infantil', 'Categorias de pizzas com apelo e ingredientes para o público infantil');

INSERT INTO tb_pizzas (nome, preco, tamanho, ingredientes, id_categoria) 
VALUES('Margherita', 29.90, 'Média', 'Molho de tomate, queijo mozzarella, folhas de manjericão', 1),
('Calabresa', 35.00, 'Grande', 'Molho de tomate, queijo mozzarella, calabresa, cebola', 1),
('Quatro Queijos', 40.00, 'Grande', 'Molho de tomate, queijo mozzarella, gorgonzola, provolone, parmesão', 1),
('Vegetariana', 32.50, 'Média', 'Molho de tomate, queijo mozzarella, berinjela, abobrinha, champignon', 2),
('Frango com Catupiry', 38.00, 'Grande', 'Molho de tomate, queijo mozzarella, frango desfiado, catupiry', 3),
('Pepperoni Gourmet', 45.00, 'Grande', 'Molho de tomate, queijo mozzarella, pepperoni, rúcula, parmesão ralado', 3),
('Pizza Infantil', 25.00, 'Pequena', 'Molho de tomate, queijo mozzarella, milho, ervilha, presunto', 5),
('Especial da Casa', 50.00, 'Grande', 'Molho de tomate, queijo mozzarella, salame, bacon, champignon, azeitona', 4);

SELECT * FROM tb_pizzas WHERE preco >= 45;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";
SELECT * FROM tb_pizzas INNER JOIN tb_categorias;
SELECT * FROM tb_pizzas INNER JOIN tb_categorias WHERE tb_categorias.nome = "Especial";