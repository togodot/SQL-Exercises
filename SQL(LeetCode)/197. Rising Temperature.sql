-- < 197. Rising Temperature >
-- 문제 링크: https://leetcode.com/problems/rising-temperature/description/

-- mysql (datediff 함수 사용)
select a.id
from Weather a join Weather b
where a.temperature > b.temperature and datediff(a.recordDate, b.recordDate) = 1;
