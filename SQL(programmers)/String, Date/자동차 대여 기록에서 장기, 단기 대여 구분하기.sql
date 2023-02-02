-- < 자동차 대여 기록에서 장기, 단기 대여 구분하기 >
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/151138

-- mysql: datediff 함수 사용시 날짜 차이가 출력된다. 예를 들어, 1월 3일과 1월 5일에 DATEDIFF 값은 2일. 하지만 해당 문제는 대여기간이기 때문에 빌리기 시작한 날부터 무조건 1일이기 때문에, DATEDIFF 값에 1을 더해주거나, 기준일자에서 1을 뺴주는 방법을 택했다.
SELECT HISTORY_ID, CAR_ID
    , DATE_FORMAT(START_DATE, '%Y-%m-%d') as START_DATE
    , DATE_FORMAT(END_DATE, '%Y-%m-%d') as END_DATE
    , IF(DATEDIFF(end_date,start_date) >= 29, '장기 대여', '단기 대여') as RENT_TYPE
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE MONTH(start_date) = 09
ORDER BY 1 desc;
