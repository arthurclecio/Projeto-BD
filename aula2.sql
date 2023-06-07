create database dbagenda;
use dbagenda;
show tables;

create table contatos(
idcon int primary key auto_increment,
nome varchar (50) not null,
fone varchar (15) not null,
email varchar (50)
);

describe contatos;
alter table contatos change nome contato varchar(50) not null;
alter table contatos add column obs varchar(200);
alter table contatos add column fone2 varchar(15) after fone;
describe tbcontatos;
alter table contatos modify column fone2 varchar(20);
alter table contatos drop column obs;
drop table contatos;





