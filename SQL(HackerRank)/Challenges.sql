-- < Challenges >
-- 문제 링크: https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true

with temp_01 as (
    select a.hacker_id, a.name, count(b.challenge_id) as chal_cnt
    from Hackers a
        join Challenges b on a.hacker_id = b.hacker_id
    group by 1,2
),
temp_02 as (
    select chal_cnt, count(chal_cnt) as cnt
    from temp_01
    group by 1
)
select c.hacker_id, c.name, c.chal_cnt
from temp_01 c
    join temp_02 d on c.chal_cnt = d.chal_cnt
where c.chal_cnt = (select max(chal_cnt) from temp_02) or d.cnt <= 1
order by 3 desc, 1;
