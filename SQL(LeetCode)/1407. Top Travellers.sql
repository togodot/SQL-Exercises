-- < 1407. Top Travellers >
-- 문제 링크: https://leetcode.com/problems/top-travellers/description/?envType=study-plan&id=sql-i

-- mysql: with 테이블을 사용하면 성능이 떨어지는걸까? 런타임 순위가 역대급으로 낮았다.. 2893ms로 하위 0.24%
with temp as (
  select user_id, sum(distance) as summ
  from Rides
  group by user_id
)
select name, case when summ is null then 0 else summ end as travelled_distance
from Users a
    left join temp b on a.id = b.user_id
order by 2 desc, 1;

-- mysql: 런타임이 짧고 비교적 간결한 쿼리문. select절에서 sum과 ifnull을 사용해 간단하게 처리했다.
SELECT name, sum(ifnull(distance, 0)) as travelled_distance
FROM Rides r
RIGHT JOIN Users u
ON r.user_id = u.id
GROUP BY u.id
ORDER BY travelled_distance DESC, name
