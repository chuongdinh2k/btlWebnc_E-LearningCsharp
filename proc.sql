use db_Elearning;

select * from tblTaiKhoan;
select * from tblQuyen;
select * from tblLop;

--proc insert giảng viên
create proc sp_themgiangvien(
	@sGiangVienId varchar(50),
	@sTen nvarchar(50) ,
	@sGioitinh nvarchar(50),
	@dNgaysinh datetime ,
	@sDiachi nvarchar(50) ,
	@sEmail varchar(50) ,
	@sCmnd varchar(50) ,
	@sSodienthoai varchar (10),
	@sBangcap nvarchar(50)
)
as
	insert into tblGiangVien(sGiangVienId,sTen,sGioitinh,dNgaysinh,sDiachi,sEmail,sCmnd,sSodienthoai,sBangcap,sAccount)
	values(@sGiangvienid,@sTen,@sGioitinh,@dNgaysinh,@sDiachi,@sEmail,@sCmnd,@sSodienthoai,@sBangcap,@sGiangVienId);

--proc tạo tài khoản
select * from tblTaikhoan;
create proc sp_creatAccount(@sAccount varchar(50),@sPassword varchar(50),@iMaquyen int)
as
	insert into tblTaiKhoan(sAccount,sPassword,iMaQuyen)
	values(@sAccount,@sPassword,@iMaquyen);

--Thêm thời gian bắt đầu vào buổi học
ALTER TABLE tblBuoihoc
ADD sthoigianbatdau varchar(50);
Alter Table tblBuoihoc
Add sthoigianketthuc varchar(50);

--Thay đổi thuộc tích field buoihocId sang kiểu IDENTITY(1,1)
ALTER TABLE tblBuoihoc
ALTER COLUMN sBuoiHocId int IDENTITY(1,1);

--Đăng nhập
create proc sp_dangnhap(
	@sAccount varchar(50),
	@sPassword varchar(50)
)
as 
	select sAccount,stenQuyen  from  tblTaiKhoan,tblQuyen where sAccount = @sAccount and @sPassword=sPassword 
	and tblTaiKhoan.iMaQuyen = tblQuyen.iMaQuyen


--Lấy ra danh sách lớp học của giảng viên
select * from tblLop;
select * from tblbuoihoc;
create proc sp_danhsachlop_GV(@sGiangvienID varchar(10))
as
	select * from tblLop where @sGiangvienID = sGiangVienId;

drop proc sp_danhsachlop_gv;
exec sp_danhsachlop_GV 'GV01';

--Cập nhật buổi học
create proc sp_gv_capnhatbuoihoc(@id int,
	@tieude nvarchar(50),
	@sNoidung nvarchar(100),
	@sTepdinhkem varchar(50),
	@sTrangThai nvarchar(10)
)
as
	update tblBuoiHoc 
	set sTieude = @tieude, sNoiDung = @sNoidung, stepdinhkem = @sTepdinhkem, strangthai = @sTrangThai
	where iBuoiHocId = @id

-- get sAccount from tblsinhvien,tblgiang vien
select * from tblSinhVien;
select * from tblGiangvien;
select * from tblTaiKhoan;

create proc sp_accountNotCreated
as
	select tblSinhVien.sAccount from tblSinhVien where tblSinhVien.sAccount not in ( select tblTaiKhoan.sAccount from tblTaiKhoan)
union select tblGiangVien.sAccount from tblGiangVien where tblGiangVien.sAccount not in ( select tblTaiKhoan.sAccount from tblTaiKhoan)

exec sp_accountNotCreated;
select tblSinhVien.sAccount from tblSinhVien where tblSinhVien.sAccount not in ( select tblTaiKhoan.sAccount from tblTaiKhoan)


select * from tblGiangVien;	
select * from tblTaiKhoan;