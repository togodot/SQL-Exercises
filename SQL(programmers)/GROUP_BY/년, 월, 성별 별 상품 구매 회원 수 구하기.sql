-- < 년, 월, 성별 별 상품 구매 회원 수 구하기 >
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131532

SELECT
    YEAR(A.SALES_DATE) as YEAR,
    MONTH(A.SALES_DATE) as MONTH,
    B.GENDER,
    COUNT(DISTINCT(B.USER_ID)) as USERS
FROM ONLINE_SALE A
    INNER JOIN USER_INFO B
    ON A.USER_ID = B.USER_ID
WHERE GENDER IS NOT NULL
GROUP BY YEAR, MONTH, GENDER
ORDER BY YEAR, MONTH, GENDER;
