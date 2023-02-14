-- < 185. Department Top Three Salaries >
-- 문제 링크: https://leetcode.com/problems/department-top-three-salaries/description/

-- mysql : dense_rank 사용
with temp as (
select b.name as Department, a.name as Employee, a.salary as Salary
    , dense_rank() over(partition by departmentId order by salary desc) as rn
from Employee a
    join Department b on a.departmentId = b.id
)
select Department, Employee, Salary
from temp
where rn <= 3;
