-- < 178. Rank Scores >
-- 문제 링크: https://leetcode.com/problems/rank-scores/

-- mysql: alias로 rank를 적으니 오류, 함수가 있어서 그런 것 같다. rank를 alias로 사용할 때는 따옴표로 묶어서 해결했다.
select score, dense_rank() over(order by score desc) as 'rank'
from Scores;
