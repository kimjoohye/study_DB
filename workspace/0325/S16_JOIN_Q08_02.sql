--p239 Q2

--oracle join
SELECT t1.*,
       t2.dname
FROM (
    SELECT  deptno,
            TRUNC(AVG(NVL(sal,0)),0)     AS avg_sal,
            MAX(NVL(sal,0))            AS max_sal,
            MIN(NVL(sal,0))            AS min_sal,
            COUNT(*)        AS cnt
    FROM emp
    GROUP BY deptno
)t1, dept t2
WHERE t1.deptno = t2.deptno
;

--ANSI join
SELECT t1.*,
       t2.dname
FROM (
    SELECT  deptno,
            TRUNC(AVG(NVL(sal,0)),0)     AS avg_sal,
            MAX(NVL(sal,0))            AS max_sal,
            MIN(NVL(sal,0))            AS min_sal,
            COUNT(*)        AS cnt
    FROM emp
    GROUP BY deptno
)t1 JOIN dept t2
ON t1.deptno = t2.deptno
;