CREATE DATABASE db_construindo_vidas;
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
    (1, 'Ferramentas', 'Ferramentas de construção'),
    (2, 'Material Elétrico', 'Equipamentos e fios elétricos'),
    (3, 'Hidráulica', 'Produtos hidráulicos '),
    (4, 'Pintura', 'Tintas e acessórios para pintura'),
    (5, 'Madeira', 'Materiais de construção de madeira');

INSERT INTO tb_produtos (produto_id, nome, preco, categoria_id)
VALUES
    (1, 'Martelo', 22.99, 1),
    (2, 'Fio Elétrico 10m', 44.50, 2),
    (3, 'Tubo PVC 1/2 polegada', 20.75, 3),
    (4, 'Tinta Látex Branca 3.6L', 99.99, 4),
    (5, 'Viga de Madeira 2x4', 38.00, 5),
    (6, 'Parafusos (Pacote com 50)', 20.99, 1),
    (7, 'Caixa de interruptor', 15.25, 2),
    (8, 'Torneira de Banheiro', 42.00, 3);

SELECT * FROM tb_produtos WHERE preco > 100.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';
SELECT p.*, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.categoria_id;

SELECT p.*, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.categoria_id
WHERE c.nome = 'Hidráulica';

