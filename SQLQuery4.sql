--CREATE
insert into Typer(Name) values(N'Văn học nước ngoài')
insert into Typer(Name) values(N'Văn học cổ đại'),(N'Văn học hiện đại')
--READ
select * from Typer;
 insert into Author(Name) values(N'Việt Anh');
 select * from Author;

 insert into Publishons(Name,Address) values(N'NXB Giáo Dục',N'181 Yên Lãng, Hà Nội');
 select * from Publishons;

 insert into Books(Name,Content,TypeID,PublishionId,AuthorId)
  values(N'Đắc Nhân Tâm',N'Triết lý Xã Hội',2,1,1);
 insert into Books(Name,Content,TypeID,PublishionId,AuthorId)
  values(N'Thủy Hử',N'Cổ trang oánh nhau',3,1,1);


  select * from Books;


  --UPDATE
  update Books set Price = 50000 where Id=11;
  update Books set Price = 20000 where Id=12;
  update Books set Price = 30000 where Id=13;
  update Books set NumberPublish= 2, Qty = 10 where ID = 13;
  update Books set Qty = 5 where ID = 11;

  --DELETE
  delete from Books where Id = 2;


  --- Liệt kê
    select Name,Content,YearPublish as NamXuatBan,Price from Books;

  --- Sắp xếp
	select * from Books order by Price asc;
	select * from Books order by Price desc;
		--- asc: --number : low -> hight
				 --string: alphabe
				 --date time : old -> new
		--- desc : ngược lại
	select top 1 * from Books order by Price desc;
	select top 5 percent * from Books order by Price desc;-- lấy 5%

  -- Lọc (filter)
	select * from Books where TypeID = 2;
	select * from Books where TypeID = 2 and Qty > 0;
	select * from Books where TypeID = 2 or NumberPublish = 1;
	select * from Books where YearPublish >= '2022-01-01';
	select * from Books where Name like N'Thủy Hử';
	select * from Books where YearPublish between '2022-08-01' and '2022-09-01';
	select * from Books where NumberPublish in (1,2,3);--giống and
	select * from Books where NumberPublish in (1,2,3) order by Price asc;

  -- Search
	select * from Books where Name like N'T%';--start of
	select * from Books where Name like N'%ử';--end of
	select * from Books where Name like N'%ắ%';--contain

  -- Thong ke
	select count(*) as Soluong from Books;
	select sum(Price) as TongTien from Books;
	select avg(Price) as TBC from Books;
	select sum(Price * Qty) as Tongtienthucsu from Books;
	
	select sum(Price * Qty) as Tienghang,TypeID from Books group by TypeID;

	-- Mo rong
	--subquery

	select * from Books where TypeID in (select ID from Typer where Name like N'Văn học hiện đại');

	select * from Typer,Books
	--join table
	select Books.Name, Books.Content, Typer.Name as TypeName from Books
	--inner join Typer on Typer.ID = Books.TypeID;
