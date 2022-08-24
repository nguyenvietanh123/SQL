﻿create table PhoneNumber (
	ID int primary key identity(1,1),
	Number varchar(255) not null
)
create table People (
	ID int primary key identity(1,1),
	Name nvarchar(50) not null,
	Andress nvarchar(255) not null,
	DateofBirth date not null,
	NumberID int foreign key references PhoneNumber(ID)
)
--drop table People
--drop table PhoneNumber
insert into PhoneNumber(Number) values
	('0987654312,0333203923,0123456789,0356483304')
insert into PhoneNumber(Number) values
	('0973893372')
select * from PhoneNumber
insert into People(Name,Andress,DateofBirth,NumberID) values(N'Nguyễn Việt Anh',N'Ngõ 181 Yên Lãng, Đống Đa, Hà Nội','2000/10/26',1)
insert into People(Name,Andress,DateofBirth,NumberID) values(N'Nguyễn Thị Diễm',N'Ngõ 5 Ngọa Long,Nam Từ Liêm,Hà Nội','2001/10/11',2)
select * from People

--Liệt kê danh sách những người trong danh bạ
select Name from People
--Liệt kê danh sách số điện thoại có trong danh bạ
select Number from PhoneNumber

--Liệt kê danh sách người trong danh bạ theo thứ thự alphabet
select * from People order by Name asc
--Liệt kê các số điện thoại của người có tên là Nguyễn Việt Anh.
select * from PhoneNumber where ID in (select ID from People where Name like N'Nguyễn Việt Anh')
--Liệt kê những người có ngày sinh là 12/12/09