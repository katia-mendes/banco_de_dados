CREATE DATABASE db_generation_game_online;
CREATE TABLE tb_classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255)
);
INSERT INTO tb_classes (nome, descricao) VALUES
('Guerreiro', 'Personagens especializados em combate corpo a corpo.'),
('Mago', 'Personagens com habilidades mágicas poderosas.'),
('Arqueiro', 'Personagens mestres no uso de arcos e flechas.'),
('Ladrão', 'Personagens especializados em furtividade e golpes sorrateiros.'),
('Cavaleiro', 'Cavaleiros habilidosos em montaria e combate montado.');

CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    nivel INT,
    poder_ataque INT,
    poder_defesa INT,
    classe_id INT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id) VALUES
('Herói', 10, 2500, 1500, 1),
('Feiticeiro', 8, 1800, 900, 2),
('Arqueira', 7, 2000, 1200, 3),
('Ladrão das Sombras', 9, 2200, 1100, 4),
('Cavaleiro Real', 11, 2800, 2000, 5),
('Mago Negro', 8, 2100, 800, 2),
('Arqueira Élfica', 7, 1900, 1300, 3),
('Guerreiro Viking', 10, 2600, 1800, 1);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT p.*, c.nome AS classe_nome FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id;

SELECT p.*, c.nome AS classe_nome FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id
WHERE c.nome = 'Arqueiro';



