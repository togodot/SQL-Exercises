-- < 특정 옵션이 포함된 자동차 리스트 구하기 >
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/157343

-- mysql  
SELECT *
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS LIKE '%네비게이션%'
ORDER BY 1 DESC;
