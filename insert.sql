use db_Elearning;
select * from tblTaiKhoan;
select * from tblGiangVien;
select * from tblMonHoc;
select * from tblLop;
select * from tblSinhVien;
--Môn học
insert into tblMonhoc(sMonHocId,sTenMon,iSoTinChi)
values('ta1',N'Tiếng Anh 1',3),
('ta2',N'Tiếng Anh 2',3),
('ta3',N'Tiếng Anh 3',3),
('tacn',N'Tiếng Anh Chuyên Ngành',3),
('ltwcb',N'Lập trình web cơ bản',4),
('gt1',N'Giải tích 1',3),
('gt2',N'Giải tích 2',3),
('tmdt',N'Thương mại điện tử',3),
('lthsk',N'Lập trình hướng sự kiên',3),
('ltht',N'Lập trình hệ thống',3);


--insert Giảng viên
insert into tblGiangVien(sGiangVienId,sTen,sGioitinh,dNgaysinh,sDiachi,sEmail,sCmnd,sSodienthoai,sBangcap,sAccount)
values('GV01',N'Nguyễn Bình An','nam','1990-03-25',N'Hà Nội','binan@gmail.com','1234684','096153421','Thạc sĩ','GV01'),
('GV02',N'Hoàng Thị Hạnh',N'nữ','1990-07-15',N'Hà Nội','hanh@gmail.com','307758807','0893007110','Thạc sĩ','GV02'),
('GV03',N'Đinh Trung Dũng','nam','1992-07-16',N'Hải Phòng','dung@gmail.com','970597801','0922460940','Thạc sĩ','GV03');

--insert Sinh viên
select * from tblSinhvien;
insert into tblSinhVien(sSinhVienId,sTen,sGioitinh,dNgaysinh,sDiachi,sEmail,sCmnd,sSodienthoai,sAccount)
values('K101',N'Nguyễn Thiện Nhân','nam','1999-11-02',N'Hà Nội','nhan9x@gmail.com','198763825','0993169113','K101'),
('K102',N'Ngô Văn Ngọc','nam','1999-10-05',N'Hà Nội','ngocngo@gmail.com','483112636','0825090955','K102'),
('K201',N'Nguyễn Thúy Nga',N'nữ','2000-5-02',N'Thái Bình','meocon@gmail.com','263935751','0900419175','K201');


select * from tblTaiKhoan;

--insert Taikhoan mật khẩu: 123456789
insert into tblTaiKhoan(sAccount,sPassword,iMaQuyen)
--values('Admin1','25f9e794323b453885f5181f1b624d0b',1),
--('GV01','25f9e794323b453885f5181f1b624d0b',2);
values('SV01','25f9e794323b453885f5181f1b624d0b',3)


select * from tblQuyen;
--inser quyền
insert into tblQuyen(sTenQuyen)
values('ADMIN'),
('GV'),
('SV')

--Insert lớp học
insert into tblLop(sLopId,sTenLop,sQuanLyId,sGiangVienId,sMonHocId)
values('lop01',N'Giải tích 1','admin1','gv01','gt1');
--values('lop02',N'Giải tích 2','admin1','gv02','gt2');



ALTER TABLE tblBuoihoc
add stepdinhkem varchar(50);
select * from tblBuoiHoc;
--Insert Buổi học
insert into tblBuoiHoc(dThoiGian,sTieuDe,sNoiDung,sLopId,sThoigianbatday,sthoigianketthuc)
values('2021-11-14',N'Bài học đầu tiên',N'Bài học đầu tiên sẽ là ví dụ đầu tiên','lop01','7h30','11h30')


select * from tblThaoluanchung;
select * from tblLop;
insert into tblThaoluanchung(sNoidung,dNgay,sAccount,sLopid)
values(N'Chào các bạn','2021-11-16','GV01','lop01');
