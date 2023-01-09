-- < Occupations >
-- 문제 링크: https://www.hackerrank.com/challenges/occupations/problem?isFullScreen=true

with temp as (
select 
    case when Occupation = 'Actor' then name end as actor
    , case when Occupation = 'Doctor' then name end as doctor
    , case when Occupation = 'Professor' then name end as professor
    , case when Occupation = 'Singer' then name end as singer
    , row_number() over(partition by Occupation order by name) as ran
from OCCUPATIONS
    )
select min(doctor), min(professor), min(singer), min(actor)
from temp group by ran;
