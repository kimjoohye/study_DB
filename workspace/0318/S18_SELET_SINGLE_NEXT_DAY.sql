--WINDEOWS : NEXT_DAY(SYSDATE,'금요일')
--UNIX : NEXT_DAY(SYSDATE,'MON')

SELECT SYSDATE,
       NEXT_DAY(SYSDATE,'금요일') AS "NEXT_DAY_금",
       LAST_DAY(SYSDATE) AS "3MONTH_LAST"
FROM dual
;

--SYSDATE             NEXT_DAY_금          3MONTH_LAST        
--------------------- ------------------- -------------------
--2022-03-18:12:41:03 2022-03-25:12:41:03 2022-03-31:12:41:03