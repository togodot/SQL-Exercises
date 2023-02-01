-- < 평균 일일 대여 요금 구하기 >
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/151136

SELECT ROUND(AVG(daily_fee), 0) as AVERAGE_FEE
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = 'SUV';
