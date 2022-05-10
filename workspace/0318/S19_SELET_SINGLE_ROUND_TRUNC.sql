--ROUND()
-- 정오를 기준으로 상품접수가 오전에 되었으면 당일 배송,
-- 그렇지 않으면 다음날 배송,

-- TRUNC()
-- 원서접수
SELECT SYSDATE,
       ROUND(SYSDATE) AS "ROUND_SYSDATE", -- 오전이면 당일, 오후면 내일로 출력됨
       TRUNC(SYSDATE) AS "TRUNC_SYSDATE" -- 무조건 당일
FROM dual
;

--SYSDATE             ROUND_SYSDATE       TRUNC_SYSDATE      
--------------------- ------------------- -------------------
--2022-03-18:14:15:02 2022-03-19:00:00:00 2022-03-18:00:00:00