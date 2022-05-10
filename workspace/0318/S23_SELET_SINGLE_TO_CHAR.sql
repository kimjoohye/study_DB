SELECT SYSDATE,
       TO_CHAR(SYSDATE,'YYYY/MM/DD HH24:MI:SS') AS TO_CHAR_FORMAT,
       TO_CHAR(SYSDATE, 'MONTH') AS "MONTH",
       TO_CHAR(SYSDATE, 'DDD') AS "DDD"
FROM dual
;
--SYSDATE             TO_CHAR_FORMAT      MONTH    DDD
--------------------- ------------------- -------- ---
--2022-03-18:15:33:24 2022/03/18 15:33:24 3¿ù      077