
create table Person
(
    PersonId int primary key,
    FirstName varchar(64) not null,
    LastName varchar(64) not null,
    PersonAge int not null
);

insert into Person(PersonId, FirstName, LastName, PersonAge) values (5, N'John', N'Doe', 25);
insert into Person(PersonId, FirstName, LastName, PersonAge) values (17, N'Izabella', N'MacMillan', 19);

create table Phone
(
    PhoneId int primary key,
    PersonId int references Person(PersonId),
    PhoneNumber varchar(64) not null
);

insert into Phone(PhoneId, PersonId, PhoneNumber) values (1, 5, '11 091-10');
insert into Phone(PhoneId, PersonId, PhoneNumber) values (2, 5, '19 124-66');
insert into Phone(PhoneId, PersonId, PhoneNumber) values (3, 17, '21 972-02');