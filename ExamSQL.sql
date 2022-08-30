--1
create table Deparment(
	DeparID int primary key,
	DapartName varchar(50) not null,
	Description varchar(50) not null
)
create table Employee(
	EmpCode char(6) primary key,
	FirtName varchar(30) not null,
	LastName varchar(30) not null,
	Birthday smalldatetime not null,
	Gender int Default 1,
	Address varchar(100),
	Salary money,
	DepartID int foreign key references Deparment(DeparID)
)

insert into Deparment(DeparID,DapartName,Description) values
	(1,'P201','Width Room'),
	(2,'P202','Medium Room'),
	(3,'P203','Small Room')
	select * from Deparment

insert into Employee(EmpCode,FirtName,LastName,Birthday,Gender,Address,Salary,DepartID) values
	('NV01','Nguyen','Viet Anh','2000/10/26','0','Ngo 181 Yen Lang,Dong Da,HN','10000000',1),
	('NV02','Nguyen','Thi Diem','2001/09/13','1','Ngo 5 Ngoa Long,Nam Tu Liem,HN','20000000',2),
	('NV03','Tran','Hoang Anh','2000/11/15','0','Ngo 1683 Nguyen Khoai,Hoang Mai,HN','15000000',3)
	select * from Employee

--2

UPDATE Employee SET salary= salary + (salary * 10 / 100) where DepartID=1
UPDATE Employee SET salary= salary + (salary * 10 / 100) where DepartID=2
UPDATE Employee SET salary= salary + (salary * 10 / 100) where DepartID=3
--3
alter table Employee add check(Salary > 0)

--4
create trigger tg_chkBirthday
on Employee
after insert
as
begin
	if exists (select * from inserted where Birthday < 22)
	begin
		print 'Employee’s age is greater than 22';
		rollback transaction;
	end
end

--5
create index IX_DepartmentName on Department(DepartName);
--6
CREATE VIEW emp_all as
select Employee.EmpCode, Employee.FirstName, Employee.LastName, Department.DepartName  from Employee left join Department
on Employee.DepartID = Department.DepartID
--7
create procedure sp_getAllEmp @departmentId int as
select * from Employee where DepartId = @departmentId;

