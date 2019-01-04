create database QL_DuLich
on primary --Tạo tập tin data
( 
  size = 100
  ,filegrowth = 10
  ,maxsize = 2GB
  ,filename = 'E:\QL_DuLich\QL_DuLich.mdf'
  ,name = QuanLyBanHang
)
log on --Tạo tập tin log
(
  size = 200
  ,filegrowth = 20
  ,maxsize = Unlimited
  ,filename = 'E:\QL_DuLich\QL_DuLich.ldf'
  ,name = QuanLyBanHang_log
)
-----tạo bảng Khách hàng--------------
CREATE TABLE KhachHang
(
	STT int primary key,
	TenKH NVARCHAR(30),
	NgaySinh DATETIME,
	GioiTinh NVARCHAR(10),
	SDT VARCHAR(20),
	Email VARCHAR(30),
	Diachi NVARCHAR(100),
	CMND CHAR(20),
	MaKH varCHAR(10),
)
----------------------------------------
create table ThongTinDKTour
(
	NgayDat DATETIME,
	NguoiLon INT,
	SoTreEm INT,
	MaKH varCHAR(10) PRIMARY KEY NOT NULL,
	MaTour varCHAR(10),
	ThanhTien FLOAT,
)
-----------------------------------------
create table KhuyenMai
(
	MaKM varchar(10) primary key,
	Heso float,
)
-----------------------------------------
create table KM_Tour
(
	MaKM varchar(10) ,
	MaTour varchar(10) primary key,
	NgayKM datetime,
)
------------------------------------------
CREATE TABLE Tour
(
	MaTour varCHAR(10) PRIMARY KEY not null,
	TenTour NVARCHAR(30) not null,
	LoaiTour NVARCHAR(50),
	SoNgay NvarCHAR(50),
	GiaTour FLOAT(30) not null,
	MaNV varCHAR(10),
)

create table NhanVien
(
	MaNV int not null primary key,
	TenNV NVARCHAR(30),
	NgSinh DATETIME,
	GioiTinh NCHAR(5),
	CMND CHAR(12),
	Dchi NVARCHAR(100),
	SoDienThoai CHAR(10),
	TenDN VARCHAR(20)
)
CREATE TABLE ManHinh
(
	MaMH varCHAR(10) PRIMARY KEY,
	TenMH VARCHAR(30)
)

CREATE TABLE PhanQuyen
(
	MaNhom varCHAR(10) PRIMARY KEY,
	MaMH varCHAR(10),
	CoQuyen bit,
	constraints PK_PQ primary key(MaNhom,MaMH)
)

CREATE TABLE NhomNguoiDung
(
	MaNhom varCHAR(10) PRIMARY KEY,
	TenNhom NVARCHAR(30),
	IsAdmind bit
)



CREATE TABLE NguoiDung
(
	TenDN VARCHAR(20) PRIMARY KEY,
	MatKhau VARCHAR(20),
	HoatDong bit,
	MaNhom varCHAR(10),
)

CREATE TABLE ChiTiet
(
	MaCT varCHAR(10) PRIMARY KEY,
	Hinh varCHAR(50),
	NgayKhoiHanh DateTime,
	LichTrinh NVARCHAR(100),
	MaTour varCHAR(10),
)
create table Bao_Cao_Doanh_Thu
(
	MaDoanhThu varchar(10) primary key,
	Thang Datetime,
	TongDoanhThu float,
)
create table Chi_Tiet_Bao_Cao_Doanh_Thu
(
	MaDoanhThu varchar(10),
	Thang int,
	Nam int,
	MaTour varchar(10),
	DoanhThu float,
	TyLe float
	constraint pk_CTBCDT primary key(MaDoanhThu,MaTour),
)

/*THÊM DỮ LIỆU CHO BẢNG*/

/*Foreign key*/

alter table KhachHang
add constraint fk_maKH foreign key(MaKH) references KhachHang(MaKH)

alter table ThongTinDKTour
add	constraint fk_maT foreign key(MaTour) references Tour(MaTour)

ALTER TABLE Tour
ADD CONSTRAINT FK_NhanVien_Tour FOREIGN KEY(MaNV) REFERENCES NhanVien(MaNV)

ALTER TABLE ChiTiet
ADD CONSTRAINT FK_CHITIET_Tour FOREIGN KEY(MaTour) REFERENCES Tour(MaTour)

ALTER TABLE NhanVien
ADD CONSTRAINT FK_ND_NhanVien FOREIGN KEY(TenDN) REFERENCES NguoiDung(TenDN)



ALTER TABLE NguoiDung
ADD CONSTRAINT FK_ND_NND FOREIGN KEY(MaNhom) REFERENCES NhomNguoiDung(MaNhom)

alter table Phan_Quyen
add 
	constraint fk_PQ_NND foreign key(MaNhom) references NhomNguoiDung(MaNhom),
	constraint fk_PQ_MH foreign key(MaMH) references ManHinh(MaMH)


alter table Chi_Tiet_Bao_Cao_Doanh_Thu
add constraint fk_CTBCDT_Tour foreign key(MaTour) references Tour(MaTour),
	constraint fk_CTBCDT_BCDT foreign key(MaDoanhThu) references Bao_Cao_Doanh_Thu(MaDoanhThu)

alter table KM_Tour
add	constraint FK_MaTour foreign key(MaTour) references Tour(MaTour),
	constraint FK_MaKM foreign key(MaKM) references KhuyenMai(MaKM)


	
/*Insert */


insert into Tour
values('T001',N'Hà Nội - Vũng Tàu',N'Trong nước','3',5000000,'NV01'),
	('T002',N'Hà Nội - USA',N'Ngoài nước','4',5000000,'NV02'),
	('T003',N'Hà Nội - Hồ Chí Minh',N'Trong nước','5',5000000,'NV03'),
	('T004',N'Hà Nội - ThaiLand',N'Ngoài nước','2',5000000,'NV04'),
	('T005',N'Hà Nội - Nha Trang',N'Trong nước','6',5000000,'NV05')

insert into ChiTiet
values('CT001','xxxx','6/2/2012','asdfasuldhfiaudshfiauhgiarhasdhuvasljvhzxklcvhhlauerhiuhfiah','T001'),
('CT002','xxxx','5/2/2012','asdfasuldhfiaudshfiauhgiarhasdhuvasljvhzxklcvhhlauerhiuhfiahdvlahvklajdvhiae','T002'),
('CT003','xxxx','4/2/2012','asdfasuldhfiaudshfiauhgiarhasdhuvasljvhzxklcvhhlauerhiuhfiahdv','T003'),
('CT004','xxxx','3/2/2012','asdfasuldhfiaudshfiauhgiarhasdhuvasljvhzxklcvhhlauerhiuhfia','T004'),
('CT005','xxxx','2/2/2012','asdfasuldhfiaudshfiauhgiarhasdhuvasljvhzxklcvhhlauerhi','T005')

insert into KhachHang
values('KH001','Manh','12/10/1989',N'Nam','0123456789','lent@gmil.com','123 Lê Trọng Tấn','xxxxx'),
		('KH002','Nguyen','12/10/1989',N'Nữ','0123456789','lent@gmil.com','123 Lê Trọng Tấn','xxxxxx'),
		('KH003','Nguyen','12/10/1989',N'Nữ','0123456789','lent@gmil.com','123 Lê Trọng Tấn','xxxxxxx'),
		('KH004','Thanh','12/10/1989',N'Nam','0123456789','lent@gmil.com','123 Lê Trọng Tấn','xxxxxx'),
		('KH005','Nguyen','12/10/1989',N'Nữ','0123456789','lent@gmil.com','123 Lê Trọng Tấn','xxxxxxx')

insert into ThongTinDkTour
values('12/1/2018',1,1,'KH001','T001',5000000),
		('12/1/2018',2,2,'KH002','T002',20000000),
		('12/1/2018',3,2,'KH003','T003',20000000)

insert into NhanVien
values('NV01',N'Tèo','12/5/1987','Nam','21352135','xxxx','02541556','vothanhdat112'),
('NV02',N'Tí','11/6/1988','Nam','21352135','xxxx','02541556','vothanhdat123'),
('NV03',N'Tị','10/4/1987',N'Nữ','21352135','xxxx','02541556','vothanhdat134'),
('NV04',N'Sửu','9/3/1987',N'Nữ','21352135','xxxx','02541556','vothanhdat156'),
('NV05',N'Dần','8/2/1987','Nam','21352135','xxxx','02541556','vothanhdat145')

insert into ManHinh
values('mh001',N'màn hình 01'),
('mh002',N'màn hình 02'),
('mh003',N'màn hình 03'),
('mh004',N'màn hình 04'),
('mh005',N'màn hình 05')


insert into NguoiDung
values('vothanhdat112','123123','1'),
('vothanhdat156','123123','0'),
('vothanhdat123','123123','1'),
('vothanhdat134','123123','1'),
('vothanhdat145','123123','1')

insert into NhomNguoiDung
values('NH01',N'Admind'),
	('NH02',N'Nhan vien'),
