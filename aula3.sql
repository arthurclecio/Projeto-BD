use dbagenda;

create table contatos(
  idcon int primary key auto_increment,
  nome varchar(50) not null,
  fone varchar(15) not null,
  email varchar(50)
);

insert into contatos(nome,fone,email)values('José de Assis','99999-1234','ze@email.com');
insert into contatos(nome,fone,email)values('Bill Gates','88888-1234','bill@email.com');
insert into contatos(nome,fone,email)values('Linus','99999-4321','tux@email.com');
insert into contatos(nome,fone,email)values('Bruna Marquezine','3333-3333','bruna@email.com');
insert into contatos(nome,fone)values('Bruce Dickinson','6666-6666');
insert into contatos(nome,fone,email)values('Tony Stark','5555-5555','ironman@email.com');

select * from contatos;

-- selecionando registros de acordo com um critério
select * from contatos where idcon = 1;
select * from contatos where nome = 'Bill Gates';
select * from contatos where nome like 'B%';

select * from contatos order by nome asc;
select nome,fone from contatos;
select nome as Contato, fone as Telefone, email as email from contatos;

update contatos set nome='Willian Gates' where idcon = 2;
update contatos set email='maidem@email.com' where idcon = 5;
update contatos set nome='Linus Torvalds',fone='99999-7777',email='linus@email.com' where idcon = 3;

delete from contatos where idcon = 6;
