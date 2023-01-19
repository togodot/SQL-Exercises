-- < 1873. Calculate Special Bonus >
-- 문제 링크: https://leetcode.com/problems/calculate-special-bonus/submissions/881234820/?envType=study-plan&id=sql-i
-- SQL로 홀/짝 구분하는 방법
--  짝수: MOD(value, 2) = 0
--  홀수: MOD(value, 2) = 1

select employee_id
    , case when name like 'M%' then salary = 0
           when MOD(employee_id, 2) = 0 then salary = 0 else salary end as bonus
from Employees
order by 1;
