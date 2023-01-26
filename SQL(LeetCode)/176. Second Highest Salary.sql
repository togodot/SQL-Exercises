-- < 176. Second Highest Salary >
-- 문제 링크: https://leetcode.com/problems/second-highest-salary/?envType=study-plan&id=sql-i

-- mysql: 두 번째 큰 값이어서 바로 rank류 부터 떠올렸고, 랭크가 2인 값 하나만 출력하는 쿼리를 작성했다.
select case when rn = 2 then salary else null end  as SecondHighestSalary
from (select *, dense_rank() over(order by salary desc) as rn from Employee) a
order by 1 desc
limit 1;

-- mysql: 두 번째 큰 값이기때문에 최댓값을 제외한 나머지 중 최댓값을 구하는 방법
select  max(salary) as SecondHighestSalary
from Employee
where salary not in (select max(salary) from Employee);
