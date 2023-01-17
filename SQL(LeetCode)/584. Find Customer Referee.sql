-- < 584. Find Customer Referee >
-- 문제 링크: https://leetcode.com/problems/find-customer-referee/?envType=study-plan&id=sql-i
-- 첫 번째 쿼리로 실행시 런타임(978ms)이 다른 쿼리에 비해 길어서 확인했더니 referee_id가 null인 경우만 추가적으로 고려해주면 해결 가능할 것으로 보여서 두 번째 쿼리 실행시 런타임(795ms)이 줄어듦
-- 그런데 쿼리 실행때마다 런타임이 달라짐. 원인이 무엇인지, 서브쿼리가 런타임이 긴건지 알아볼 필요가 있음

select name from Customer where id not in (select id from Customer where referee_id=2);

select name from Customer where referee_id != 2 or referee_id is null;
