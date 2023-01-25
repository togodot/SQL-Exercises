-- < 586. Customer Placing the Largest Number of Orders >
-- 문제 링크: https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/?envType=study-plan&id=sql-i

-- mysql
select customer_number
from (
    select customer_number, count(*) as cnt
    from Orders
    group by 1
    order by cnt desc
    limit 1) x;
    
-- mysql 조금 더 단순하게?
select customer_number
from Orders
group by 1
order by count(customer_number) desc
limit 1;
