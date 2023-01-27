-- < 620. Not Boring Movies >
-- 문제 링크: https://leetcode.com/problems/not-boring-movies/description/

-- mysql
select *
from Cinema
where id%2 = 1 and description != 'boring'
order by rating desc;
