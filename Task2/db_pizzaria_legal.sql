CREATE DATABASE db_pizzaria_legal;
CREATE TABLE tb_categorias (
    categoria_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT
);
CREATE TABLE tb_pizzas (
    pizza_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    preco DECIMAL(8, 2) NOT NULL,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(categoria_id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
    ('Salgada', 'Pizzas salgadas tradicionais'),
    ('Doce', 'Pizzas doces deliciosas'),
    ('Vegetariana', 'Pizzas vegetarianas saudáveis'),
    ('Vegana', 'Pizzas veganas para todos'),
    ('Especial', 'Pizzas especiais da casa');

INSERT INTO tb_pizzas (pizza_id, nome, preco, categoria_id)
VALUES
    (1, 'Margherita', 40.00, 1),
    (2, 'Quatro Queijos', 45.00, 1),
    (3, 'Calabresa', 42.00, 1),
    (4, 'Chocolate', 30.00, 2),
    (5, 'Banana Caramelada', 35.00, 2),
    (6, 'Vegetariana Suprema', 50.00, 3),
    (7, 'Vegana de Pesto', 55.00, 4),
    (8, 'Especial da Casa', 70.00, 5);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT p.*, c.nome AS categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.categoria_id;

SELECT p.*, c.nome AS categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.categoria_id
WHERE c.nome = 'Doce';