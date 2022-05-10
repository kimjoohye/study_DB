SELECT *
FROM chap10hw_emp
WHERE hiredate > (SELECT MIN(hiredate)
                FROM chap10hw_emp
                WHERE deptno = 60);
                
UPDATE chap10hw_emp
SET sal = sal * 1.1,
    deptno = 80
WHERE hiredate > (SELECT MIN(hiredate)
                FROM chap10hw_emp
                WHERE deptno = 60);
                
SELECT *
FROM chap10hw_emp
WHERE deptno = 80;

--     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO
------------ ---------- --------- ---------- -------- ---------- ---------- ----------
--      7205 TESE_USER5 CLERK           7201 16/07/20       2860                    80
--      7206 TESE_USER6 CLERK           7201 16/09/08       2860                    80
--      7207 TESE_USER7 LECTURER        7201 16/10/28       2530                    80
--      7208 TESE_USER8 STUDENT         7201 18/03/09       1320                    80
