SELECT deptno,
       ename,
       sal,
       SUM(sal) OVER (PARTITION BY deptno) AS sum_dept,
       ROUND(sal/SUM(sal) OVER (PARTITION BY deptno)*100,2) AS "%",
       ROUND(RATIO_TO_REPORT(sal) OVER (PARTITION BY deptno)*100,2) AS "%2"
FROM emp
;