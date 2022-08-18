create table Typer(
	ID int primary key identity(1,1),
	Name varchar(255) not null unique
);
create table Author(
	ID int primary key identity(1,1),
	Name varchar(255) not null unique
)
create table Publishons(
	ID int primary key identity(1,1),
	Name varchar(255) not null unique,
	Address varchar(255)
);

create table Books(
	ID int primary key identity(1,1),
	Name varchar(255) not null,
	Content text,
	YearPublish date not null default GETDATE(),
	NumberPublish int not null check(NumberPublish > 0) default 1,
	Price decimal(16,0) not null check(Price >= 0) default 0 ,
	Qty int not null check(Qty >= 0) default 0,
	TypeId int not null foreign key references Typer(Id),
	AuthorId int not null foreign key references Publishons(ID),
	PublishionId int not null foreign key references Author(ID)
);
--drop table Books;
--drop table Publishons;
--drop table Author;
--drop table Typer;