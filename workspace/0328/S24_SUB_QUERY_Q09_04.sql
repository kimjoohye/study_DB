--p263 Q4

--다중행 함수 활용
SELECT t1.empno,
       t1.ename,
       t1.sal,
       t2.grade
FROM emp t1, salgrade t2
WHERE t1.sal >= t2.losal
AND t1.sal <= t2.hisal
AND t1.sal > (SELECT MAX(sal)
              FROM emp
              WHERE job = 'SALESMAN')
ORDER BY empno;

--다중행 함수 미활용
SELECT t1.empno,
       t1.ename,
       t1.sal,
       t2.grade
FROM emp t1, salgrade t2
WHERE t1.sal >= t2.losal
AND t1.sal <= t2.hisal
AND t1.sal >ALL (SELECT sal
                 FROM emp
                 WHERE job = 'SALESMAN')
ORDER BY empno;

--     EMPNO ENAME             SAL      GRADE
------------ ---------- ---------- ----------
--      7566 JONES            2975          4
--      7698 BLAKE            2850          4
--      7782 CLARK            2450          4
--      7788 SCOTT            3000          4
--      7839 KING             5000          5
--      7902 FORD             3000          4