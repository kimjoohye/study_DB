SELECT deptno,
       ename,
       sal,
       SUM(sal) OVER() AS total_sal,
       ROUND(sal/SUM(sal) OVER()*100,2) AS "%",
       ROUND(RATIO_TO_REPORT(sal) OVER() * 100,2) AS "%2"
FROM emp
ORDER BY sal DESC
;