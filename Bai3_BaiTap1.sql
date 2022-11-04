use quanlysinhvien;
-- 1
select 
* from student st
where st.StudentName like'h%';

-- 2
select*
 from class cl
 where  month(cl.StartDate) = 12;
 
 -- 3
 select*
 from subject sb
 where sb.credit between '3' and '5';
select studentid from student where studentname = 'hung';
-- 4
SET SQL_SAFE_UPDATES = 0;
update student 
set classid = 2
where studentname = 'hung';

-- 5
select st.StudentName,sb.SubName,mk.Mark
from student st join mark mk on st.studentid = mk.studentid join subject sb on mk.subid = sb.SubId
order by mk.Mark desc, st.StudentName asc;