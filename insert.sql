use db_Elearning;
select * from tblTaiKhoan;
select * from tblGiangVien;
select * from tblMonHoc;
select * from tblLop;
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


--Insert lớp học
insert into tblLop(sLopId,sTenLop,sQuanLyId,sGiangVienId,sMonHocId)
values('lop01',N'Giải tích 1','admin1','gv01','gt1');
--values('lop02',N'Giải tích 2','admin1','gv02','gt2');
