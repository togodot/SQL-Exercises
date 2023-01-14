-- < Symmetric Pairs >
-- 문제 링크: https://www.hackerrank.com/challenges/symmetric-pairs/problem?isFullScreen=true

with temp as (
    select X, Y, row_number() over() as rn
    from Functions
)
select distinct(a.X), a.Y
from temp a
    join temp b on a.Y = b.X and a.rn != b.rn
where a.X = b.Y and a.X <= a.Y
order by a.X;
