﻿-- 1.Thiết kế cơ sở dữ liệu
create table Customers (
	ID int primary key,
	Name nvarchar(50) not null,
);
drop table Customers
drop table Products
drop table TypeProducts
create table TypeProducts (
	Name nvarchar(50),
	ID varchar(20) primary key
);
create table Products (
	ID varchar(20) primary key,
	NgaySX date not null,
	CustomerID int foreign key references Customers(ID),
	TypeProductID varchar(20) foreign key references TypeProducts(ID)
);

-- 2.Viết câu lệnh tạo bảng
insert into Customers(ID,Name) values(987688,N'Nguyễn Việt Anh')
select * from Customers
insert into TypeProducts(Name,ID) values(N'Máy tính sách tay Z37','Z37E')
select * from TypeProducts
insert into Products(ID,NgaySX,CustomerID,TypeProductID) values('Z37 11111','2019/12/12','987688','Z37E')
select * from Products

-- 3.Viết các câu lệnh thêm dữ liệu
insert into Customers(ID,Name) values
	(987689,N'Nguyễn Thị Diễm'),
	(987690,N'Trần Hoàng Anh')

insert into TypeProducts(Name,ID) values
	(N'Máy tính để bàn IPX','Z38E'),
	(N'Máy tính VipPro','Z39E'),
	(N'Máy tính Macbook Pro2015','Z40E'),
	(N'Máy tính ASUS','Z41E')
insert into Products(ID,NgaySX,CustomerID,TypeProductID) values
	('Z38 22222','2000/10/26','987689','Z38E'),
	('Z39 33333','2001/11/15','987690','Z39E'),
	('Z39 44444','2000/10/26','987689','Z39E'),
	('Z40 55555','2001/11/15','987690','Z40E'),
	('Z39 66666','2000/10/26','987688','Z41E')
-- 4.Viết câu lệnh truy vấn
 --a,Liệt kê danh sách loại sản phẩm của công ty
 select ID from TypeProducts
 --b,Liệt kê danh sách sản phẩm của công ty
 select Name from TypeProducts
 --c,Liệt kê danh sách người chịu trách nhiệm của công ty
 select Name from Customers

 --5.Viết các câu lệnh truy vấn để lấy
 --a,Liệt kê danh sách loại sản phẩm của công ty theo thứ tự tăng dần của tên
 select * from TypeProducts order by Name asc
 --b,Liệt kê danh sách người chịu trách nhiệm của công ty theo thứ tự tăng dần của tên.