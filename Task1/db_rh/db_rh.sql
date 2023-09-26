CREATE DATABASE db_exe01_rh;

CREATE TABLE tb_colaboradores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo varchar(30) not null,
    salario DECIMAL(10, 2) NOT NULL,
    idade INT NOT NULL,
    sexo VARCHAR(50) not null
);

insert into tb_colaboradores (nome, cargo,salario,idade,sexo) values ("Seokjin","Ceo", 10000.00, 31,"masculino");
insert into tb_colaboradores (nome, cargo, salario,idade,sexo) values ("Yoongi","produtor",90000.00, 30,"masculino");
insert into tb_colaboradores (nome, cargo,salario,idade,sexo) values ("Hoseok","coreografo", 80000.00,29,"masculino");
insert into tb_colaboradores (nome, cargo,salario,idade,sexo) values ("Namjoon","produtor", 90000.00,29,"masculino");
insert into tb_colaboradores (nome, cargo,salario,idade,sexo) values ("Jimin","coreografo", 80000.00,27,"masculino");
insert into tb_colaboradores (nome, cargo,salario,idade,sexo) values ("Taehyung","produtor", 90000.00,27,"masculino");
insert into tb_colaboradores (nome, cargo,salario,idade,sexo) values ("Jungkook","coreografo", 80000.00,26,"masculino");

select nome, salario from tb_colaboradores where salario > 2000;
select nome, salario from tb_colaboradores where salario < 2000;

UPDATE tb_colaboradores SET salario = 90000.00 WHERE id = 1;
