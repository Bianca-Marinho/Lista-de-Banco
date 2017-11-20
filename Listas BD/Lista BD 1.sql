create database pratica05;
create table dados_multimidia (
codigo int auto_increment not null,
nome varchar(30), 
tipo varchar (20),
dados longblob,
primary key (codigo)
);

show variables like "secure_file_priv";

insert into dados_multimidia (nome, tipo, dados) values ('Bii', 'jpg', load_file("C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\Bii.jpg"));
insert into dados_multimidia (nome, tipo, dados) values('truco','jpg',load_file("C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\truco.jpg"));

select * from dados_multimidia;


select dados into outfile 'C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\Bii2.jpeg' 
from dados_multimidia 
where codigo = 6;