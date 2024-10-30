use Project;

select * from [dbo].[company];
create database Mufasa;
use Mufasa;
create table Employees (EmployeeID int primary key,FirstName varchar(30),LastName varchar(30),DepartmentID int);
create table Departments (DepartmentID int primary key,DepartmetName varchar(30));
create table Salaries (EmployeeID int, Salary int);


insert into Employees (EmployeeID,FirstName,LastName,DepartmentID) 
values
(1,'John','Smith',10),(2,'Jane','Doe',20),(3,'Jim','Brown',30),(4,'Jake','White',10),(5,'Julie','Black',40);
insert into Departments (DepartmentID,DepartmetName)
values (10,'sales'),(20,'Engineering'),(30,'Marketing'),(40,'HR');
insert into Salaries (EmployeeID, Salary)
values (1,50000),(2,60000),(3,55000),(4,65000)

select * from Salaries;
select * from Departments;
select * from Employees;

-- Joins
select a.firstName,a.LastName,b.DepartmetName
from Employees a
inner join Departments b on a.DepartmentID = b.DepartmentID;

select a.firstName,a.LastName,b.DepartmetName
from Employees a
left join Departments b on a.DepartmentID = b.DepartmentID;

select a.DepartmetName,b.FirstName,b.LastName
from Departments a
right join Employees b  on a.DepartmentID = b.DepartmentID;

select *
from Departments a
full outer join Employees b  on a.DepartmentID = b.DepartmentID;

select * from Salaries;
select * from Departments;
select * from Employees;