-- < 1084. Sales Analysis III >
-- 문제 링크: https://leetcode.com/problems/sales-analysis-iii/description/

-- mysql: sale_date가 2019년 1분기에'만' 있는 product_id를 뽑기 위해 날짜를 최소/최댓값으로 조건을 걸어 추출했다.
select product_id, product_name
from Product
where product_id in (select product_id from Sales 
                     group by 1 having min(sale_date) >= '2019-01-01' and max(sale_date) <= '2019-03-31');                     


-- mysql: 2019년 1분기에 해당하지 않는 기간에 팔린 product_id를 제외한 product_id의 고유값을 추출하는 방법도 있다.
select distinct a.product_id, product_name
from Product a
    join Sales b on a.product_id = b.product_id
where not exists (
    select *
    from Sales c
    where c.product_id = b.product_id
          and c.sale_Date not between '2019-01-01' and '2019-03-31';
