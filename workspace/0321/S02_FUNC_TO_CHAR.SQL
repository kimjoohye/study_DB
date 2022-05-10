SELECT empno,
       ename,
       comm,
       TO_CHAR(sal * 12+comm,'999,999') AS salary
FROM emp
WHERE ename = 'ALLEN'
;
--     EMPNO ENAME            COMM SALARY  
------------ ---------- ---------- --------
--      7499 ALLEN             300   19,500