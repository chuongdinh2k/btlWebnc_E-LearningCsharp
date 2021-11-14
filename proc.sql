use db_Elearning;

select * from tblTaiKhoan;
select * from tblQuyen;
--Đăng nhập
create proc sp_dangnhap(
	@sAccount varchar(50),
	@sPassword varchar(50)
)
as 
	select sAccount,stenQuyen  from  tblTaiKhoan,tblQuyen where sAccount = @sAccount and @sPassword=sPassword 
	and tblTaiKhoan.iMaQuyen = tblQuyen.iMaQuyen
exec sp_dangnhap 'Admin1','202cb962ac59075b964b07152d234b70'