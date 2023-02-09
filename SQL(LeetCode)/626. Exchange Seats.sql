-- < 626. Exchange Seats >
-- 문제 링크: https://leetcode.com/problems/exchange-seats/description/

-- mysql: 홀수 id가 마지막인 1건의 케이스를 처리하는 부분을 오래 고민했다. sql도 select문 안에서 실행되는 순서가 있는 것 같다. 제일 case문으로 제일 먼저 해당 id가 마지막 홀수 id인지 여부를 먼저 확인한 후, 홀/짝에 따라 id를 가감했더니 해결되었다. 마지막 id만 따로 떼서 union으로 합치려고 했는데 너무 복잡하게 생각하는 것보다 단순하게 생각하는 것이 길일 때도 있다.
select case when id%2 != 0 and id = (select max(id) from seat) then id
            when id%2 = 0 then id-1
            else id+1 end as id, student
from Seat
order by 1;
