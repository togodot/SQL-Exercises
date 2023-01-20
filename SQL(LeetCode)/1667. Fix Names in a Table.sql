-- < 1667. Fix Names in a Table >
-- 문제 링크: https://leetcode.com/problems/fix-names-in-a-table/submissions/881681505/?envType=study-plan&id=sql-i

-- Oracle
select user_id, initcap(name) as name
from Users
order by 1;

-- MySQL
select user_id
    , concat(upper(substr(name,1,1)),lower(substr(name,2))) as name
from Users
order by 1;
