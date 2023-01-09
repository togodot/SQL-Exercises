-- < Weather Observation Station 20 >
-- https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=true

with temp as (
select LAT_N, row_number() over(order by LAT_N) as rn from STATION)
select round(LAT_N, 4)
from temp
where rn = (select count(LAT_N) from STATION) / 2;
