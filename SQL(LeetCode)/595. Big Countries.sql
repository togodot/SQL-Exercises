-- < 595. Big Countries >
-- 문제 링크: https://leetcode.com/problems/big-countries/?envType=study-plan&id=sql-i

select name, population, area
from World
where area >= 3000000 or population >= 25000000;
