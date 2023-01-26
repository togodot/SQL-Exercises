-- < 176. Second Highest Salary >
-- 문제 링크: https://leetcode.com/problems/second-highest-salary/?envType=study-plan&id=sql-i

-- mysql
select case when rn = 2 then salary else null end  as SecondHighestSalary
from (select *, row_number() over(order by salary desc) as rn from Employee) a
order by 1 desc
limit 1;
