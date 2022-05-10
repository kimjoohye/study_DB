--p125 Q2
SELECT empno,
       ename,
       job,
       sal,
       deptno
FROM emp
WHERE deptno = 30
AND job = 'SALESMAN'
;