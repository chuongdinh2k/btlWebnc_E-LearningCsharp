create database db_Elearning
use db_Elearning
go

-- Tạo bảng Quản Lý
create table tblQuanLy
(
	sQuanLyId varchar(50) primary key not null,
	sTen nvarchar(50) not null,
	sAccount varchar(50) not null
)
GO

-- Tạo bảng Giảng Viên
create table tblGiangVien
(
	sGiangVienId varchar(50) primary key not null,
	sTen nvarchar(50) not null,
	sGioitinh nvarchar(50) not null,
	dNgaysinh datetime not null,
	sDiachi nvarchar(50) not null,
	sEmail varchar(50) not null,
	sCmnd varchar(50) not null unique,
	sSodienthoai varchar (10),
	sBangcap nvarchar(50) not null,
	sAccount varchar(50) not null
)
GO

-- Tạo bảng Sinh Viên
create table tblSinhVien
(
	sSinhVienId varchar(50) primary key not null,
	sTen nvarchar(50) not null,
	sGioitinh nvarchar(50) not null,
	dNgaysinh datetime not null,
	sDiachi nvarchar(50) not null,
	sEmail varchar(50) not null,
	sCmnd varchar(50) not null unique,
	sSodienthoai varchar (10) ,
	sAccount varchar(50) not null
)
GO

-- Tạo bảng Tài Khoản
create table tblTaiKhoan
(
	sAccount varchar(50) primary key not null,
	sPassword varchar(50) not null,
	iMaQuyen int NOT NULL
)
GO

-- Tạo bảng Quyền
create table tblQuyen
(
	iMaQuyen int identity primary key NOT NULL,
	sTenQuyen NVARCHAR(50) NOT NULL
)
GO

create table tblMonHoc 
(
	sMonHocId varchar(50) primary key not null,
	sTenMon nvarchar(50) not null,
	iSoTinChi int not null
)
GO

create table tblLop
(
	sLopId varchar(50) primary key not null,
	sTenLop nvarchar(50) not null,
	sQuanLyId varchar(50) not null,
	sGiangVienId varchar(50) not null,
	sMonHocId varchar(50) not null,
)
GO
create table tblDiem
(
	sDiemId varchar(50) primary key not null,
	sSinhVienId varchar(50) not null,
	sMonHocId varchar(50) not null,
	iDiemCC int,
	fDiemGK float,
	fDiemThi float
)
go

create table tblDanhsach_SV_Lop
(
	sLopId varchar(50) not null,
	sSinhVienId varchar (50) not null
)
GO

create table tblBuoiHoc
(
	iBuoiHocId int IDENTITY(1,1) PRIMARY KEY not null,
	dThoiGian datetime,
	sTieuDe nvarchar(100) not null,
	sNoiDung nvarchar (100) not null,
	sLopId varchar(50) not null,
	sThoigianbatday varchar(50) not null,
	sThoigianketthuc varchar(50) not null
)
GO

--thêm trạng thái buổi học
alter table tblBuoihoc
add strangthai nvarchar(10)

create table tblDiemDanh
(
	sDiemDanhId varchar(50) primary key not null,
	sBuoiHocId varchar(50) not null,
	sSinhVienId varchar(50) not null,
	bDiemDanh bit
)
GO
--Tạo bảng Thảo luân buổi học
create table tblThaoluanchung
(
	iMathaoluan int IDENTITY(1,1) PRIMARY KEY,
	sNoidung nvarchar(MAX),
	dNgay date,
	sAccount varchar(10),
	sLopid varchar(10)
)

ALTER TABLE tblDiemDanh add sghichu nvarchar(50);
GO

-- Thêm khóa ngoại
alter table tblQuanLy add constraint FK_QuanLy_TaiKhoan foreign key(sAccount) references tblTaiKhoan(sAccount)
go

alter table tblGiangVien add constraint FK_GiangVien_TaiKhoan foreign key(sAccount) references tblTaiKhoan(sAccount)
go

alter table tblSinhVien add constraint FK_SinhVien_TaiKhoan foreign key(sAccount) references tblTaiKhoan(sAccount)
go

alter table tblTaiKhoan add constraint FK_TaiKhoan_Quyen foreign key(iMaQuyen) references tblQuyen(iMaQuyen)
go

alter table tblLop add constraint FK_Lop_QuanLy foreign key(sQuanLyId) references tblQuanLy(sQuanLyId)
alter table tblLop add constraint FK_Lop_GiangVien foreign key(sGiangVienId) references tblGiangVien(sGiangVienId)
go

ALTER TABLE tblDanhsach_SV_Lop ADD CONSTRAINT FK_DS_SV FOREIGN KEY(sSinhVienId) REFERENCES tblSinhVien(sSinhVienId);
ALTER TABLE tblDanhsach_SV_Lop ADD CONSTRAINT FK_DS_Lop FOREIGN KEY(sLopId) REFERENCES tblLop(sLopId);
go

ALTER TABLE tblDiem ADD CONSTRAINT FK_Diem_SV FOREIGN KEY(sSinhVienId) REFERENCES tblSinhVien(sSinhVienId);
ALTER TABLE tblDiem ADD CONSTRAINT FK_Diem_MonHoc FOREIGN KEY(sMonHocId) REFERENCES tblMonHoc(sMonHocId);
go

ALTER TABLE tblDiemDanh ADD CONSTRAINT FK_DD_BuoiHoc FOREIGN KEY(sBuoiHocId) REFERENCES tblBuoiHoc(sBuoiHocId);
ALTER TABLE tblDiemDanh ADD CONSTRAINT FK_DD_SV FOREIGN KEY(sSinhVienId) REFERENCES tblSinhVien(sSinhVienId);
go

ALTER TABLE tblBuoiHoc ADD CONSTRAINT FK_BuoiHoc_Lop FOREIGN KEY(sLopId) REFERENCES tblLop(sLopId);
go