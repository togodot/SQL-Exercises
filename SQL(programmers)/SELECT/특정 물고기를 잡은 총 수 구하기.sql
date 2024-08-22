-- < 특정 물고기를 잡은 총 수 구하기 >
-- https://school.programmers.co.kr/learn/courses/30/lessons/298518

-- mysql
SELECT COUNT(*) AS FISH_COUNT
FROM FISH_INFO A
     NATURAL JOIN FISH_NAME_INFO B
WHERE B.FISH_NAME IN ('BASS', 'SNAPPER');
