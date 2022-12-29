-- < 주문량이 많은 아이스크림들 조회하기 >
-- 문제 링크 : https://school.programmers.co.kr/learn/courses/30/lessons/133027

SELECT A.FLAVOR
FROM FIRST_HALF A INNER JOIN JULY B ON A.FLAVOR = B.FLAVOR
GROUP BY FLAVOR
ORDER BY SUM(A.TOTAL_ORDER) + SUM(B.TOTAL_ORDER) DESC
LIMIT 3;
