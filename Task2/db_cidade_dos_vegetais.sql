CREATE DATABASE db_cidade_dos_vegetais;
CREATE TABLE tb_categorias (
    categoria_id INT PRIMARY KEY,
    nome VARCHAR(50),
    descricao VARCHAR(255)
);
CREATE TABLE tb_produtos (
    produto_id INT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10, 2),
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(categoria_id)
);
INSERT INTO tb_categorias (categoria_id, nome, descricao)
VALUES
    (1, 'Frutas', 'Frutas frescas '),
    (2, 'Verduras', 'Verduras e legumes orgânicos'),
    (3, 'Carnes', 'Carnes de qualidade'),
    (4, 'Laticínios', 'Produtos lácteos naturais'),
    (5, 'Bebidas', 'Bebidas saudáveis');

INSERT INTO tb_produtos (produto_id, nome, preco, categoria_id)
VALUES
    (1, 'Maçã', 2.50, 1),
    (2, 'Alface', 1.50, 2),
    (3, 'Peito de Frango', 9.99, 3),
    (4, 'Leite', 3.00, 4),
    (5, 'Suco de Laranja', 5.50, 5),
    (6, 'Pera', 2.80, 1),
    (7, 'Tomate', 2.00, 2),
    (8, 'Costela de Porco', 12.75, 3);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT p.*, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.categoria_id;

SELECT p.*, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.categoria_id
WHERE c.nome IN ('Carnes', 'Frutas');
