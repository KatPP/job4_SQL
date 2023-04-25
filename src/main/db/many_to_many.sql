create database Employee;

create table Employee
(
    EmployeeId serial primary key,
    EmployeeName varchar(128) not null,
    EmployeeAge int not null
);

-- Заполним таблицу Employee данными.
insert into Employee(EmployeeId, EmployeeName, EmployeeAge) values (1, 'Sara', 22);
insert into Employee(EmployeeId, EmployeeName, EmployeeAge) values (2, 'Bob', 22);
insert into Employee(EmployeeId, EmployeeName, EmployeeAge) values (3, 'Ivan', 22);

create table Position
(
    PositionId serial primary key,
    PositionName varchar(64) not null
);

-- Заполним таблицу Position данными.
insert into Position(PositionId, PositionName) values(1, 'TeamLead');
insert into Position(PositionId, PositionName) values(2, 'Programmer');
insert into Position(PositionId, PositionName) values(3, 'Engineer');

-- Заполним таблицу EmployeesPositions данными.
create table EmployeesPositions
(
    PositionId int references Position(PositionId),
    EmployeeId int references Employee(EmployeeId),
    primary key(PositionId, EmployeeId)
);

insert into EmployeesPositions(EmployeeId, PositionId) values (1, 1);
insert into EmployeesPositions(EmployeeId, PositionId) values (1, 2);
insert into EmployeesPositions(EmployeeId, PositionId) values (2, 3);
insert into EmployeesPositions(EmployeeId, PositionId) values (3, 3);