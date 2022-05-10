SELECT deptno,
       ename, 
       sal,
       SUM(sal) OVER(ORDER BY sal,ename) AS total
FROM emp
;