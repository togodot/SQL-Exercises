-- < 1741. Find Total Time Spent by Each Employee >
-- 문제 링크: https://leetcode.com/problems/find-total-time-spent-by-each-employee/?envType=study-plan&id=sql-i

select event_day as day, emp_id, sum(out_time - in_time) as total_time
from Employees
group by 1, 2;
