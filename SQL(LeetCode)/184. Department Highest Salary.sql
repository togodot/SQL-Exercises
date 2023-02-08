-- < 184. Department Highest Salary >
-- 문제 링크: https://leetcode.com/problems/department-highest-salary/description/

-- mysql: 윈도우 함수를 사용해서 풀었다. 부서에 따라 파티션을 나누고 1순위인 사람들의 정보만 가져오는 쿼리를 작성했다. 그런데 런타임이 길게 나왔다. 윈도우 함수를 사용한 다른 쿼리를 보니 서브쿼리로 엮었다. 혹시 with절이 성능이 떨어지는걸까?
with temp as (
select *,
    rank() over(partition by departmentId order by salary desc) as rn
from Employee
)
select b.name as Department, a.name as Employee, a.salary as Salary
from temp a
    join Department b on a.departmentId=b.id
where rn = 1;


-- mysql: 부서별 group by 하여 Max Salary 찾는 서브쿼리와 조인하여 찾아내는 쿼리도 발견. 이 문제에서 핵심은 부서별로 최대 salary인 "모든" 사람을 찾아야 한다는 점 때문이다.
SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary
FROM Department d
LEFT JOIN Employee e
ON d.id = e.departmentId
WHERE (e.departmentId, e.salary) IN (
    SELECT departmentId, MAX(Salary) AS wage
    FROM Employee
    GROUP BY 1);
