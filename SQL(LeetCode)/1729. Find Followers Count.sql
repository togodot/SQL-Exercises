-- < 1729. Find Followers Count >
-- 문제 링크: https://leetcode.com/problems/find-followers-count/?envType=study-plan&id=sql-i

-- mysql
select user_id, count(distinct follower_id) as followers_count
from Followers
group by 1;
