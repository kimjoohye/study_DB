SELECT SYSDATE,
       TO_CHAR(SYSDATE, 'MM') AS "MM",
       TO_CHAR(SYSDATE, 'MON','NLS_DATE_LANGUAGE=KOREAN')       AS "KOREAN",
       TO_CHAR(SYSDATE, 'MON','NLS_DATE_LANGUAGE=JAPANESE')     AS "JAPANESE",
       TO_CHAR(SYSDATE, 'MON','NLS_DATE_LANGUAGE=ENGLISH')      AS "ENGLISH",
       TO_CHAR(SYSDATE, 'MONTH','NLS_DATE_LANGUAGE=ENGLISH')    AS "ENGLISH_MONTH"
FROM dual
;

--SYSDATE             MM KOREAN   JAPANESE ENGLISH      ENGLISH_MONTH                       
--------------------- -- -------- -------- ------------ ------------------------------------
--2022-03-18:15:39:31 03 3ø˘      3Í≈      MAR          MARCH   

SELECT SYSDATE,
       TO_CHAR(SYSDATE, 'DD') AS "MM",
       TO_CHAR(SYSDATE, 'DAY','NLS_DATE_LANGUAGE=KOREAN')    AS "KOREAN",
       TO_CHAR(SYSDATE, 'DAY','NLS_DATE_LANGUAGE=JAPANESE')  AS "JAPANESE",
       TO_CHAR(SYSDATE, 'DAY','NLS_DATE_LANGUAGE=ENGLISH')   AS "ENGLISH",
       TO_CHAR(SYSDATE, 'DY','NLS_DATE_LANGUAGE=ENGLISH')  AS "ENGLISH_MONTH"
FROM dual
;

--SYSDATE             MM KOREAN       JAPANESE     ENGLISH                              ENGLISH_MONT
--------------------- -- ------------ ------------ ------------------------------------ ------------
--2022-03-18:15:42:00 18 ±›ø‰¿œ       ——Ë¯ÏÌ       FRIDAY  