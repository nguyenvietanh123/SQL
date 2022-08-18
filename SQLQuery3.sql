create table nhacungcap(
	MaNhaCC nvarchar(50) primary key,
	TenNhaCC nvarchar(255) not null,
	DiaChi nvarchar(255) not null,
	SoDT int not null unique,
	MaSoThue int not null unique, 
)

create table loaidichvu(
	MaLoaiDV nvarchar(50) primary key,
	TenLoaiDV nvarchar(255) not null,
)

create table mucphi(
	MaMP nvarchar(50) primary key,
	DonGia decimal(16,0) not null,
	MoTa nvarchar(255)not null,
)

create table dongxe(
	DongXe nvarchar(255) primary key,
	HangXe nvarchar(255)not null,
	SoChoNgoi int not null,
)
--drop table dongxe
create table dangkycungcap(
	MaDKCC nvarchar(255) primary key,
	MaNhaCC nvarchar(50) not null foreign key references nhacungcap(MaNhaCC) ,
	MaLoaiDV nvarchar(50) not null foreign key references loaidichvu(MaLoaiDV),
	DongXe nvarchar(255) not null foreign key references dongxe(DongXe),
	MaMP nvarchar(50) not null foreign key references mucphi(MaMP),
	NgayBatDauCungCap date not null,
	NgayKetThucCungCap date not null,
	SoLuongXeDangKy int not null,
)
--drop table dangkycungcap


insert into nhacungcap(MaNhaCC,TenNhaCC,DiaChi,SoDT,MaSoThue) values
	('NCC001',N'Cty TNHH Toàn Phát','Hai Chau','011111111','123451'),
	('NCC002',N'Cty TNHH AMA','Hai Chau','011111112','123452'),
	('NCC003',N'Cty Cổ phần Đông Du','Hai Chau','011111113','123453'),
	('NCC004',N'Cty Cổ phần Toàn Cầu Xanh','Hai Chau','011111114','123454'),
	('NCC005',N'Cty Cổ Phần Rạng Đông','Hai Chau','011111115','123455'),
	('NCC006',N'Tập đoàn Đông Nam Á','Hai Chau','011111116','123456'),
	('NCC007',N'Cty TNHH AHAMOVE','Hai Chau','011111117','123457'),
	('NCC008',N'Cty Việt Nam','Hai Chau','011111118','123458'),
	('NCC009',N'Cty Việt Anh','Hai Chau','011111119','123459'),
	('NCC010',N'Cty TNHH Nguyễn Diễm','Hai Chau','0111111110','1234510')
	--delete from nhacungcap

select * from nhacungcap; 

insert into loaidichvu(MaLoaiDV,TenLoaiDV) values
	('DV01',N'Dịch vụ xe Taxi'),
	('DV02',N'Dịch vụ xe Bus công cộng theo tuyến cố định'),
	('DV03',N'Dịch vụ xe cho thuê theo hợp đồng')

select * from loaidichvu

insert into mucphi(MaMP,DonGia,MoTa) values
	('MP01','10.000',N'Áp dụng từ 1/2015'),
	('MP02','15.000',N'Áp dụng từ 2/2015'),
	('MP03','20.000',N'Áp dụng từ 1/2010'),
	('MP04','25.000',N'Áp dụng từ 1/2015')
	--delete from mucphi
select * from mucphi

insert into dongxe(DongXe,HangXe,SoChoNgoi) values
	('Hiace','Toyota','16'),
	('Vios','Toyota','5'),
	('Cerato','KIA','5'),
	('Ford','KIA','7'),
	('G63','Mescedes','5'),
	('Carmry','Toyota','7'),
	('i10','Toyota','7')
	--delete from dongxe
select * from dongxe

insert into dangkycungcap(MaDKCC,MaNhaCC,MaLoaiDV,DongXe,MaMP,NgayBatDauCungCap,NgayKetThucCungCap,SoLuongXeDangKy) values
	('DK001','NCC001','DV01','Hiace','MP01','2015/11/07','2016/11/20','4'),
	('DK002','NCC010','DV02','Vios','MP02','2015/09/08','2016/11/20','3'),
	('DK003','NCC002','DV03','Cerato','MP03','2013/11/11','2019/11/20','7'),
	('DK004','NCC003','DV02','Ford','MP04','2014/10/26','2017/01/31','9'),
	('DK005','NCC005','DV03','G63','MP01','2015/11/07','2015/11/07','8'),
	('DK006','NCC008','DV01','Carmry','MP02','2015/11/07','2015/11/07','6'),
	('DK007','NCC009','DV03','Hiace','MP03','2015/11/07','2015/11/07','5'),
	('DK008','NCC005','DV02','Ford','MP04','2015/11/07','2015/11/07','3'),
	('DK009','NCC007','DV01','Cerato','MP01','2015/11/07','2015/11/07','2'),
	('DK010','NCC003','DV01','Carmry','MP02','2015/11/07','2015/11/07','1'),
	('DK011','NCC004','DV02','Hiace','MP03','2015/11/07','2015/11/07','1'),
	('DK012','NCC001','DV03','i10','MP04','2015/11/07','2015/11/07','8'),
	('DK013','NCC007','DV01','Hiace','MP04','2015/11/07','2015/11/07','7'),
	('DK014','NCC009','DV03','Hiace','MP03','2015/11/07','2015/11/07','6'),
	('DK015','NCC010','DV02','i10','MP02','2015/11/07','2015/11/07','7'),
	('DK016','NCC008','DV03','Carmry','MP04','2015/11/07','2015/11/07','9'),
	('DK017','NCC009','DV01','Hiace','MP03','2015/11/07','2015/11/07','2'),
	('DK018','NCC003','DV02','Cerato','MP02','2015/11/07','2015/11/07','3'),
	('DK019','NCC005','DV02','Hiace','MP02','2015/11/07','2015/11/07','5'),
	('DK020','NCC007','DV01','G63','MP03','2015/11/07','2015/11/07','2'),
	('DK021','NCC003','DV03','Hiace','MP01','2015/11/07','2015/11/07','1'),
	('DK023','NCC002','DV01','Carmry','MP02','2015/11/07','2015/11/07','8'),
	('DK024','NCC001','DV02','Hiace','MP03','2015/11/07','2015/11/07','6'),
	('DK025','NCC005','DV03','G63','MP04','2015/11/07','2015/11/07','9')

	--delete from dangkycungcap
select * from dangkycungcap