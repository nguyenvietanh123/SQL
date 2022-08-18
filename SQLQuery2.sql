create table Customers(
	Telephone varchar(20) primary key,
	Andress varchar(255),
	Name varchar(100)
);


create table Orders(
	ID int primary key,
	OrderDate datetime,
	TelephoneID varchar(20) foreign key references Customers(Telephone)
) 

create table Product(
	ID int primary key,
	Name varchar(255),
	Descriptions text,
	Unit varchar(50),
	price decimal(16,0) 
)

create table Orders_Product(
	Qty int,
	Subtotal decimal(16,0),
	OrderID int foreign key references Orders(ID),
	ProductID int foreign key references Product(ID)
)