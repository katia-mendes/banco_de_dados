CREATE DATABASE db_farmacia_bem_estar;

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
    (1, 'Medicamentos', 'Produtos para tratamento de saúde'),
    (2, 'Cosméticos', 'Produtos de beleza e cuidados pessoais'),
    (3, 'Higiene Pessoal', 'Produtos de higiene pessoal'),
    (4, 'Vitaminas', 'Suplementos vitamínicos'),
    (5, 'Alimentos Saudáveis', 'Alimentos saudáveis e orgânicos');

INSERT INTO tb_produtos (produto_id, nome, preco, categoria_id)
VALUES
    (1, 'Paracetamol 500mg', 10.00, 1),
    (2, 'Creme Facial Anti-Idade', 45.00, 2),
    (3, 'Shampoo Anticaspa', 12.00, 3),
    (4, 'Vitamina C 1000mg', 20.00, 4),
    (5, 'Granola Orgânica', 8.00, 5),
    (6, 'Ibuprofeno 400mg', 15.00, 1),
    (7, 'Loção Hidratante Corporal', 30.00, 2),
    (8, 'Pasta de Dente Branqueadora', 6.00, 3);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT p.*, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.categoria_id;

SELECT p.*, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.categoria_id
WHERE c.nome = 'Cosméticos';
