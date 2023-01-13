-- < Ollivander's Inventory >
-- 문제 링크: https://www.hackerrank.com/challenges/harry-potter-and-wands/problem?isFullScreen=true

select d.id, c.age, c.min_gal, c.power
from (
    select a.code, b.age, a.power, min(a.coins_needed) as min_gal
    from Wands a
        join Wands_Property b on a.code = b.code
    where b.is_evil = 0
    group by a.code, b.age, a.power) c
        join Wands d on d.code = c.code and d.coins_needed = c.min_gal
order by 4 desc, 2 desc;
