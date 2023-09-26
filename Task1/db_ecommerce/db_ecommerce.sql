CREATE DATABASE db_exe02ecommerce;

CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    quantidade INT NOT NULL,
    categoria VARCHAR(50)
);

insert into tb_produtos (nome, descricao,preco,quantidade,categoria) values ("camiseta","camiseta de algodao", 29.90, 100,"roupa");
insert into tb_produtos (nome, descricao,preco,quantidade,categoria) values ("camiseta","camiseta de algodao", 29.90, 200,"roupa");
insert into tb_produtos (nome, descricao,preco,quantidade,categoria) values ("tenis","tenis nike", 599.90, 100,"calcado");
insert into tb_produtos (nome, descricao,preco,quantidade,categoria) values ("calca","calca de cetim", 99.90, 100,"roupa");
insert into tb_produtos (nome, descricao,preco,quantidade,categoria) values ("livro","romance", 29.90, 80,"leitura");
insert into tb_produtos (nome, descricao,preco,quantidade,categoria) values ("bolsa"," bolsa de algodao", 79.90, 30,"acessorio");
insert into tb_produtos (nome, descricao,preco,quantidade,categoria) values ("relogio","relogio de parede", 19.90, 20,"acessorio");
insert into tb_produtos (nome, descricao,preco,quantidade,categoria) values ("notebook","notebook de alta performace", 3999.90, 20,"eletronico");

select nome, preco from tb_produtos where preco > 500;

select nome, preco from tb_produtos where preco < 500;

UPDATE tb_produtos SET preco = 39.99 WHERE id = 1;