SELECT * FROM (SELECT deptno, job, sal FROM emp)
PIVOT( MAX(sal) FOR job IN( 'CLERK'    AS CLERK,
                            'SALESMAN' AS SALESMAN,
                            'ANALYST'  AS ANALYST,
                            'MANAGER'  AS MANAGER,
                            'PRESIDENT' AS PRESIDENT
                            )
)
;

--   DEPTNO      CLERK   SALESMAN    ANALYST    MANAGER  PRESIDENT
------------ ---------- ---------- ---------- ---------- ----------
--        30        950       1600                  2850           
--        10       1300                             2450       5000
--        20       1100                  3000       2975           
