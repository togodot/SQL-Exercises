-- < 1890. The Latest Login in 2020 >
-- 문제 링크: https://leetcode.com/problems/the-latest-login-in-2020/?envType=study-plan&id=sql-i

-- mysql
select user_id, max(time_stamp) as last_stamp
from Logins
where YEAR(time_stamp) = 2020
group by 1;
