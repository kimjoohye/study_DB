SELECT empno,
       ename,
       TO_CHAR(hiredate, 'yyyy-mm-dd') AS hiredate ,
       TO_CHAR( (sal*12)+comm, '$999,999')  AS "SAL",
       TO_CHAR( ((sal*12)+comm)*1.15,'$999,999') AS "15% UP"
FROM emp
WHERE comm IS NOT NULL
;

--  EMPNO    ENAME      HIREDATE       SAL      15% UP   
---------- ----------   ----------  --------- ---------
--      7499 ALLEN      1981-02-20   $19,500   $22,425
--      7521 WARD       1981-02-22   $15,500   $17,825
--      7654 MARTIN     1981-09-28   $16,400   $18,860
--      7844 TURNER     1981-09-08   $18,000   $20,700