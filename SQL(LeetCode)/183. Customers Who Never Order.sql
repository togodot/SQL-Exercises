-- < 183. Customers Who Never Order >
-- 문제 링크: https://leetcode.com/problems/customers-who-never-order/?envType=study-plan&id=sql-i

-- mysql
select name as Customers from Customers a left join Orders b on a.id=b.customerId where b.id is null;

