-- Bước 1: Sử dụng cơ sở dữ liệu QuanLySinhVien
USE QuanLySinhVien;

-- Bước 2: Hiển thị danh sách tất cả các học viên
SELECT * 
FROM Student;

-- Bước 3: Hiển thị danh sách học viên đang theo học (Status = true)
SELECT * 
FROM Student 
WHERE Status = true;

-- Bước 4: Lấy ra danh sách các môn học có thời gian học nhỏ hơn 10
SELECT * 
FROM Subject 
WHERE Credit < 10;

-- Bước 5: Hiển thị danh sách học viên lớp A1
-- Kịch bản 1: Join 2 bảng Student và Class
SELECT S.StudentId, S.StudentName, C.ClassName 
FROM Student S join Class C on S.ClassId = C.ClassID;

-- Kịch bản 2: Sử dụng điều kiện WHERE lọc theo lớp 'A1'
SELECT S.StudentId, S.StudentName, C.ClassName 
FROM Student S join Class C on S.ClassId = C.ClassID 
WHERE C.ClassName = 'A1';

-- Bước 6: Hiển thị điểm môn học của các học viên
-- Kịch bản 1: Hiển thị tất cả các điểm đang có của học viên
SELECT S.StudentId, S.StudentName, Sub.SubName, M.Mark 
FROM Student S join Mark M on S.StudentId = M.StudentId join Subject Sub on M.SubId = Sub.SubId;

-- Kịch bản 2: Sử dụng câu lệnh Where để hiển thị điểm môn CF của các học viên
SELECT S.StudentId, S.StudentName, Sub.SubName, M.Mark 
FROM Student S join Mark M on S.StudentId = M.StudentId join Subject Sub on M.SubId = Sub.SubId 
WHERE Sub.SubName = 'CF';
