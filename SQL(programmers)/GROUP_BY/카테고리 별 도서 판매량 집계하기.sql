-- < 카테고리 별 도서 판매량 집계하기 >
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/144855

SELECT CATEGORY, SUM(SALES) as 'TOTAL_SALES'
FROM BOOK a
    JOIN BOOK_SALES b ON a.BOOK_ID = b.BOOK_ID
WHERE YEAR(SALES_DATE) = 2022 and MONTH(SALES_DATE) = 1
GROUP BY CATEGORY
ORDER BY 1;
