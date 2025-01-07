CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(250) NOT NULL,
    vida INT,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    id_classe BIGINT,
    FOREIGN KEY(id_classe) REFERENCES tb_classes(id)
);

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_classe VARCHAR(50) NOT NULL,
    descricao VARCHAR(300)
);

INSERT INTO tb_classes (nome_classe, descricao) VALUES
('Guerreiro', 'Classe forte e resistente, especializada em combate corpo a corpo.'),
('Mago', 'Classe que utiliza magia para atacar e defender, com alto poder mágico.'),
('Arqueiro', 'Classe ágil que ataca à distância com arcos e flechas.'),
('Paladino', 'Guerreiro sagrado que combina combate físico e magia divina.'),
('Ladino', 'Classe furtiva e astuta, especializada em ataques rápidos e furtos.');

INSERT INTO tb_personagens (nome, vida, poder_ataque, poder_defesa, id_classe) 
VALUES('Lucas', 150, 3000, 20, 1),
('Gabriel', 2000, 4000, 10, 2),
('Enzo', 12000, 25, 15, 3),
('Henrique', 160, 35, 25, 4),
('Goto', 80, 15, 10, 5),    
('Camillo', 140, 28, 22, 1), 
('João', 90, 45, 5, 2),    
('Alex', 130, 32, 20, 4);

SELECT * FROM tb_personagens WHERE poder_ataque >= 2000;
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";
SELECT * FROM tb_personagens INNER JOIN tb_classes;
SELECT * FROM tb_personagens INNER JOIN tb_classes WHERE nome_classe = "Mago";
