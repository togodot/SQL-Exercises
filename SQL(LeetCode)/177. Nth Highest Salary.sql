-- < 177. Nth Highest Salary >
-- 문제 링크: https://leetcode.com/problems/nth-highest-salary/description/

-- mysql
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
SET N=N-1;
RETURN (
SELECT DISTINCT Salary FROM Employee ORDER BY Salary DESC LIMIT N, 1
);
END
