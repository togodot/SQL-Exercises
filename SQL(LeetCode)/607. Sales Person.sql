-- < 607. Sales Person >
-- 문제 링크: https://leetcode.com/problems/sales-person/description/

-- mysql
select name
from SalesPerson
where name not in (
    select a.name
    from SalesPerson a
        left join Orders b on a.sales_id = b.sales_id
        join Company c on b.com_id = c.com_id
    where c.name = 'RED');
