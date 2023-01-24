-- < 1581. Customer Who Visited but Did Not Make Any Transactions >
-- 문제 링크: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/?envType=study-plan&id=sql-i

-- mysql
select customer_id, count(*) as count_no_trans
from Visits
where visit_id not in (select visit_id from Transactions)
group by 1;
