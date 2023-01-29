-- < 180. Consecutive Numbers >
-- 문제 링크: https://leetcode.com/problems/consecutive-numbers/description/

-- mysql: LEAD() 함수를 사용해서 1개 뒤 숫자와 2개 뒤 숫자를 찾은 후 3개의 숫자가 일치하는 num을 추출한다.
select distinct num as ConsecutiveNums
from (
    select *
        , lead(num, 1) over() as n_01
        , lead(num, 2) over() as n_02
    from Logs) a
where num = n_01 and num = n_02;
