-- < 182. Duplicate Emails >
-- 문제 링크: https://leetcode.com/problems/duplicate-emails/description/

-- mysql: with절 사용
with temp as (
    select email, count(*) as cnt
    from Person
    group by 1
)
select email
from temp
where cnt >= 2;

-- group by 후 having으로 조건 걸기
select email
from Person
group by 1
having count(email) > 1;
