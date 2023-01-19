-- < 627. Swap Salary >
-- 문제 링크: https://leetcode.com/problems/swap-salary/submissions/881227055/?envType=study-plan&id=sql-i

update Salary
set sex = case when sex = 'f' then 'm'
               when sex = 'm' then 'f' end;


update Salary set sex= if(sex='f','m','f');
