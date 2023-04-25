create database drom;
create table auto(
                     id      serial primary key,
                     name    varchar(255) not null,
                     country varchar(100)
);

insert into auto(name, country)
values ('BMW', 'Germany');

insert into auto(name, country)
values ('Opel', 'Germany');

select * from auto;

update  auto set name = 'WW';

select * from auto;

delete from auto;

select * from auto;