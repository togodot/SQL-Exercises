/* Contest Leaderboard */
/* https://www.hackerrank.com/challenges/contest-leaderboard/problem?isFullScreen=true */

select a.hacker_id, min(b.name), sum(score) as score
from (
    select hacker_id, challenge_id, max(score) as score
    from Submissions
    group by hacker_id, challenge_id) a
    join Hackers b on a.hacker_id = b.hacker_id
group by a.hacker_id
having score != 0
order by score desc, a.hacker_id;
