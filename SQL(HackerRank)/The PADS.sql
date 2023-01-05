-- < The PADS >
-- 문제 링크: https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true

SELECT CONCAT(NAME, "(", LEFT(OCCUPATION, 1), ")") 
FROM OCCUPATIONS 
ORDER BY NAME ASC;
SELECT CONCAT("There are a total of ", COUNT(OCCUPATION), " ", LOWER(OCCUPATION), "s.") 
FROM OCCUPATIONS GROUP BY OCCUPATION 
ORDER BY COUNT(OCCUPATION) ASC, OCCUPATION ASC;
