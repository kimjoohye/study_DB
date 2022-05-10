--직책별, 부서별, 최고 급여
--JOB     10    20   30
--ANALSY       3000
--CLERK   1300 1100  950
--...

SELECT * FROM (SELECT deptno, job, sal FROM emp)
PIVOT( MAX(sal) FOR deptno IN(10,
                            20,
                            30
                            )
)
;

--JOB               10         20         30
----------- ---------- ---------- ----------
--CLERK           1300       1100        950
--SALESMAN                              1600
--ANALYST                    3000           
--MANAGER         2450       2975       2850
--PRESIDENT       5000           

--부서별 직책별 최고 급여
--SELECT deptno, job, MAX(sal)
--FROM emp
--GROUP BY deptno, job
--ORDER BY deptno, job
--;
