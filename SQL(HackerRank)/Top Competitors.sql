-- < Top Competitors >
-- 문제 링크: https://www.hackerrank.com/challenges/full-score/problem?isFullScreen=true

select hacker_id, name
from (
    select a.hacker_id, d.name, count(*) as cnt
    from Submissions a
        join Challenges b on a.challenge_id = b.challenge_id
        join Difficulty c on b.difficulty_level = c.difficulty_level
        join Hackers d on a.hacker_id = d.hacker_id
    where a.score = c.score
    group by 1, 2
) temp
where cnt > 1
order by cnt desc, hacker_id;
