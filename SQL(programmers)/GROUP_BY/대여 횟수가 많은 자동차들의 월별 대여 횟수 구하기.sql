-- < 대여 횟수가 많은 자동차들의 월별 대여 횟수 구하기 >
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/151139

WITH TEMP_01 AS (
SELECT MONTH(START_DATE) as MONTH, CAR_ID, COUNT(START_DATE) as RECORDS
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE START_DATE BETWEEN '2022-08-01' AND '2022-10-31'
GROUP BY 1, 2
ORDER BY 1, 2 DESC
),
TEMP_02 AS (
SELECT CAR_ID
FROM TEMP_01
GROUP BY CAR_ID
HAVING SUM(RECORDS) >= 5
)
SELECT *
FROM TEMP_01
WHERE CAR_ID IN (SELECT CAR_ID FROM TEMP_02);
