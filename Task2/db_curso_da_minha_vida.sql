CREATE DATABASE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    categoria_id INT PRIMARY KEY,
    nome VARCHAR(50),
    descricao VARCHAR(255)
);

CREATE TABLE tb_cursos (
    curso_id INT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10, 2),
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(categoria_id)
);

INSERT INTO tb_categorias (categoria_id, nome, descricao)
VALUES
    (1, 'Programação', 'Cursos de programação'),
    (2, 'Marketing Digital', 'Cursos de marketing'),
    (3, 'Design Gráfico', 'Cursos de design'),
    (4, 'Finanças Pessoais', 'Cursos de finanças e investimentos'),
    (5, 'Idiomas', 'Cursos de idiomas')
    
INSERT INTO tb_cursos (curso_id, nome, preco, categoria_id)
VALUES
    (1, 'Curso de Desenvolvimento Web', 999.99, 1),
    (2, 'Curso de Marketing', 849.00, 2),
    (3, 'Curso de Photoshop', 799.50, 3),
    (4, 'Curso de Planejamento Financeiro', 899.00, 4),
    (5, 'Curso de Inglês', 999.99, 5),
    (6, 'Curso de Java para Iniciantes', 1119.99, 1),
    (7, 'Curso de  Javascript', 1299.00, 2),
    (8, 'Curso de Desenho', 699.99, 3)
    
SELECT * FROM tb_cursos WHERE preco > 500.00;
SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;
SELECT * FROM tb_cursos WHERE nome LIKE '%J%';

SELECT c.*, ca.nome AS categoria
FROM tb_cursos c
INNER JOIN tb_categorias ca ON c.categoria_id = ca.categoria_id;

SELECT c.*, ca.nome AS categoria
FROM tb_cursos c
INNER JOIN tb_categorias ca ON c.categoria_id = ca.categoria_id
WHERE ca.nome = 'Programação';
