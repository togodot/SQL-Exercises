-- < 1795. Rearrange Products Table >
-- 문제 링크: https://leetcode.com/problems/rearrange-products-table/description/?envType=study-plan&id=sql-i
-- 역피벗하기 reverse pivot / unpivot

-- mysql (union 사용)
select *
from (
    select product_id, 'store1' as store, store1 as price from Products
    union
    select product_id, 'store2' as store, store2 as price from Products
    union
    select product_id, 'store3' as store, store3 as price from Products) a
where price is not null;
