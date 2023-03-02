-- < 자동차 대여 기록에서 대여중 / 대여 가능 여부 구분하기 >
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/157340

SELECT DISTINCT CAR_ID
    , CASE WHEN CAR_ID IN (
        SELECT CAR_ID
        FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
        WHERE DATE('2022-10-16') BETWEEN START_DATE AND END_DATE)
        THEN '대여중' ELSE '대여 가능' END AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
ORDER BY 1 DESC;
