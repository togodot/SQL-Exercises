-- < 취소되지 않은 진료 예약 조회하기 >
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/132204

SELECT A.APNT_NO, P.PT_NAME, A.PT_NO, A.MCDP_CD, D.DR_NAME, A.APNT_YMD
FROM APPOINTMENT A
    JOIN PATIENT P
    ON A.PT_NO = P.PT_NO
    JOIN DOCTOR D
    ON A.MDDR_ID = D.DR_ID
WHERE DATE(APNT_YMD) = '2022-04-13'
    AND A.APNT_CNCL_YN = 'N'
    AND A.MCDP_CD='CS'
ORDER BY APNT_YMD;
