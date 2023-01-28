-- < 181. Employees Earning More Than Their Managers >
-- 문제 링크: https://leetcode.com/problems/employees-earning-more-than-their-managers/description/

-- mysql
select a.name as 'Employee'
from Employee a
    join Employee b on a.managerId=b.id
where a.salary > b.salary;
