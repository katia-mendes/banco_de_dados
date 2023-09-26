CREATE DATABASE db_exe03_escola;

CREATE TABLE tb_escola (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
     turma varchar(30) not null,
    nota DECIMAL(10, 2) NOT NULL,
    idade INT NOT NULL,
    sexo VARCHAR(50) not null
);

insert into tb_escola (nome,turma, nota ,idade,sexo) values ("Katia","B", 5.00, 29,"feminino");
insert into tb_escola (nome,turma, nota ,idade,sexo) values ("Seokjin","B", 10.00, 31,"masculino");
insert into tb_escola (nome,turma, nota ,idade,sexo) values ("Yoongi","B", 9.00, 30,"masculino");
insert into tb_escola (nome,turma, nota ,idade,sexo) values ("Hoseok","B", 8.00, 29,"masculino");
insert into tb_escola (nome,turma, nota ,idade,sexo) values ("Namjoon","B", 7.00, 29,"masculino");
insert into tb_escola (nome,turma, nota ,idade,sexo) values ("Jimin","B", 10.00, 27,"masculino");
insert into tb_escola (nome,turma, nota ,idade,sexo) values ("Taehyung","B", 9.00, 27,"masculino");
insert into tb_escola (nome,turma, nota ,idade,sexo) values ("Jungkook","B", 6.00, 26,"masculino");

select nome, nota from tb_escola where nota > 7.0;
select nome, nota from tb_escola where nota  < 7.0;
UPDATE tb_escola SET nota = 9.0 WHERE id = 8;

