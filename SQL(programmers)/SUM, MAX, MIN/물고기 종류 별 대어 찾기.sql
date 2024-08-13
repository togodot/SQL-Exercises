-- < 물고기 종류 별 대어 찾기 >
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/293261

-- mysql
WITH MAX_LENGTH
AS (
    SELECT FISH_TYPE, FISH_NAME, MAX(LENGTH) AS LENGTH
    FROM FISH_INFO NATURAL JOIN FISH_NAME_INFO
    GROUP BY FISH_TYPE, FISH_NAME
)

SELECT ID,
       FISH_NAME,
       LENGTH
FROM FISH_INFO NATURAL JOIN MAX_LENGTH;
