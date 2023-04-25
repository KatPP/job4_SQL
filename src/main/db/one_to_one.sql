create table Employee2
(
    EmployeeId int primary key,
    EmployeeName varchar(128) not null,
    EmployeeAge int not null
);

insert into Employee2(EmployeeId, EmployeeName, EmployeeAge) values (159, N'John Smith', 22);
insert into Employee2(EmployeeId, EmployeeName, EmployeeAge) values (722, N'Hilary White', 29);
insert into Employee2(EmployeeId, EmployeeName, EmployeeAge) values (937, N'Emily Brown', 19);


create table DisabledEmployee
(
    DisabledPersonId int primary key,
    EmployeeId int unique references Employee2(EmployeeId)
);

insert into DisabledEmployee(DisabledPersonId, EmployeeId) values (1, 159);
insert into DisabledEmployee(DisabledPersonId, EmployeeId) values (2, 722);
insert into DisabledEmployee(DisabledPersonId, EmployeeId) values (3, 937);