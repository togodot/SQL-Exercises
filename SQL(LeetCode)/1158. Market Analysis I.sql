-- < 1158. Market Analysis I >
-- 문제 링크: https://leetcode.com/problems/market-analysis-i/description/

-- mysql
select user_id as buyer_id
    , join_date
    , case when cnt is null then 0 else cnt end as orders_in_2019
from Users a
    left join (select buyer_id, count(order_id) as cnt from Orders where year(order_date) = 2019 group by 1) b on a.user_id = b.buyer_id;
