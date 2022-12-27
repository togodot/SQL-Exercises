-- A 상품ID, B(함께 구매한 상품) 상품 ID, A 상품 구매횟수, B 상품 구매횟수, A와 B를 함께 구매한 횟수
with product_purchase as
(
select product_id, count(*) as cnt
from item_purchase_data
group by product_id
)

select a.product_id as 'A 상품', b.product_id as 'B 상품'
    , c.cnt as 'A 상품 구매횟수', d.cnt as 'B 상품 구매횟수', count(*) as 'A와 B를 함께 구매한 횟수'
from item_purchase_data a
    join item_purchase_data b
    on a.browser_id = b.browser_id
    join product_purchase c
    on a.product_id = c.product_id
    join product_purchase d
    on b.product_id = d.product_id
where a.product_id < b.product_id
group by a.product_id, b.product_id
order by 5 desc;
