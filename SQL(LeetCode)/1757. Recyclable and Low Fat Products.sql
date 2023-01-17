-- < 1757. Recyclable and Low Fat Products >
-- 문제 링크: https://leetcode.com/problems/recyclable-and-low-fat-products/?envType=study-plan&id=sql-i

select product_id
from Products
where low_fats = 'Y' and recyclable = 'Y';
