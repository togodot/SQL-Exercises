-- < 1050. Actors and Directors Who Cooperated At Least Three Times >
-- 문제 링크: https://leetcode.com/problems/actors-and-directors-who-cooperated-at-least-three-times/

-- mysql
select actor_id, director_id
from ActorDirector
group by 1,2
having count(timestamp) >= 3;
