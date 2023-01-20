-- < 1965. Employees With Missing Information >
-- 문제 링크: https://leetcode.com/problems/employees-with-missing-information/?envType=study-plan&id=sql-i

with temp as (
    select *
    from Employees
    union all
    select *
    from Salaries
)
select employee_id
from (select employee_id, count(*) as cnt from temp group by employee_id) a
where a.cnt = 1
order by 1;
