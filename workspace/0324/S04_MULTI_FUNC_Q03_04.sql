SELECT deptno,
       SUM(DECODE(job,'CLERK',sal)) AS CLERK,
       SUM(DECODE(job,'MANAGER',sal)) AS MANAGER,
       SUM(DECODE(job,'PRESIDENT',sal)) AS PRESIDENT,
       SUM(DECODE(job,'ANALYST',sal)) AS ANALYST,
       SUM(DECODE(job,'SALESMAN',sal)) AS SALESMAN,
       SUM(sal) as TOTAL
FROM emp
GROUP BY ROLLUP(deptno)
ORDER BY deptno
;

--    DEPTNO      CLERK    MANAGER  PRESIDENT    ANALYST   SALESMAN      TOTAL
------------ ---------- ---------- ---------- ---------- ---------- ----------
--        10       1300       2450       5000                             8750
--        20       1900       2975                  6000                 10875
--        30        950       2850                             5600       9400
--                 4150       8275       5000       6000       5600      29025