--출력 SAL 명시하고
--FOR 세로로 늘어뜨릴 가로 열을 명시

SELECT *
FROM (
    SELECT deptno,
       MAX(DECODE(job, 'CLERK', sal))    AS CLERK,
       MAX(DECODE(job, 'SALESMAN', sal)) AS SALESMAN,
       MAX(DECODE(job, 'ANALYST', sal))  AS ANALYST,
       MAX(DECODE(job, 'MANAGER', sal))  AS MANAGER,
       MAX(DECODE(job, 'PRESIDENT', sal))  AS PRESIDENT
    FROM emp
    GROUP BY deptno
    ORDER BY deptno
)
UNPIVOT (
    SAL FOR JOB IN ( CLERK
                     ,SALESMAN
                     ,ANALYST
                     ,MANAGER 
                     ,PRESIDENT
                     )
)
ORDER BY deptno, job
;