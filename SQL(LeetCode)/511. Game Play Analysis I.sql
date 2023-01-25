-- < 511. Game Play Analysis I >
-- 문제 링크: https://leetcode.com/problems/game-play-analysis-i/?envType=study-plan&id=sql-i

-- mysql
select player_id, min(event_date) as first_login
from Activity
group by 1;
