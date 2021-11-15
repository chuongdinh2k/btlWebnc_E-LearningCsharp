use db_Elearning;

select * from tblTaiKhoan;
select * from tblQuyen;

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

