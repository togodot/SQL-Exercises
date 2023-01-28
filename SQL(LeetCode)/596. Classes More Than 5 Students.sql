-- < 596. Classes More Than 5 Students >
-- 문제 링크: https://leetcode.com/problems/classes-more-than-5-students/

-- mysql
select class
from Courses
group by 1
having count(student) >= 5;
