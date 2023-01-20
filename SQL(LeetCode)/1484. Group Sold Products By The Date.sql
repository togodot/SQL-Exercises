-- < 1484. Group Sold Products By The Date >
-- 문제 링크: https://leetcode.com/problems/group-sold-products-by-the-date/?envType=study-plan&id=sql-i
-- mysql의 문법 group_concat(컬럼,'구분기호')을 공부했다. postgresql에서 concat이 ||인 반면 mysql은 concat()과 group_concat()이 있다.

-- MySQL
select sell_date
    , count(distinct product) as num_sold
    , group_concat(distinct product order by product) as products
from Activities
group by 1
order by 1;
