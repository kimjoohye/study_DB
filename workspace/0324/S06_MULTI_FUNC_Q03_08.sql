SELECT deptno,
       ename,
       sal,
       SUM(sal) OVER (PARTITION BY deptno ORDER BY sal) AS total
FROM emp
;