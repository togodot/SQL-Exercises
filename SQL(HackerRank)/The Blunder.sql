-- < The Blunder >
-- 문제 링크: https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=true

SELECT ROUND(AVG(Salary)) - ROUND(AVG(REPLACE(Salary, 0, '')))
FROM EMPLOYEES;
