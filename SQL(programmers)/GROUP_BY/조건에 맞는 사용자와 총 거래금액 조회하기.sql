-- < 조건에 맞는 사용자와 총 거래금액 조회하기 >
-- 문제링크: https://school.programmers.co.kr/learn/courses/30/lessons/164668#qna

-- '완료'된 중고거래건이라는 조건을 놓쳐서 시간을 할애했다. 문제에서 제시하는 조건을 꼼꼼히 볼 필요가 있다.
SELECT USER_ID, NICKNAME, SUM(PRICE) as TOTAL_SALES
FROM USED_GOODS_BOARD A
    JOIN USED_GOODS_USER B ON A.WRITER_ID = B.USER_ID
WHERE STATUS = 'DONE'
GROUP BY 1
HAVING SUM(PRICE) >= 700000
ORDER BY 3;
